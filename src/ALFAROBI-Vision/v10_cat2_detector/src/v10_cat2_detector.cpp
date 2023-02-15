#include "v10_cat2_detector/v10_cat2_detector.h"

#define FROM_VIDEO 0

const float Cat2Detector::MIN_CONTOUR_AREA = 100.0f;
const float Cat2Detector::MIN_FIELD_CONTOUR_AREA = 1600.0f;

Cat2Detector::Cat2Detector()
    :nh_(ros::this_node::getName()),
      it_(this->nh_),
      it_subs_(it_.subscribe("image_in", 1, &Cat2Detector::imageCallback, this)),
      it_pubs_(it_.advertise("image_out_cat2", 100)),
      cam_info_sub_(nh_.subscribe("camera_info_in", 100, &Cat2Detector::cameraInfoCallback, this)),
      cam_info_pub_(nh_.advertise<sensor_msgs::CameraInfo>("camera_info_out", 100)),
      frame_mode_subs_(nh_.subscribe("frame_mode", 1, &Cat2Detector::frameModeCallback, this)),
      save_param_subs_(nh_.subscribe("save_param", 1, &Cat2Detector::saveParamCallback, this)),
      LUT_sub_(nh_.subscribe("LUT_data", 1, &Cat2Detector::lutCallback, this)),
      it_bf_sub_(it_.subscribe("square_ref", 1, &Cat2Detector::squareRefCallback, this)),
      square_pos_pub_(nh_.advertise<geometry_msgs::Point > ("square_pos", 100)),
      line_pos_pub_(nh_.advertise<geometry_msgs::Point > ("line_pos", 100)),
      update_params_pub_(nh_.advertise<std_msgs::Empty > ("update_params", 10)),
      it_inv_sg_pub_(it_.advertise("inv_segment_green", 10)),
      field_boundary_pub_(nh_.advertise<vision_utils::FieldBoundary > ("field_boundary", 10)),
      frame_mode_(0){

    nh_.param<std::string>("square_config_path", square_config_path,
                           ros::package::getPath("v10_cat2_detector") + "/config/saved_config.yaml");

    param_cb_ = boost::bind(&Cat2Detector::paramCallback, this, _1, _2);
    param_server_.setCallback(param_cb_);

    LUT_dir = ros::package::getPath("v10_cat2_detector") + "/config/tabel_warna.xml";

    loadParam();
}

void Cat2Detector::loadParam(){
    YAML::Node config_file;
    try{
        config_file = YAML::LoadFile(square_config_path.c_str());
    }catch(const std::exception &e){
        ROS_ERROR("[v10_cat2_detector] Unable to open config file: %s", e.what());
    }

    config_.score = config_file["score"].as<int>();
    config_.ratio1 = config_file["ratio1"].as<int>();
    config_.ratio2 = config_file["ratio2"].as<int>();

    cv::FileStorage fs(LUT_dir.c_str(),cv::FileStorage::READ);
    fs["Tabel_Warna"] >> LUT_data;
    fs.release();

    square_ref_ = cv::imread(ros::package::getPath("v10_cat2_detector") + "/config/square_ref.jpg");
    square_ref_ = cvtMulti(square_ref_);
    if(!square_ref_.empty()){
        cv::calcHist(&square_ref_, 1, hist_param_.channels, cv::Mat(), square_ref_hist_, 2, hist_param_.hist_size, hist_param_.ranges);
        cv::normalize(square_ref_hist_,square_ref_hist_, .0, 1.0, cv::NORM_MINMAX);
    }
}

void Cat2Detector::saveParam(){
    YAML::Emitter yaml_out;
    yaml_out << YAML::BeginMap;
    yaml_out << YAML::Key << "score" << YAML::Value << config_.score;
    yaml_out << YAML::Key << "ratio1" << YAML::Value << config_.ratio1;
    yaml_out << YAML::Key << "ratio2" << YAML::Value << config_.ratio2;
    yaml_out << YAML::EndMap;
    std::ofstream file_out(square_config_path.c_str());
    file_out << yaml_out.c_str();
    file_out.close();
    cv::FileStorage fs(LUT_dir.c_str(),cv::FileStorage::WRITE);
    fs << "Tabel_Warna" << LUT_data;
    fs.release();

    cv::imwrite(ros::package::getPath("v10_cat2_detector") + "/config/square_ref.jpg", square_ref_);
}

void Cat2Detector::frameModeCallback(const std_msgs::Int8::ConstPtr &_msg){
    frame_mode_ = _msg->data;
}

void Cat2Detector::saveParamCallback(const std_msgs::Empty::ConstPtr &_msg){
    (void)_msg;
    saveParam();
}

void Cat2Detector::squareRefCallback(const sensor_msgs::ImageConstPtr &_msg){
    cv_bf_ptr_sub_ = cv_bridge::toCvCopy(_msg,_msg->encoding);
    square_ref_ = cv_bf_ptr_sub_->image;
    square_ref_ = cvtMulti(square_ref_);
    cv::calcHist(&square_ref_, 1, hist_param_.channels, cv::Mat(), square_ref_hist_, 2, hist_param_.hist_size, hist_param_.ranges);
    cv::normalize(square_ref_hist_, square_ref_hist_, .0, 1.0 , cv::NORM_MINMAX);
}

void Cat2Detector::lutCallback(const vision_utils::LUTConstPtr &_msg){
    for(size_t i = 0; i < _msg->color.size(); i++){
        int h = (int)_msg->color[i].x;
        int s = (int)_msg->color[i].y;
        LUT_data.at<uchar>(h,s) = (int) _msg->color_class.data;
    }
}

void Cat2Detector::imageCallback(const sensor_msgs::ImageConstPtr &_msg){

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
        ROS_ERROR("[v10_cat2_detector] cv bridge exception: %s",e.what());
        return;
    }

    cv_img_ptr_subs_ = cv_bridge::toCvCopy(_msg,_msg->encoding);
    this->stamp_ = _msg->header.stamp;
    this->frame_id_ = _msg->header.frame_id;
}

void Cat2Detector::cameraInfoCallback(const sensor_msgs::CameraInfo &_msg){
    //cam_info_msg_ = *_msg;
    
//    ROS_INFO("CHECK...");
}

void Cat2Detector::paramCallback(v10_cat2_detector::Cat2DetectorParamsConfig &_config, uint32_t level){
    (void)level;
    this->config_ = _config;
}

void Cat2Detector::publishImage(){
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

cv::Mat& Cat2Detector::setInputImage(){
    return in_img_;
}

void Cat2Detector::setOutputImage(const cv::Mat &_out_img){
    out_img_ = _out_img.clone();
}

cv::Mat Cat2Detector::segmentColor(cv::Mat &_segmented_green, cv::Mat &_inv_segmented_green, cv::Mat &_segmented_blue, cv::Mat &_segmented_white){

    cv::Mat blank = cv::Mat::zeros(Alfarobi::FRAME_HEIGHT, Alfarobi::FRAME_WIDTH, CV_8UC1);
    cv::Mat out_segment = cv::Mat::zeros(Alfarobi::FRAME_HEIGHT, Alfarobi::FRAME_WIDTH, CV_8UC3);

    cv::Mat segmented_green = blank.clone();
    cv::Mat segmented_blue = blank.clone();
    cv::Mat segmented_white = blank.clone();

    cv::cvtColor(in_img_,in_hsv_,CV_BGR2HSV);

    int num_cols = Alfarobi::FRAME_WIDTH;
    int num_rows = Alfarobi::FRAME_HEIGHT;

    // auto LUT_ptr = LUT_data.data;
    for(int i = 0; i < num_rows; i++){
        cv::Vec3b* in_hsv_ptr = in_hsv_.ptr<cv::Vec3b>(i);
        cv::Vec3b* out_segment_ptr = out_segment.ptr<cv::Vec3b>(i);
        uchar* sg_ptr = segmented_green.ptr<uchar>(i);
        uchar* sb_ptr = segmented_blue.ptr<uchar>(i);
        uchar* sw_ptr = segmented_white.ptr<uchar>(i); 
        for(int j = 0; j < num_cols; j++){
            uchar pres_class = LUT_data.at<uchar>(in_hsv_ptr[j][0], in_hsv_ptr[j][1]);
            if(pres_class == 1){
                sg_ptr[j] = 255;
                out_segment_ptr[j][0] = 0;
                out_segment_ptr[j][1] = 200;
                out_segment_ptr[j][2] = 0;                
            }else if(pres_class == 2){
                sb_ptr[j] = 255;
                out_segment_ptr[j][0] = 0;
                out_segment_ptr[j][1] = 0;
                out_segment_ptr[j][2] = 200;
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

    _segmented_green = segmented_green.clone();
    _inv_segmented_green = inv_segmented_green.clone();
    _segmented_blue = segmented_blue.clone();
    _segmented_white = segmented_white.clone();

    return out_segment;
}

cv::Mat Cat2Detector::cvtMulti(const cv::Mat &_square_ref){
    cv::Mat yuv;
    cv::cvtColor(_square_ref,yuv,CV_BGR2YUV);
    return yuv.clone();
}

void Cat2Detector::filterContourData(std::vector<cv::Mat> &divided_roi, cv::Point top_left_pt,
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


float Cat2Detector::checkTargetHistogram(cv::Mat _target_roi){

    if(square_ref_.empty()){
        ROS_ERROR("[v10_cat2_detector] Cat2 reference not found !!!");
        return -1;
    }
    _target_roi = cvtMulti(_target_roi);
    cv::MatND target_hist;
    cv::calcHist(&_target_roi, 1, hist_param_.channels, cv::Mat(), target_hist, 2, hist_param_.hist_size, hist_param_.ranges);
    cv::normalize(target_hist,target_hist, .0, 1.0, cv::NORM_MINMAX);

    return cv::compareHist(square_ref_hist_, target_hist, CV_COMP_KL_DIV);
}

void Cat2Detector::publishLocalizationUtils(const cv::Mat &_inv_segmented_green,
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

std::pair<cv::Mat, vision_utils::FieldBoundary > Cat2Detector::getImageContours(const cv::Mat &_segmented_green){
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


void Cat2Detector::process(){
    if(cv_img_ptr_subs_ == nullptr)return;
    static geometry_msgs::Point last_square_pos_;
    line_pos_.x = -1;
    line_pos_.y = -1;
    line_pos_.z = 0;
    square_pos_.x = -1;
    square_pos_.y = -1;
    square_pos_.z = 0;
    geometry_msgs::Point _square_pos;
    geometry_msgs::Point _line_pos;
    setInputImage() = cv_img_ptr_subs_->image;

    cv::Mat output_view = in_img_.clone();
    cv::Mat segmented_green, inv_segmented_green, segmented_blue, segmented_white;
    cv::Mat thresh_image = segmentColor(segmented_green, inv_segmented_green, segmented_blue, segmented_white);

    cv::Mat field_contour;
    std::pair<cv::Mat, vision_utils::FieldBoundary > field_prop = getImageContours(segmented_green);
    field_contour = field_prop.first;
    publishLocalizationUtils(inv_segmented_green,field_prop.second);

    // cv::dilate(square_in_background, square_in_background, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(3,3)));
    // cv::erode(square_in_background, square_in_background, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(3,3)));

    cv::Mat square_contour;
    std::pair<cv::Mat, vision_utils::FieldBoundary > square_prop = getImageContours(segmented_blue);
    square_contour = square_prop.first;

    std::vector<Points > contours;
    //Approx NONE to get the authentic contours
    cv::findContours(square_contour, contours, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);

    //for square
    cv::Mat ROI;
    cv::Rect square_roi;
    cv::Mat square;
    for(size_t i = 0; i < contours.size(); i++){
        float contour_area = cv::contourArea(contours[i]);
        // std::cout<<"contour_area : "<<contour_area<<std::endl; //max65000-69999
        if(contour_area > 68000){
            cv::Rect rect_rough_roi = cv::boundingRect(contours[i]);
//            cv::Point br_pt = rect_rough_roi.br();

            cv::Mat roi_hsv_ = cv::Mat(in_hsv_,rect_rough_roi);

            float histogram_score = checkTargetHistogram(roi_hsv_);
            // std::cout<<"Histogram : "<<histogram_score<<std::endl;

            if(histogram_score < (float)config_.score / 10.0f)continue;

            cv::Mat frame_rough_roi(square_contour,rect_rough_roi);
        
            cv::Point tl_pt = rect_rough_roi.tl();

            float roi_ratio = (rect_rough_roi.width < rect_rough_roi.height)?(float)rect_rough_roi.width/(float)rect_rough_roi.height:
                                                                             (float)rect_rough_roi.height/(float)rect_rough_roi.width;
            // std::cout<<"Ratio 1 : "<<roi_ratio<<std::endl;
            // std::cout<<"Ratio 2 : "<<1.0f/roi_ratio<<std::endl;
            std::vector<cv::Mat> sub_frame;
            // if(roi_ratio >= (float)config_.ratio1/100.0f && 1.0f/roi_ratio <= (float)config_.ratio2/100.0f){ //0.30  kanan->3.16
                // if(contour_area < 271856){
                    Points outer_rect;
                    cv::convexHull(contours[i],outer_rect);
                    cv::Moments moment;
                    moment = cv::moments(outer_rect,true);
                    cv::Point square_com(moment.m10/moment.m00, moment.m01/moment.m00);
                          
                    _square_pos.x = int(moment.m10/moment.m00);
                    _square_pos.y = int(moment.m01/moment.m00);

                    std::vector<std::vector<cv::Point> > contours_poly( contours.size() );
                    std::vector<cv::Rect> boundRect( contours.size() );
                    std::vector<cv::Point2f> centers( contours.size() );

                    cv::approxPolyDP( contours[i], contours_poly[i], 3, true );
                    boundRect[i] = cv::boundingRect( contours_poly[i] );

                    cv::Mat output_view_roi(output_view,boundRect[i]);
                    cv::Mat square_region(output_view_roi.size(),CV_8UC3,cv::Scalar(50,50,255));
                    square = square_region.clone();
                    cv::addWeighted(output_view_roi, .5, square_region, .5, .0,output_view_roi);

                    if(!contours.size()){
                        square_pos_.x = -1;
                        square_pos_.y = -1;
                        square_pos_.z = 0;
                    }else {
                        square_pos_.x = _square_pos.x;
                        square_pos_.y = _square_pos.y;
                        square_pos_.z = 0;
                    }

                    // std::cout<<"square_pos_.x : "<<square_pos_.x<<std::endl;
                    // std::cout<<"square_pos_.y : "<<square_pos_.y<<std::endl;
                // }
            // }
        }
    }
    //for line
    cv::Mat field_for_line = cv::Mat::zeros(thresh_image.size(), CV_8UC1);

    Points contour_points_for_line;

    std::vector<Points > contours_field;
    std::vector<cv::Vec4i > hierarchy_field;
    std::vector<Points > contours_square;
    std::vector<cv::Vec4i > hierarchy_square;

    cv::findContours(field_contour, contours_field, hierarchy_field, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);
    for(size_t i = 0; i < contours_field.size(); i++){
        if(cv::contourArea(contours_field[i]) > MIN_FIELD_CONTOUR_AREA){
            contour_points_for_line.insert(contour_points_for_line.end(), contours_field[i].begin(), contours_field[i].end());
        }
    }

    cv::findContours(square_contour, contours_square, hierarchy_square, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);
    for(size_t i = 0; i < contours_square.size(); i++){
        if(cv::contourArea(contours_square[i]) > MIN_FIELD_CONTOUR_AREA){
            contour_points_for_line.insert(contour_points_for_line.end(), contours_square[i].begin(), contours_square[i].end());
        }
    }

    if(contours_field.size() || contours_square.size()){
        std::vector<Points > contour(1);
        cv::convexHull(contour_points_for_line,contour[0]);
        cv::Rect field_bound = cv::boundingRect(contour[0]);
        drawContours(field_for_line, contour, 0, cv::Scalar(255), CV_FILLED);
    }

    cv::Mat line_contour;
    std::pair<cv::Mat, vision_utils::FieldBoundary > line_prop = getImageContours(segmented_white);
    line_contour = line_prop.first;

    cv::bitwise_and(line_contour,field_for_line,line_contour);
    
    cv::Mat _lines;
    cv::cvtColor(line_contour, _lines, CV_GRAY2BGR);
    cv::bitwise_and(_lines, in_img_, _lines);
    cv::cvtColor(_lines, _lines, CV_BGR2RGB);
    cv::cvtColor(_lines, _lines, CV_BGR2GRAY);

    cv::Mat bw;
    cv::adaptiveThreshold(_lines, bw, 255, cv::ADAPTIVE_THRESH_MEAN_C, cv::THRESH_BINARY, 15, -2);

    cv::Mat horizontal = bw.clone();

    int horizontal_size = horizontal.cols / 10;
    cv::Mat horizontalStructure = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(horizontal_size, 1));

    cv::erode(horizontal, horizontal, horizontalStructure, cv::Point(-1, -1));
    cv::dilate(horizontal, horizontal, horizontalStructure, cv::Point(-1, -1));

    std::vector<std::vector<cv::Point> > contours_lines;
    Points contour_pt_ine;
    cv::findContours(horizontal,contours_lines, CV_RETR_TREE,CV_CHAIN_APPROX_NONE);
    for(size_t i = 0; i < contours_lines.size(); i++){
        // std::cout<<"cv::contourArea(contours_lines[i]) : "<<cv::contourArea(contours_lines[i])<<std::endl;
        if(cv::contourArea(contours_lines[i]) > 150){
            contour_pt_ine.insert(contour_pt_ine.end(), contours_lines[i].begin(), contours_lines[i].end());
        }
    }

    cv::Mat horizontal_line = cv::Mat::zeros(thresh_image.size(), CV_8UC1);
    if(contour_pt_ine.size()){
        std::vector<Points > contour(1);
        cv::convexHull(contour_pt_ine,contour[0]);
        cv::Rect field_bound = cv::boundingRect(contour[0]);

        drawContours(horizontal_line, contour, 0, cv::Scalar(255), CV_FILLED);
    }

    std::vector<Points > contours_lineH;
    //for gui
    //Approx NONE to get the authentic contours
    cv::findContours(horizontal_line, contours_lineH, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);
    for(size_t i = 0; i < contours_lineH.size(); i++){

        Points outer_rect;
        cv::convexHull(contours_lineH[i],outer_rect);
        cv::Moments moment;
        moment = cv::moments(outer_rect,true);
        cv::Point line_com(moment.m10/moment.m00, moment.m01/moment.m00);
                
        _line_pos.x = int(moment.m10/moment.m00);
        _line_pos.y = int(moment.m01/moment.m00);

        cv::Point line_center;
        line_center = cv::Point(moment.m10/moment.m00,moment.m01/moment.m00);
        cv::circle(output_view, line_center, 1, cv::Scalar(255,0,0), 3, 8, 0 );

        std::vector<std::vector<cv::Point> > contours_poly( contours_lineH.size() );
        std::vector<cv::Rect> boundRect( contours_lineH.size() );
        std::vector<cv::Point2f> centers( contours_lineH.size() );

        cv::approxPolyDP( contours_lineH[i], contours_poly[i], 3, true );
        boundRect[i] = cv::boundingRect( contours_poly[i] );

        cv::Mat output_view_roi(output_view,boundRect[i]);
        cv::Mat square_region(output_view_roi.size(),CV_8UC3,cv::Scalar(255,50,50));
        square = square_region.clone();
        cv::addWeighted(output_view_roi, .5, square_region, .5, .0,output_view_roi);

        if(!contours_lineH.size()){
            line_pos_.x = -1;
            line_pos_.y = -1;
            line_pos_.z = 0;
        }else {
            line_pos_.x = _line_pos.x;
            line_pos_.y = _line_pos.y;
            line_pos_.z = 0;
        }

        // std::cout<<"line_pos_.x : "<<line_pos_.x<<std::endl;
        // std::cout<<"line_pos_.y : "<<line_pos_.y<<std::endl;

    }
    line_pos_pub_.publish(line_pos_);
    square_pos_pub_.publish(square_pos_);

    // cv::imshow("horizontal_line", horizontal_line);
    // cv::imshow("field_contour", field_contour);
    // cv::imshow("square_contour", square_contour);
    // cv::waitKey(1);


#if DEBUG == 1
    std::cout<<Success<<std::endl;
#endif

    //For purpose GUI only
    switch(frame_mode_){
    case 1:setOutputImage(in_hsv_); break;
    case 2:setOutputImage(thresh_image);break;
    case 3:
    
    setOutputImage(output_view);break;
    default:setOutputImage(in_img_);break;
    }
    publishImage();
}