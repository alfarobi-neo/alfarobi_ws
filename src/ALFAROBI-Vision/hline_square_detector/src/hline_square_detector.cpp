#include "hline_square_detector/hline_square_detector.h"

#define FROM_VIDEO 0

const float HLineSquare::MIN_CONTOUR_AREA = 100.0f;
const float HLineSquare::MIN_FIELD_CONTOUR_AREA = 1600.0f;

HLineSquare::HLineSquare()
    :nh_(ros::this_node::getName()),
      it_(this->nh_),
      it_subs_(it_.subscribe("image_in", 1, &HLineSquare::imageCallback, this)),
      it_pubs_(it_.advertise("image_out", 100)),
      cam_info_sub_(nh_.subscribe("camera_info_in", 100, &HLineSquare::cameraInfoCallback, this)),
      cam_info_pub_(nh_.advertise<sensor_msgs::CameraInfo>("camera_info_out", 100)),
      frame_mode_subs_(nh_.subscribe("frame_mode", 1, &HLineSquare::frameModeCallback, this)),
      save_param_subs_(nh_.subscribe("save_param", 1, &HLineSquare::saveParamCallback, this)),
      LUT_sub_(nh_.subscribe("LUT_data", 1, &HLineSquare::lutCallback, this)),
      it_bf_sub_(it_.subscribe("square_ref", 1, &HLineSquare::ballRefCallback, this)),
      it_sw_pub_(it_.advertise("segment_white", 10)),
      it_inv_sg_pub_(it_.advertise("inv_segment_green", 10)),
      line_tip_sub_(nh_.subscribe("line_tip",1,&HLineSquare::lineTipCallback, this)),
      field_boundary_pub_(nh_.advertise<vision_utils::FieldBoundary > ("field_boundary", 10)),
      hline_pos_pub_(nh_.advertise<geometry_msgs::Point > ("hline_pos", 100)),
      square_pos_pub_(nh_.advertise<geometry_msgs::Point > ("square_pos", 100)),
      update_params_pub_(nh_.advertise<std_msgs::Empty > ("update_params", 10)),
      pred_status_sub_(nh_.subscribe("/alfarobi/prediction_status", 1, &HLineSquare::predStatusCb, this)),
      frame_mode_(0),
      pred_status_(false){

    nh_.param<std::string>("ball_config_path", ball_config_path,
                           ros::package::getPath("hline_square_detector") + "/config/saved_config.yaml");

    param_cb_ = boost::bind(&HLineSquare::paramCallback, this, _1, _2);
    param_server_.setCallback(param_cb_);

    LUT_dir = ros::package::getPath("hline_square_detector") + "/config/tabel_warna.xml";

    loadParam();
}

void HLineSquare::loadParam(){
    YAML::Node config_file;
    try{
        config_file = YAML::LoadFile(ball_config_path.c_str());
    }catch(const std::exception &e){
        ROS_ERROR("[hline_square_detector] Unable to open config file: %s", e.what());
    }

    config_.score = config_file["score"].as<int>();
    config_.cost = config_file["cost"].as<int>();

    cv::FileStorage fs(LUT_dir.c_str(),cv::FileStorage::READ);
    fs["Tabel_Warna"] >> LUT_data;
    fs.release();

    ball_ref_ = cv::imread(ros::package::getPath("hline_square_detector") + "/config/ball_ref.jpg");
    ball_ref_ = cvtMulti(ball_ref_);
    if(!ball_ref_.empty()){
        cv::calcHist(&ball_ref_, 1, hist_param_.channels, cv::Mat(), ball_ref_hist_, 2, hist_param_.hist_size, hist_param_.ranges);
        cv::normalize(ball_ref_hist_,ball_ref_hist_, .0, 1.0, cv::NORM_MINMAX);
    }
}

void HLineSquare::saveParam(){
    YAML::Emitter yaml_out;
    yaml_out << YAML::BeginMap;
    yaml_out << YAML::Key << "score" << YAML::Value << config_.score;
    yaml_out << YAML::Key << "cost" << YAML::Value << config_.cost;
    yaml_out << YAML::EndMap;
    std::ofstream file_out(ball_config_path.c_str());
    file_out << yaml_out.c_str();
    file_out.close();
    cv::FileStorage fs(LUT_dir.c_str(),cv::FileStorage::WRITE);
    fs << "Tabel_Warna" << LUT_data;
    fs.release();

    cv::imwrite(ros::package::getPath("hline_square_detector") + "/config/ball_ref.jpg", ball_ref_);
}

void HLineSquare::frameModeCallback(const std_msgs::Int8::ConstPtr &_msg){
    frame_mode_ = _msg->data;
}

void HLineSquare::saveParamCallback(const std_msgs::Empty::ConstPtr &_msg){
    (void)_msg;
    saveParam();
}

void HLineSquare::ballRefCallback(const sensor_msgs::ImageConstPtr &_msg){
    cv_bf_ptr_sub_ = cv_bridge::toCvCopy(_msg,_msg->encoding);
    ball_ref_ = cv_bf_ptr_sub_->image;
    ball_ref_ = cvtMulti(ball_ref_);
    cv::calcHist(&ball_ref_, 1, hist_param_.channels, cv::Mat(), ball_ref_hist_, 2, hist_param_.hist_size, hist_param_.ranges);
    cv::normalize(ball_ref_hist_, ball_ref_hist_, .0, 1.0 , cv::NORM_MINMAX);
}

void HLineSquare::lutCallback(const vision_utils::LUTConstPtr &_msg){
//    uchar* LUT_ptr = LUT_data.data;
    for(size_t i = 0; i < _msg->color.size(); i++){
        int h = (int)_msg->color[i].x;
        int s = (int)_msg->color[i].y;
        LUT_data.at<uchar>(h,s) = (int) _msg->color_class.data;
//        std::cout << h << " , " << s << " ; " << (int) _msg->color_class.data << std::endl;
//        LUT_ptr[s + h*256] = (int) _msg->color[i].z;
    }
//    cv::Mat diff = tempor != LUT_data;
//    if(cv::countNonZero(diff)==0)std::cout << "SAMA" << std::endl;
}

void HLineSquare::lineTipCallback(const vision_utils::LineTipConstPtr &_msg){
    line_tip_.tip1 = _msg->tip1;
    line_tip_.tip2 = _msg->tip2;
}

void HLineSquare::imageCallback(const sensor_msgs::ImageConstPtr &_msg){

    try{
        img_encoding_ = Alfarobi::GRAY8Bit;
        if(_msg->encoding.compare(sensor_msgs::image_encodings::MONO8))
            img_encoding_ = Alfarobi::GRAY8Bit;
#if FROM_VIDEO == 0
        if(_msg->encoding.compare(sensor_msgs::image_encodings::BGR8))
            img_encoding_ = Alfarobi::BGR8Bit;
#else
        if(_msg->encoding.compare(sensor_msgs::image_encodings::RGB8))
            img_encoding_ = Alfarobi::BGR8Bit;
#endif
    }catch(cv_bridge::Exception &e){
        ROS_ERROR("[hline_square_detector] cv bridge exception: %s",e.what());
        return;
    }

    cv_img_ptr_subs_ = cv_bridge::toCvCopy(_msg,_msg->encoding);
    this->stamp_ = _msg->header.stamp;
    this->frame_id_ = _msg->header.frame_id;
}

void HLineSquare::cameraInfoCallback(const sensor_msgs::CameraInfo &_msg){
    //cam_info_msg_ = *_msg;
    
//    ROS_INFO("CHECK...");
}

void HLineSquare::paramCallback(v9_ball_detector::BallDetectorParamsConfig &_config, uint32_t level){
    (void)level;
    this->config_ = _config;
}

void HLineSquare::publishImage(){
    cv_img_pubs_.image = out_img_.clone();

    //Stamp
    cv_img_pubs_.header.seq++;
    cv_img_pubs_.header.stamp = this->stamp_;
    cv_img_pubs_.header.frame_id = this->frame_id_;

    //microsoft lifecam brightness setting only work when the camera is capturing
    //setting first to zero brightness after first 2 frame then set to desired value
    //3 April 2019
    if(cv_img_pubs_.header.seq == 2){
        std_msgs::Empty empty_msg;
        update_params_pub_.publish(empty_msg);
    }else if(cv_img_pubs_.header.seq == 4){
        std_msgs::Empty empty_msg;
        update_params_pub_.publish(empty_msg);
    }

    switch(img_encoding_){
        case Alfarobi::GRAY8Bit:cv_img_pubs_.encoding = sensor_msgs::image_encodings::MONO8;break;
        case Alfarobi::BGR8Bit:cv_img_pubs_.encoding = sensor_msgs::image_encodings::RGB8;break;
        default:cv_img_pubs_.encoding = sensor_msgs::image_encodings::RGB8;break;
    }

    it_pubs_.publish(cv_img_pubs_.toImageMsg());
    cam_info_pub_.publish(cam_info_msg_);
}

void HLineSquare::publishLocalizationUtils(
                                         const cv::Mat &_inv_segmented_green,
                                         vision_utils::FieldBoundary _field_boundary){
    cv_inv_sg_pub_.image = _inv_segmented_green.clone();

    cv_inv_sg_pub_.header.seq++;
    _field_boundary.header.seq++;

    cv_inv_sg_pub_.header.stamp = this->stamp_;
    _field_boundary.header.stamp = this->stamp_;

    cv_inv_sg_pub_.header.frame_id = this->frame_id_;
    _field_boundary.header.frame_id = this->frame_id_;

    cv_inv_sg_pub_.encoding = sensor_msgs::image_encodings::MONO8;

    it_inv_sg_pub_.publish(cv_inv_sg_pub_.toImageMsg());
    field_boundary_pub_.publish(_field_boundary);
}

cv::Mat& HLineSquare::setInputImage(){
    return in_img_;
}

void HLineSquare::setOutputImage(const cv::Mat &_out_img){
    out_img_ = _out_img.clone();
}

std::pair<cv::Mat, vision_utils::FieldBoundary > HLineSquare::getFieldImage(const cv::Mat &_segmented_green){
    cv::Mat _field_contour = cv::Mat::zeros(_segmented_green.size(), CV_8UC1);
    vision_utils::FieldBoundary field_boundary;
    Points contour_points;
    std::vector<Points > contours;
    std::vector<cv::Vec4i > hierarchy;

    cv::findContours(_segmented_green, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);

    for(size_t i = 0; i < contours.size(); i++){
        if(cv::contourArea(contours[i]) > MIN_FIELD_CONTOUR_AREA){
            contour_points.insert(contour_points.end(), contours[i].begin(), contours[i].end());
        }
    }

    if(contour_points.size()){
        std::vector<Points > contour(1);
        cv::convexHull(contour_points,contour[0]);
        cv::Rect field_bound = cv::boundingRect(contour[0]);
        drawContours(_field_contour, contour, 0, cv::Scalar(255), CV_FILLED);
        //[HW] Scan from dual direction
        for(int i=field_bound.tl().x;
            i<field_bound.br().x;i++){
            geometry_msgs::Vector3 temp;
            temp.x = i;
            temp.y = -1;
            temp.z = field_bound.br().y-1;
            for(int j=field_bound.tl().y;
                j<field_bound.br().y;j++){
                if(_field_contour.at<uchar >(j,i) > 0 &&
                        temp.y==-1){
                    temp.y = j;
                }else if(_field_contour.at<uchar >(j,i) == 0 &&
                         temp.y!=-1){
                    temp.z = j-1;
                    break;
                }
            }
            field_boundary.bound1.push_back(temp);
        }

        for(int i=field_bound.tl().y;
            i<field_bound.br().y;i++){
            geometry_msgs::Vector3 temp;
            temp.x = i;
            temp.y = -1;
            temp.z = field_bound.br().x-1;
            for(int j=field_bound.tl().x;
                j<field_bound.br().x;j++){
                if(_field_contour.at<uchar >(i,j) > 0 &&
                        temp.y==-1){
                    temp.y = j;
                }else if(_field_contour.at<uchar >(i,j) == 0 &&
                         temp.y!=-1){
                    temp.z = j-1;
                    break;
                }
            }
            field_boundary.bound2.push_back(temp);
        }
    }

    std::pair<cv::Mat, vision_utils::FieldBoundary > result;
    result.first = _field_contour;
    result.second = field_boundary;
    return result;
}

void HLineSquare::localizationInputEnhance(cv::Mat &_input){
    cv::Mat result = _input.clone();
    cv::dilate(result, result ,cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3,3)), cv::Point(), 1);

    std::vector<Points > contours;
    std::vector<cv::Vec4i > hierarchy;
    std::vector<double > contours_area;

    cv::findContours(result, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE);

    
    result = cv::Mat::zeros(result.size(),CV_8UC1);

    for(size_t i=0;i<contours.size();i++){
        contours_area.emplace_back(cv::contourArea(contours[i]));
        if(contours_area[i] > MIN_CONTOUR_AREA && hierarchy[i][3] == -1){
            Points approx_curve;
            cv::approxPolyDP(contours[i], approx_curve, 0.002*cv::arcLength(contours[i],true),true);
            std::vector<Points > target_contour;
            target_contour.push_back(approx_curve);
            drawContours(result, target_contour, 0, cv::Scalar(255), CV_FILLED);
        }
    }

    for(size_t i=0;i<contours.size();i++){
        if(contours_area[i] > MIN_CONTOUR_AREA && hierarchy[i][3] > -1){
            Points approx_curve;
            cv::approxPolyDP(contours[i], approx_curve, 0.002*cv::arcLength(contours[i],true),true);
            std::vector<Points > target_contour;
            target_contour.push_back(approx_curve);
            drawContours(result, target_contour, 0, cv::Scalar(0), CV_FILLED);
        }
    }
    _input = result.clone();
}

cv::Mat HLineSquare::segmentColor(cv::Mat &_segmented_green, cv::Mat &_inv_segmented_green,
                                    cv::Mat &_segmented_square_color, cv::Mat &_segmented_white){

    cv::Mat blank = cv::Mat::zeros(Alfarobi::FRAME_HEIGHT, Alfarobi::FRAME_WIDTH, CV_8UC1);
    cv::Mat out_segment = cv::Mat::zeros(Alfarobi::FRAME_HEIGHT, Alfarobi::FRAME_WIDTH, CV_8UC3);

    cv::Mat segmented_green = blank.clone();
    cv::Mat segmented_square_color = blank.clone();
    cv::Mat segmented_white = blank.clone();

    cv::cvtColor(in_img_,in_hsv_,CV_BGR2HSV);

    /*cv::Mat gray;
    cv::cvtColor(in_img_,gray,CV_BGR2GRAY);
    cv::medianBlur(gray,gray,3);
    cv::Mat kernel = (cv::Mat_<double>(3,3) << 0.111111111,0.111111111,0.111111111,0.111111111,0.111111111,0.111111111,0.111111111,0.111111111,0.111111111);
    cv::filter2D(gray,gray,CV_8UC1,kernel);
    cv::Mat lutable = cv::Mat(1,256,CV_8U);
    uchar *lutable_ptr = lutable.ptr();
    for(int i=0;i<256;i++){
        lutable_ptr[i] = pow(i/255.0,0.2)*255.0;
    }
    cv::Mat resulttt = gray.clone();
    cv::LUT(gray,lutable,resulttt);
    cv::equalizeHist(gray,gray);
    cv::adaptiveThreshold(gray,gray,255,cv::ADAPTIVE_THRESH_MEAN_C,cv::THRESH_BINARY,11,1);
    cv::imshow("GRAY",gray);*/

    int num_cols = Alfarobi::FRAME_WIDTH;
    int num_rows = Alfarobi::FRAME_HEIGHT;

    // auto LUT_ptr = LUT_data.data;
    for(int i = 0; i < num_rows; i++){
        cv::Vec3b* in_hsv_ptr = in_hsv_.ptr<cv::Vec3b>(i);
        cv::Vec3b* out_segment_ptr = out_segment.ptr<cv::Vec3b>(i);
        uchar* sg_ptr = segmented_green.ptr<uchar>(i);
        uchar* ssc_ptr = segmented_square_color.ptr<uchar>(i);
        uchar* sw_ptr = segmented_white.ptr<uchar>(i);
        for(int j = 0; j < num_cols; j++){
//            std::cout << i << " , " << j << " ; " << (int)in_hsv_ptr[j][0] << " , " << (int)in_hsv_ptr[j][1] << std::endl;
            // if(LUT_data.at<uchar>(in_hsv_ptr[j][0], in_hsv_ptr[j][1]) == 1){
            // uchar pres_class = LUT_ptr[in_hsv_ptr[j][1] + in_hsv_ptr[j][0]*num_cols];
            uchar pres_class = LUT_data.at<uchar>(in_hsv_ptr[j][0], in_hsv_ptr[j][1]);
            if(pres_class == 1){
                sg_ptr[j] = 255;
                out_segment_ptr[j][0] = 0;
                out_segment_ptr[j][1] = 200;
                out_segment_ptr[j][2] = 0;                
            }else if(pres_class == 2){
                ssc_ptr[j] = 255;
                out_segment_ptr[j][0] = 0;
                out_segment_ptr[j][1] = 0;
                out_segment_ptr[j][2] = 255;
            }else if(pres_class == 3){
                sw_ptr[j] = 255;
                out_segment_ptr[j][0] = 255;
                out_segment_ptr[j][1] = 255;
                out_segment_ptr[j][2] = 255;
            }
        }
    }

    cv::Mat inv_segmented_green;
    cv::bitwise_not(segmented_green,inv_segmented_green);

    localizationInputEnhance(segmented_white);
    localizationInputEnhance(inv_segmented_green);

    _segmented_green = segmented_green.clone();
    _inv_segmented_green = inv_segmented_green.clone();
    _segmented_square_color = segmented_square_color.clone();
    _segmented_white = segmented_white.clone();

    return out_segment;
}

void HLineSquare::filterContourData(std::vector<cv::Mat> &divided_roi, cv::Point top_left_pt,
                       std::vector<Points > &selected_data, cv::Mat *debug_mat, int sub_mode = 0){
    int num_roi_cols = divided_roi[0].cols;
    int num_roi_rows = divided_roi[0].rows;
    bool horizon_scan = (float)num_roi_rows/(float)num_roi_cols < .75f;
    cv::Point map_origin[4];
    map_origin[0].x = top_left_pt.x;
    map_origin[0].y = top_left_pt.y;
    map_origin[1].x = (sub_mode == 2)?top_left_pt.x:top_left_pt.x + divided_roi[0].cols;
    map_origin[1].y = (sub_mode == 2)?top_left_pt.y + divided_roi[0].rows:top_left_pt.y;
    map_origin[2].x = top_left_pt.x;
    map_origin[2].y = top_left_pt.y + divided_roi[0].rows;
    map_origin[3].x = top_left_pt.x + divided_roi[0].cols;
    map_origin[3].y = top_left_pt.y + divided_roi[0].rows;
    for(size_t idx = 0;idx < divided_roi.size() ; idx++){

        int scan_mode=idx;

        switch(idx){
        case 0:scan_mode = (sub_mode == 1)?0:(sub_mode == 2)?2:horizon_scan?0:2;break;
        case 1:scan_mode = (sub_mode == 1)?1:(sub_mode == 2)?3:horizon_scan?1:2;break;
        case 2:scan_mode = horizon_scan?0:3;break;
        case 3:scan_mode = horizon_scan?1:3;break;
        }

        switch(scan_mode){
        case 0:{
            for(int i=0;i<num_roi_rows;i++){
                for(int j=0;j<num_roi_cols;j++){
                    if(divided_roi[idx].at<uchar>(i,j) == 255){
                        if(j==0)continue;
                        cv::Point selected_point;
                        selected_point.x = map_origin[idx].x + j;
                        selected_point.y = map_origin[idx].y + i;
                        selected_data[idx].push_back(selected_point);
                        debug_mat[idx].at<uchar>(i,j) = 255;
                        break;
                    }
                }
            }
        }break;
        case 1:{
            for(int i=0;i<num_roi_rows;i++){
                for(int j=num_roi_cols-1;j>=0;j--){
                    if(divided_roi[idx].at<uchar>(i,j) == 255){
                        if(j==num_roi_cols-1)continue;
                        cv::Point selected_point;
                        selected_point.x = map_origin[idx].x + j;
                        selected_point.y = map_origin[idx].y + i;
                        selected_data[idx].push_back(selected_point);
                        debug_mat[idx].at<uchar>(i,j) = 255;
                        break;
                    }
                }
            }
        }break;
        case 2:{
            for(int i=0;i<num_roi_cols;i++){
                for(int j=0;j<num_roi_rows;j++){
                    if(divided_roi[idx].at<uchar>(j,i) == 255){
                        if(j==0)continue;
                        cv::Point selected_point;
                        selected_point.x = map_origin[idx].x + i;
                        selected_point.y = map_origin[idx].y + j;
                        selected_data[idx].push_back(selected_point);
                        debug_mat[idx].at<uchar>(j,i) = 255;
                        break;
                    }
                }
            }
        }break;
        case 3:{
            for(int i=0;i<num_roi_cols;i++){
                for(int j=num_roi_rows-1;j>=0;j--){
                    if(divided_roi[idx].at<uchar>(j,i) == 255){
                        if(j==num_roi_rows-1)continue;
                        cv::Point selected_point;
                        selected_point.x = map_origin[idx].x + i;
                        selected_point.y = map_origin[idx].y + j;
                        selected_data[idx].push_back(selected_point);
                        debug_mat[idx].at<uchar>(j,i) = 255;
                        break;
                    }
                }
            }
        }break;

        }
    }
}

cv::Mat HLineSquare::cvtMulti(const cv::Mat &_ball_ref){
    //cv::Mat hsv;
    cv::Mat yuv;
    //cv::Mat ycrcb;

//    cv::cvtColor(_ball_ref,hsv,CV_BGR2HSV);
    cv::cvtColor(_ball_ref,yuv,CV_BGR2YUV);
//    cv::cvtColor(_ball_ref,ycrcb,CV_BGR2YCrCb);
//    cv::Mat temp;
//    hsv.convertTo(hsv,CV_32F);
//    yuv.convertTo(yuv,CV_32F);
//    ycrcb.convertTo(ycrcb,CV_32F);
//    cv::multiply(hsv,yuv,temp);
//    cv::multiply(temp,ycrcb,temp);
//    cv::normalize(temp,temp,0,1,cv::NORM_MINMAX);
//    temp *=255;
//    temp.convertTo(temp,CV_8U);
    return yuv.clone();
}

float HLineSquare::checkTargetHistogram(cv::Mat _target_roi){

    if(ball_ref_.empty()){
        ROS_ERROR("[hline_square_detector] Ball reference not found !!!");
        return -1;
    }
    _target_roi = cvtMulti(_target_roi);
    cv::MatND target_hist;
    cv::calcHist(&_target_roi, 1, hist_param_.channels, cv::Mat(), target_hist, 2, hist_param_.hist_size, hist_param_.ranges);
    cv::normalize(target_hist,target_hist, .0, 1.0, cv::NORM_MINMAX);

    return cv::compareHist(ball_ref_hist_, target_hist, CV_COMP_KL_DIV);
}

std::vector<cv::Mat > HLineSquare::getBallPosPrediction(const Points &_data){
    int total_smp = 0;
    int total_smp2 = 0;
    int total_smp3 = 0;
    int total_smp4 = 0;

    int total_x=0;
    int total_smpx=0;
    int total_smp2x=0;

    int total_y=0;
    int total_smpy=0;
    int total_smp2y=0;
    for(size_t i=0;i < _data.size();i++){

        total_smp += i;
        int smp2 = i*i;
        int smp3 = smp2*i;
        total_smp2 += smp2;
        total_smp3 += smp3;
        total_smp4 += smp3*i;

        total_x += _data[i].x;
        total_smpx += i*_data[i].x;
        total_smp2x += smp2*_data[i].x;

        total_y += _data[i].y;
        total_smpy += i*_data[i].y;
        total_smp2y += smp2*_data[i].y;

    }
    cv::Mat A = (cv::Mat_<double>(3,3) << total_smp4, total_smp3, total_smp2, total_smp3, total_smp2, total_smp, total_smp2, total_smp, _data.size());
    cv::Mat bx = (cv::Mat_<double>(3,1) << total_smp2x,total_smpx,total_x);
    cv::Mat by = (cv::Mat_<double>(3,1) << total_smp2y,total_smpy,total_y);
    cv::Mat A_inv = A.inv();
    cv::Mat xpoly_const = A_inv*bx;
    cv::Mat ypoly_const = A_inv*by;
    cv::Mat first_term = (cv::Mat_<double>(2,1) << xpoly_const.at<double>(0), ypoly_const.at<double>(0));
    cv::Mat second_term = (cv::Mat_<double>(2,1) << xpoly_const.at<double>(1), ypoly_const.at<double>(1));
    cv::Mat third_term = (cv::Mat_<double>(2,1) << xpoly_const.at<double>(2), ypoly_const.at<double>(2));
    std::vector<cv::Mat > result;
    result.push_back(first_term);
    result.push_back(second_term);
    result.push_back(third_term);

    return result;

}

void HLineSquare::process(){

    if(cv_img_ptr_subs_ == nullptr)return;
    setInputImage() = cv_img_ptr_subs_->image;

    cv::Mat segmented_green,segmented_square_color,segmented_white, inv_segmented_green;
    cv::Mat thresh_image = segmentColor(segmented_green, inv_segmented_green, segmented_square_color, segmented_white);
    
    cv::Mat field_contour;
    std::pair<cv::Mat, vision_utils::FieldBoundary > field_prop = getFieldImage(segmented_green);
    field_contour = field_prop.first;

    publishLocalizationUtils(inv_segmented_green,field_prop.second);
//line horizontal
    cv::Mat img_hsv, horizontal,img_hasil,img_ori;

    cv::bitwise_and(segmented_white,field_contour,horizontal);
    //cv::dilate(img_trs,img_trs,cv::getStructuringElement(cv::MORPH_ELLIPSE,cv::Size(3,3)));
    int horizontal_size = horizontal.cols / 10; //semakin besar pembagi, semakin kecil panjangnya
    cv::Mat horizontalStructure = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(horizontal_size, 1));
    cv::erode(horizontal, horizontal, horizontalStructure, cv::Point(-1, -1));
    cv::dilate(horizontal, horizontal, horizontalStructure, cv::Point(-1, -1));

    std::vector<std::vector<cv::Point> > contours;
    cv::findContours(horizontal,contours, CV_RETR_TREE,CV_CHAIN_APPROX_NONE);

    int lowest_point_array=0;
    cv::Point P_low(0,0);
    std::vector<cv::Point> newcontour;
    for (int i = 0; i< contours.size(); i++) {
        double area = contourArea(contours[i]);
        cv::Point extBot = *max_element(contours[i].begin(), contours[i].end(),[](const cv::Point& lhs, const cv::Point& rhs) {return lhs.y < rhs.y;});
//      cout<<area<<endl;

        if (extBot.y < P_low.y){
            lowest_point_array = i;
        }
    }
    if(contours.size()) newcontour.insert(newcontour.end(),contours[lowest_point_array].begin(),contours[lowest_point_array].end() );

//    cv::Mat drawing = cv::Mat::zeros(in_img_.size(),CV_8UC3);
    std::vector<std::vector<cv::Point> > hull_final;
    std::vector<cv::Point> hull;
    if(newcontour.size()){
        cv::convexHull(newcontour,hull);
        hull_final.push_back(hull);
    }
    cv::Mat img_final,field_contour_;
    cv::cvtColor(field_contour,field_contour_,cv::COLOR_GRAY2BGR);
    cv::bitwise_and(field_contour_,in_img_,img_final);
//    cv::cvtColor(img_final,img_final,cv::COLOR_BGR2RGB);
    cv::drawContours(img_final,hull_final,0,cv::Scalar(255,0,0,0.4),CV_FILLED);

    cv::Moments m;
    geometry_msgs::Point hline_p;
    cv::Point hline_pc;

    if(hull_final.size()) {
        m = cv::moments(hull_final[0],false);
        hline_p.x = int(m.m10/m.m00);
        hline_p.y = int(m.m01/m.m00);
        
        hline_pc = cv::Point(m.m10/m.m00,m.m01/m.m00);
        cv::circle( img_final, hline_pc, 1, cv::Scalar(0,255,0), 3, 8, 0 );

        hline_pos_pub_.publish(hline_p);
    }



//    cv::cvtColor(img_final,img_final,cv::COLOR_GRAY2RGB);
//    cv::cvtColor(in_img_,img_ori,cv::COLOR_BGR2RGB);
//    cv::bitwise_and(in_img_,img_final,img_hasil);
//    cv::imshow("ori",in_img_);
//    cv::imshow("horizontal",horizontal);
//    cv::imshow("hasil",img_final);
//    cv::imshow("segmntd white",segmented_white);
//    cv::imshow("segmntd gree",segmented_green);
//    cv::waitKey(30);

//==========================================================
    cv::Mat square;
    cv::bitwise_and(segmented_square_color,field_contour,square);

    std::vector<std::vector<cv::Point> > contours_;
    std::vector<cv::Point> newcontour_;
    cv::findContours(square,contours_, CV_RETR_TREE,CV_CHAIN_APPROX_NONE);

    int M_low=100;
    int highest_area_array=0;
    for (int i = 0; i< contours_.size(); i++) {
        double area = contourArea(contours_[i]);
     
        if (area > M_low){
            highest_area_array = i;
            M_low = area;
        }
    }
    if(contours_.size()) newcontour_.insert(newcontour_.end(),contours_[highest_area_array].begin(),contours_[highest_area_array].end() );

    std::vector<std::vector<cv::Point> > hull_final_;
    std::vector<cv::Point> hull_;
    if(newcontour_.size()){
        cv::convexHull(newcontour_,hull_);
        hull_final_.push_back(hull_);
    }
    cv::drawContours(img_final,hull_final_,0,cv::Scalar(102,51,0),CV_FILLED);

    cv::Moments m_;
    geometry_msgs::Point square_p;
    cv::Point square_pc;
    if(hull_final_.size()) {
        m_ = cv::moments(hull_final_[0],false);

        square_p.x = float(m_.m10/m_.m00);
        square_p.y = float(m_.m01/m_.m00);

        square_pc= cv::Point(m_.m10/m_.m00,m_.m01/m_.m00);
        cv::circle( img_final, square_pc, 1, cv::Scalar(0,255,0), 3, 8, 0 );

        square_pos_pub_.publish(square_p);
    }


//==========================================================
    switch(frame_mode_){
    case 1:setOutputImage(in_hsv_);break;
    case 2:setOutputImage(thresh_image);break;
    case 3:{
        setOutputImage(img_final);break;
       //setOutputImage(img_final);break;
    }
    default:
        setOutputImage(in_img_);break;
    }

    publishImage();
}
