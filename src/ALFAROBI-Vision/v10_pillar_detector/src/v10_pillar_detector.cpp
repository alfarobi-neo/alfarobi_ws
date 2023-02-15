#include "v10_pillar_detector/v10_pillar_detector.h"

#define FROM_VIDEO 0

const float Pillar_Detector::MIN_CONTOUR_AREA = 300.0f;
const float Pillar_Detector::MIN_FIELD_CONTOUR_AREA = 1600.0f;
const float Pillar_Detector::MIN_BACKGROUND_CONTOUR_AREA = 1500.0f;
const float Pillar_Detector::MIN_SQUARE_CONTOUR_AREA = 100.0f;


Pillar_Detector::Pillar_Detector()
    :nh_(ros::this_node::getName()),
      it_(this->nh_),
      it_subs_(it_.subscribe("image_in", 1, &Pillar_Detector::imageCallback, this)),
      it_pubs_(it_.advertise("image_out", 100)),
    //   cam_info_sub_(nh_.subscribe("camera_info_in", 100, &Pillar_Detector::cameraInfoCallback, this)),
    //   cam_info_pub_(nh_.advertise<sensor_msgs::CameraInfo>("camera_info_out", 100)),
      frame_mode_subs_(nh_.subscribe("frame_mode", 1, &Pillar_Detector::frameModeCallback, this)),
      save_param_subs_(nh_.subscribe("save_param", 1, &Pillar_Detector::saveParamCallback, this)),
      LUT_sub_(nh_.subscribe("LUT_data", 1, &Pillar_Detector::lutCallback, this)),
      field_boundary_pub_(nh_.advertise<vision_utils::FieldBoundary > ("field_boundary", 10)),
      pillar_pos_pub_(nh_.advertise<geometry_msgs::Point > ("pillar_pos", 100)),
      update_params_pub_(nh_.advertise<std_msgs::Empty > ("update_params", 10)),
      it_inv_sg_pub_(it_.advertise("inv_segment_green", 10)),
    //   pred_status_sub_(nh_.subscribe("/alfarobi/prediction_status", 1, &Pillar_Detector::predStatusCb, this)),
      frame_mode_(0),
      pred_status_(false){

    nh_.param<std::string>("pillar_config_path", pillar_config_path,
                           ros::package::getPath("v10_pillar_detector") + "/config/saved_config.yaml");

    param_cb_ = boost::bind(&Pillar_Detector::paramCallback, this, _1, _2);
    param_server_.setCallback(param_cb_);

    LUT_dir = ros::package::getPath("v10_pillar_detector") + "/config/tabel_warna.xml";

    loadParam();
}

void Pillar_Detector::loadParam(){
    YAML::Node config_file;
    try{
        config_file = YAML::LoadFile(pillar_config_path.c_str());
    }catch(const std::exception &e){
        ROS_ERROR("[v10_pillar_detector] Unable to open config file: %s", e.what());
    }

    cv::FileStorage fs(LUT_dir.c_str(),cv::FileStorage::READ);
    fs["Tabel_Warna"] >> LUT_data;
    fs.release();
}

void Pillar_Detector::saveParam(){
    YAML::Emitter yaml_out;
    yaml_out << YAML::BeginMap;
    yaml_out << YAML::EndMap;
    std::ofstream file_out(pillar_config_path.c_str());
    file_out << yaml_out.c_str();
    file_out.close();
    cv::FileStorage fs(LUT_dir.c_str(),cv::FileStorage::WRITE);
    fs << "Tabel_Warna" << LUT_data;
    fs.release();
}

void Pillar_Detector::frameModeCallback(const std_msgs::Int8::ConstPtr &_msg){
    frame_mode_ = _msg->data;
}

void Pillar_Detector::saveParamCallback(const std_msgs::Empty::ConstPtr &_msg){
    (void)_msg;
    saveParam();
}

void Pillar_Detector::lutCallback(const vision_utils::LUTConstPtr &_msg){
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

void Pillar_Detector::lineTipCallback(const vision_utils::LineTipConstPtr &_msg){
    line_tip_.tip1 = _msg->tip1;
    line_tip_.tip2 = _msg->tip2;
}

void Pillar_Detector::imageCallback(const sensor_msgs::ImageConstPtr &_msg){

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
        ROS_ERROR("[v10_pillar_detector] cv bridge exception: %s",e.what());
        return;
    }

    cv_img_ptr_subs_ = cv_bridge::toCvCopy(_msg,_msg->encoding);
    this->stamp_ = _msg->header.stamp;
    this->frame_id_ = _msg->header.frame_id;
}

void Pillar_Detector::cameraInfoCallback(const sensor_msgs::CameraInfo &_msg){
    //cam_info_msg_ = *_msg;
    
//    ROS_INFO("CHECK...");
}

void Pillar_Detector::paramCallback(v10_pillar_detector::PillarDetectorParamsConfig &_config, uint32_t level){
    (void)level;
    this->config_ = _config;
}

void Pillar_Detector::publishImage(){
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
    // cam_info_pub_.publish(cam_info_msg_);
}

cv::Mat& Pillar_Detector::setInputImage(){
    return in_img_;
}

void Pillar_Detector::setOutputImage(const cv::Mat &_out_img){
    out_img_ = _out_img.clone();
}

std::pair<cv::Mat, vision_utils::FieldBoundary > Pillar_Detector::getFieldImage(const cv::Mat &_segmented_green){
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

cv::Mat Pillar_Detector::getBackgroundImage(const cv::Mat &_segmented_black){
    cv::Mat _background_contour = cv::Mat::zeros(_segmented_black.size(), CV_8UC1);
    Points contour_points;
    std::vector<Points > contours;
    std::vector<cv::Vec4i > hierarchy;

    cv::findContours(_segmented_black, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);

    for(size_t i = 0; i < contours.size(); i++){
        if(cv::contourArea(contours[i]) > MIN_BACKGROUND_CONTOUR_AREA){
            contour_points.insert(contour_points.end(), contours[i].begin(), contours[i].end());
        }
    }

    if(contour_points.size()){
        std::vector<Points > contour(1);
        cv::convexHull(contour_points,contour[0]);
        cv::Rect field_bound = cv::boundingRect(contour[0]);
        drawContours(_background_contour, contour, 0, cv::Scalar(255), CV_FILLED);
    }
     return _background_contour;
}

cv::Mat Pillar_Detector::getSquareImage(const cv::Mat &_segmented_blue){
    cv::Mat _square_contour = cv::Mat::zeros(_segmented_blue.size(), CV_8UC1);
    Points contour_points;
    std::vector<Points > contours;
    std::vector<cv::Vec4i > hierarchy;

    cv::findContours(_segmented_blue, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);

    for(size_t i = 0; i < contours.size(); i++){
        if(cv::contourArea(contours[i]) > MIN_SQUARE_CONTOUR_AREA){
            contour_points.insert(contour_points.end(), contours[i].begin(), contours[i].end());
        }
    }

    if(contour_points.size()){
        std::vector<Points > contour(1);
        cv::convexHull(contour_points,contour[0]);
        cv::Rect field_bound = cv::boundingRect(contour[0]);
        drawContours(_square_contour, contour, 0, cv::Scalar(255), CV_FILLED);
    }
     return _square_contour;
}

// void Pillar_Detector::localizationInputEnhance(cv::Mat &_input){
//     cv::Mat result = _input.clone();
//     cv::dilate(result, result ,cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3,3)), cv::Point(), 1);

//     std::vector<Points > contours;
//     std::vector<cv::Vec4i > hierarchy;
//     std::vector<double > contours_area;

//     cv::findContours(result, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE);

    
//     result = cv::Mat::zeros(result.size(),CV_8UC1);

//     for(size_t i=0;i<contours.size();i++){
//         contours_area.emplace_back(cv::contourArea(contours[i]));
//         if(contours_area[i] > MIN_CONTOUR_AREA && hierarchy[i][3] == -1){
//             Points approx_curve;
//             cv::approxPolyDP(contours[i], approx_curve, 0.002*cv::arcLength(contours[i],true),true);
//             std::vector<Points > target_contour;
//             target_contour.push_back(approx_curve);
//             drawContours(result, target_contour, 0, cv::Scalar(255), CV_FILLED);
//         }
//     }

//     for(size_t i=0;i<contours.size();i++){
//         if(contours_area[i] > MIN_CONTOUR_AREA && hierarchy[i][3] > -1){
//             Points approx_curve;
//             cv::approxPolyDP(contours[i], approx_curve, 0.002*cv::arcLength(contours[i],true),true);
//             std::vector<Points > target_contour;
//             target_contour.push_back(approx_curve);
//             drawContours(result, target_contour, 0, cv::Scalar(0), CV_FILLED);
//         }
//     }
//     _input = result.clone();
// }

cv::Mat Pillar_Detector::segmentColor(cv::Mat &_segmented_green, cv::Mat &_inv_segmented_green,
                                    cv::Mat &_segmented_pillar_color, cv::Mat &_segmented_black, cv::Mat &_segmented_blue){

    cv::Mat blank = cv::Mat::zeros(Alfarobi::FRAME_HEIGHT, Alfarobi::FRAME_WIDTH, CV_8UC1);
    cv::Mat out_segment = cv::Mat::zeros(Alfarobi::FRAME_HEIGHT, Alfarobi::FRAME_WIDTH, CV_8UC3);

    cv::Mat segmented_green = blank.clone();
    cv::Mat segmented_pillar_color = blank.clone();
    cv::Mat segmented_black = blank.clone();
    cv::Mat segmented_blue = blank.clone();

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
        uchar* ssc_ptr = segmented_pillar_color.ptr<uchar>(i);
        uchar* sw_ptr = segmented_black.ptr<uchar>(i);
        uchar* sb_ptr = segmented_blue.ptr<uchar>(i);
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
                out_segment_ptr[j][0] = 255;
                out_segment_ptr[j][1] = 0;
                out_segment_ptr[j][2] = 255;
            }else if(pres_class == 3){
                sw_ptr[j] = 255;
                out_segment_ptr[j][0] = 0;
                out_segment_ptr[j][1] = 0;
                out_segment_ptr[j][2] = 255;
            }else if(pres_class == 4){
                sb_ptr[j] = 255;
                out_segment_ptr[j][0] = 0;
                out_segment_ptr[j][1] = 255;
                out_segment_ptr[j][2] = 255;
            }
        }
    }

    cv::Mat inv_segmented_green;
    cv::bitwise_not(segmented_green,inv_segmented_green);

    cv::Mat result = inv_segmented_green.clone();
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
    _inv_segmented_green = result.clone();

    _segmented_green = segmented_green.clone();
    _segmented_pillar_color = segmented_pillar_color.clone();
    _segmented_black = segmented_black.clone();
    _segmented_blue = segmented_blue.clone();

    return out_segment;
}



void Pillar_Detector::erode_dilate (cv::Mat &img_src) {
    int vertical_size = img_src.rows/30;
    cv::dilate(img_src, img_src, cv::getStructuringElement(cv::MORPH_RECT, cv::Size(2,2)));
    cv::erode(img_src, img_src, cv::getStructuringElement(cv::MORPH_RECT, cv::Size(2,2)));
    cv::erode(img_src, img_src, cv::getStructuringElement(cv::MORPH_RECT, cv::Size(1,vertical_size)));
    cv::dilate(img_src, img_src, cv::getStructuringElement(cv::MORPH_RECT, cv::Size(1,vertical_size)));
}

void Pillar_Detector::publishLocalizationUtils( const cv::Mat &_inv_segmented_green,
                                         vision_utils::FieldBoundary _field_boundary){
    // cv_sw_pub_.image = _segmented_white.clone();
    cv_inv_sg_pub_.image = _inv_segmented_green.clone();

    // cv_sw_pub_.header.seq++;
    cv_inv_sg_pub_.header.seq++;
    _field_boundary.header.seq++;

    // cv_sw_pub_.header.stamp = this->stamp_;
    cv_inv_sg_pub_.header.stamp = this->stamp_;
    _field_boundary.header.stamp = this->stamp_;

    // cv_sw_pub_.header.frame_id = this->frame_id_;
    cv_inv_sg_pub_.header.frame_id = this->frame_id_;
    _field_boundary.header.frame_id = this->frame_id_;

    // cv_sw_pub_.encoding = sensor_msgs::image_encodings::MONO8;
    cv_inv_sg_pub_.encoding = sensor_msgs::image_encodings::MONO8;

    // it_sw_pub_.publish(cv_sw_pub_.toImageMsg());
    it_inv_sg_pub_.publish(cv_inv_sg_pub_.toImageMsg());
    
    field_boundary_pub_.publish(_field_boundary);
}

void Pillar_Detector::process() {
if(cv_img_ptr_subs_ == nullptr)return;
    setInputImage() = cv_img_ptr_subs_->image;
    
    cv::Mat output_view = in_img_.clone();
    cv::Mat segmented_green, segmented_pillar_color, segmented_black, inv_segmented_green, segmented_blue;
    cv::Mat thresh_image = segmentColor(segmented_green, inv_segmented_green, segmented_pillar_color, segmented_black, segmented_blue);

    cv::Mat view_ed_res;
    erode_dilate(segmented_pillar_color);
    cv::cvtColor(segmented_green,view_ed_res,CV_GRAY2BGR);

    cv::Mat field_contour;
    cv::Mat background_contour = getBackgroundImage(segmented_black);
    cv::Mat square_contour = getSquareImage(segmented_blue);

    std::pair<cv::Mat, vision_utils::FieldBoundary> field_prop = getFieldImage(segmented_green);
    field_contour = field_prop.first;

    // publishLocalizationUtils(inv_segmented_green,field_prop.second);

    cv::bitwise_or(background_contour, square_contour, background_contour);
    cv::bitwise_or(field_contour, background_contour, field_contour);
    cv::Scalar magenta(255,0,255);
    cv::Mat pillar_inside_all;
    cv::Mat pillar_inside_field_colored;
    cv::bitwise_and(segmented_pillar_color,square_contour,pillar_inside_all);

    // cv::imshow("IG",inv_segmented_green);
    // cv::waitKey(30);
    // cv::imshow ("AWAW", background_contour);
    // cv::imshow ("IWIW", square_contour);
    // cv::waitKey(30);

    cv::Point2f pillar_point;
    pillar_point.x = -1.0f;
    pillar_point.y = -1.0f;

    // cv::cvtColor(pillar_inside_field, pillar_inside_field_colored, CV_GRAY2BGR);
    publishLocalizationUtils(inv_segmented_green,field_prop.second);

        std::vector<std::vector<cv::Point> > contours;  //nyimpan dari contur contur ya, contur disimpan pada contur point.

        std::vector<cv::Vec4i> hierarcy;

        cv::findContours(pillar_inside_all, contours, hierarcy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE);

        std::vector<cv::Point> contours_range;
        // std::vector<cv::Moments> mu(contours.size());
        // for (size_t i = 0; i < contours.size();i++) {
        //     mu[i] = cv::moments(contours[i], false);
        // }
        

        //RANGE BASED
        // int c_center = 0;
        // std::vector<cv::Point> mc(contours.size());
        for (size_t i = 0; i < contours.size();i++) {
            double area = cv::contourArea(contours[i]);
            // std::cout<<area<<std::endl;
            if (area > 100) {
                // mc[c_center] = cv::Point(mu[i].m10/mu[i].m00, mu[i].m01/mu[i].m00);
                // std::cout<<"MC X : "<<mc[c_center].x<<std::endl;
                // std::cout<<"MC Y : "<<mc[c_center].y<<std::endl<<std::endl;
                contours_range.insert(contours_range.end(), contours[i].begin(), contours[i].end());
            }
        }

        std::vector<std::vector<cv::Point>> final_hull;
        std::vector<cv::Point> hull;

        if(contours_range.size()) {
            cv::convexHull(contours_range, hull);
            final_hull.push_back(hull);
        }
        float height = 0;
        cv::Mat drawing = cv::Mat::zeros(in_img_.size(), CV_8UC3);
        cv::drawContours(drawing, final_hull, 0, cv::Scalar(255, 255, 255), 1, 8);

        // cv::imshow("drawing", drawing);
        cv::waitKey(30);

        cv::Rect pillar_roi;
        float z = std::numeric_limits<float>::max();
        cv::Point2f roi_center;
        if (final_hull.size()) {
            pillar_roi = cv::boundingRect(final_hull[0]);
            roi_center = (pillar_roi.br() + pillar_roi.tl())*0.5;
            height = pillar_roi.height/2.5f;
            pillar_point.x = roi_center.x;
            pillar_point.y = roi_center.y + height;
            z = pillar_roi.height/2 - height;
        }

        pillar_pos_.x = pillar_point.x;
        pillar_pos_.y = pillar_point.y;
        pillar_pos_.z = z;
        pillar_pos_pub_.publish(pillar_pos_);

        // cv::imshow("PIllar COlored", pillar_inside_field_colored);
        // cv::waitKey(30);

    switch(frame_mode_){
    case 1:setOutputImage(in_hsv_);break;
    case 2:setOutputImage(thresh_image);break;
    case 3:{
        cv::cvtColor(field_contour,field_contour,CV_GRAY2BGR);
        cv::bitwise_and(output_view,field_contour,output_view);
        cv::rectangle(output_view, pillar_roi, magenta, 2, 8);
        cv::circle(output_view, cv::Point(roi_center.x, roi_center.y + height), 2, cv::Scalar(0, 0, 0),CV_FILLED);
    //    cvtColor(output_view,output_view,CV_BGR2RGB);
        setOutputImage(output_view);break;
    }
    default:
        setOutputImage(in_img_);break;
    }
    publishImage();

}