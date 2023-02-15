#include "v10_cat2_localization/v10_cat2_localization.h"
#ifdef DEBUG
int debug_viz_mode = 0;
#endif

const int Cat2Localization::MIN_LINE_INLIERS = 10;
const int Cat2Localization::MIN_CIRCLE_INLIERS = 30;
const int Cat2Localization::MIN_LINE_LENGTH = 60;
const int Cat2Localization::MAX_LINE_MODEL = 10;

Cat2Localization::Cat2Localization():nh_(ros::this_node::getName()),it_(nh_),
    // sw_sub_(nh_, "/v9_pillar_detector_node/segment_white",1),
    isg_sub_(nh_,"/v10_cat2_detector_node/inv_segment_green",1),
    fb_sub_(nh_,"/v10_cat2_detector_node/field_boundary",1),
    js_sub_(nh_,"/robotis/present_joint_states",1),
    #ifdef GAZEBO
    imu_sub_(nh_,"/robotis_op3/imu",1),
    #else
    imu_sub_(nh_,"/arduino_controller/imu",1),
    #endif
    input_sync_(SyncPolicy(10),isg_sub_,fb_sub_,js_sub_,imu_sub_),
    robot_state_pub_(nh_.advertise<geometry_msgs::PoseStamped > ("robot_state", 10)),
    // particles_state_pub_(nh_.advertise<vision_utils::Particles> ("particles_state", 10)),
    // features_pub_(nh_.advertise<vision_utils::Features > ("field_features", 10)),
    //present_joint_sub_ = nh_.subscribe("/robotis/present_joint_states",100,&Cat2Localization::presentJointStateCb,this);
    #ifdef GAZEBO
    //imu_data_sub_ = nh_.subscribe("/robotis_op3/imu",1,&Cat2Localization::imuDataCb,this);
    camera_info_sub_(nh_.subscribe("/robotis_op3/camera/camera_info",1,&Cat2Localization::cameraInfoCallback,this)),
    #else
    //imu_data_sub_ = nh_.subscribe("/arduino_controller/imu",1,&Cat2Localization::imuDataCb,this);
    camera_info_sub_(nh_.subscribe("/usb_cam/camera_info", 1, &Cat2Localization::cameraInfoCallback, this)),
    #endif
    // reset_particles_sub_(nh_.subscribe("/localization_monitor_node/reset_particles", 1, &Cat2Localization::resetParticlesCb, this)),
    // save_params_pillar_sub_(nh_.subscribe("/pillar_monitor_node/save_param", 1, &Cat2Localization::saveParamsPillarCb, this)),
    // line_tip_pub_(nh_.advertise<vision_utils::LineTip> ("line_tip", 10)),
    // save_params_square_sub_(nh_.subscribe("/monitor_line_square_node/save_param", 1, &Cat2Localization::saveParamslineCb, this)),
    square_pos_sub_(nh_.subscribe("/v10_cat2_detector_node/square_pos",1,&Cat2Localization::squarePosCb,this)),
    projected_square_pub_(nh_.advertise<geometry_msgs::Point>("projected_square",10)),
    projected_square_stamped_pub_(nh_.advertise<geometry_msgs::PointStamped >("stamped_projected_square", 10)),
    
    line_pos_sub_(nh_.subscribe("/v10_cat2_detector_node/line_pos",1,&Cat2Localization::linePosCb,this)),
    projected_line_pub_(nh_.advertise<geometry_msgs::Point>("projected_line",10)),
    projected_line_stamped_pub_(nh_.advertise<geometry_msgs::PointStamped >("stamped_projected_line", 10)),
    #ifdef GAZEBO
    odometry_sub_(nh_.subscribe("/robotis/pelvis_pose", 1, &Cat2Localization::odometryCb, this)),
    #else
    odometry_sub_(nh_.subscribe("/alfarobi/odometry", 100, &Cat2Localization::odometryCb, this)),
    robot_height_sub_(nh_.subscribe("/alfarobi/robot_height", 100, &Cat2Localization::robotHeightCb, this)),
    #endif
    isg_encoding_(Alfarobi::GRAY8Bit),
    // reset_particles_req_(false),
    // lost_features_(true),
    robot_height_(48.0f),
    gy_heading_(.0f),
    last_gy_heading_(.0f),
    imu_data_{.0, .0, .0},
    front_fall_limit_(.0),behind_fall_limit_(.0),
    right_fall_limit_(.0),left_fall_limit_(.0){

    nh_.param<double>("H_FOV",H_FOV, 61.25);
    nh_.param<double>("V_FOV",V_FOV, 47.88);
    nh_.param<double>("circle_cost", circle_cost, 6.0);
    nh_.param<double>("inlier_error", inlier_error, 1.0);
    nh_.param<double>("fx",fx_, 540.552005478);
    nh_.param<double>("fy",fy_, 540.571602012);
    nh_.param<double>("roll_offset",roll_offset_, .0);
    nh_.param<double>("pitch_offset",pitch_offset_, .0);
    nh_.param<double>("yaw_offset",yaw_offset_, .0);
    nh_.param<double>("tilt_limit",tilt_limit_, 30.0);
    nh_.param<double>("z_offset", z_offset_, .0);
    nh_.param<double>("pan_rot_comp", pan_rot_comp_, .0);
    nh_.param<double>("shift_const", shift_const_, -240.0);
    nh_.param<bool>("attack_dir", attack_dir_, false);

    roll_offset_ *= Math::DEG2RAD;
    pitch_offset_ *= Math::DEG2RAD;
    tilt_limit_ *= Math::DEG2RAD;
    H_FOV *= Math::DEG2RAD;
    V_FOV *= Math::DEG2RAD;
    pan_rot_comp_ *= Math::DEG2RAD;

    TAN_HFOV_PER2 = tan(H_FOV * 0.5);
    TAN_VFOV_PER2 = tan(V_FOV * 0.5);

    input_sync_.registerCallback(boost::bind(&Cat2Localization::utilsCallback, this, _1, _2, _3, _4));

    param_cb_ = boost::bind(&Cat2Localization::paramCallback, this, _1, _2);
    server_.setCallback(param_cb_);
    params_req_ = false;

    loadParams();
    initializeParticles();
    // initializeFieldFeaturesData();    
    genRadialPattern();
    initializeFK();
#ifdef DEBUG
    cv::namedWindow("DEBUG_VIZ");
    cv::createTrackbar("VIZ_MODE", "DEBUG_VIZ", &debug_viz_mode,5);
#endif
}

Cat2Localization::~Cat2Localization(){

}

//void Cat2Localization::presentJointStateCb(const sensor_msgs::JointStateConstPtr &_msg){

//}

void Cat2Localization::utilsCallback(
                                 const sensor_msgs::ImageConstPtr &_isg_msg,
                                 const vision_utils::FieldBoundary::ConstPtr &_fb_msg,
                                 const sensor_msgs::JointStateConstPtr &_js_msg,
                                 const sensor_msgs::ImuConstPtr &_imu_msg){
    try{
        //[HW] : Fix encoding type
        isg_encoding_ = (_isg_msg->encoding.compare(sensor_msgs::image_encodings::MONO8))?Alfarobi::BGR8Bit:Alfarobi::GRAY8Bit;
    }catch(cv_bridge::Exception &e){
        ROS_ERROR("[v9_localization] cv_bridge exception: %s",e.what());
    }

    cv_isg_ptr_sub_ = cv_bridge::toCvCopy(_isg_msg);
    field_boundary_.bound1 = _fb_msg->bound1;
    field_boundary_.bound2 = _fb_msg->bound2;

    int head_count = 0;
    for(size_t i=0;i<_js_msg->name.size() && head_count < 2;i++){
        if(_js_msg->name[i] == "head_pan"){
            pan_servo_angle_ = (_js_msg->position[i] * -1) + pan_servo_offset_;
            ++head_count;
        }
        if(_js_msg->name[i] == "head_tilt"){
#ifdef GAZEBO
            tilt_servo_angle_ = (_js_msg->position[i] * -1) - tilt_servo_offset_;
#else
            tilt_servo_angle_ = _js_msg->position[i] - tilt_servo_offset_; //from offset tuner
#endif
            ++head_count;
        }
    }

    Eigen::Quaterniond orientation;

    orientation.x() = _imu_msg->orientation.x;
    orientation.y() = _imu_msg->orientation.y;
    orientation.z() = _imu_msg->orientation.z;
    orientation.w() = _imu_msg->orientation.w;
    imu_data_ = robotis_framework::convertQuaternionToRPY(orientation);
#ifdef GAZEBO
    roll_compensation_ = -imu_data_.coeff(0) + roll_offset_;
    offset_head_ = imu_data_.coeff(1) + pitch_offset_;
//    offset_head_ = imu_data_.coeff(1);
    gy_heading_ = -imu_data_.coeff(2) * Math::RAD2DEG;
    if(gy_heading_ < 0)gy_heading_ = 360.0f + gy_heading_;
    odometer_out_.theta = (gy_heading_ - last_gy_heading_)*Math::DEG2RAD;
    last_gy_heading_ = gy_heading_;
#else
    roll_compensation_ = imu_data_.coeff(0) + roll_offset_;
    offset_head_ = -imu_data_.coeff(1) + pitch_offset_;
    gy_heading_ = -imu_data_.coeff(2) * Math::RAD2DEG + yaw_offset_;
    gy_heading_ = 360 - gy_heading_;// UNTUK ROBI YAW-NYA KEBALIK
    if(gy_heading_ < .0f)gy_heading_ = 360.0f + gy_heading_;
    odometer_out_.theta = (gy_heading_ - last_gy_heading_)*Math::DEG2RAD;
    last_gy_heading_ = gy_heading_;
#endif

    // Get header from one of the message

}

void Cat2Localization::paramCallback(v10_cat2_localization::Cat2LocalizationParamsConfig &_config, uint32_t level){
    (void)level;
    new_params_ = _config;
    params_req_ = true;
}

bool Cat2Localization::setInputImage(){

    if(cv_isg_ptr_sub_ != nullptr){
        
        invert_green_ = cv_isg_ptr_sub_->image;

        //[HW] : Fix encoding type
//        if(sw_encoding_ == Alfarobi::BGR8Bit)
//            cv::cvtColor(segmented_white_,segmented_white_,CV_BGR2GRAY);
//        if(isg_encoding_ == Alfarobi::BGR8Bit)
//            cv::cvtColor(invert_green_, invert_green_,CV_BGR2GRAY);

//        cv::erode(invert_green_,invert_green_,cv::getStructuringElement(cv::MORPH_RECT,cv::Size(3,3)));
//        cv::dilate(invert_green_,invert_green_,cv::getStructuringElement(cv::MORPH_RECT,cv::Size(3,3)));
//        cv::dilate(invert_green_,invert_green_,cv::getStructuringElement(cv::MORPH_RECT,cv::Size(3,3)));
//        cv::erode(invert_green_,invert_green_,cv::getStructuringElement(cv::MORPH_RECT,cv::Size(3,3)));

        return true;
    }else{
        return false;
    }
}



inline float Cat2Localization::panAngleDeviation(float _pixel_x_pos){
    return atan((2.0f * _pixel_x_pos/FRAME_WIDTH - 1.0f) * TAN_HFOV_PER2);
}

inline float Cat2Localization::tiltAngleDeviation(float _pixel_y_pos){
    return atan((2.0f * _pixel_y_pos/FRAME_HEIGHT - 1.0f) * TAN_VFOV_PER2);
}

inline float Cat2Localization::verticalDistance(float _tilt_dev){
    float total_tilt = Math::PI_TWO - (CAMERA_ORIENTATION.coeff(1) + _tilt_dev);
    // std::cout<<"Total_tilt before  : "<<total_tilt*(180/Math::PI)<<std::endl;
    total_tilt = total_tilt*(180/Math::PI);
    total_tilt = total_tilt * 0.815;
    total_tilt = total_tilt*(Math::PI/180);
    // std::cout<<"Total_tilt  : "<<total_tilt*(180/Math::PI)<<std::endl;
    return (robot_height_ + CAMERA_DIRECTION.coeff(2) + z_offset_) * tan(total_tilt);
}

inline float Cat2Localization::horizontalDistance(float _distance_y, float _offset_pan){
    return _distance_y * tan(_offset_pan);
}

void Cat2Localization::genRadialPattern(){
    for(int i = 1; i <= 10; i++){
        float angle_step = 360.0f/(8.0f*(float)i) * Math::DEG2RAD;
//        std::cout << "========================================" << std::endl;
        int total_nb = 8*i;
        for(int j=0;j<total_nb;j++){
            std::pair<int,int > nb_pattern;
            int radius=i;
            if(j <= total_nb/8)
                radius /= cos(angle_step*(float)j);
            else if (j <= (3*total_nb)/8)
                radius /= sin(angle_step*(float)j);
            else if (j <= (5*total_nb)/8)
                radius /= -cos(angle_step*(float)j);
            else if (j < (7*total_nb)/8)
                radius /= -sin(angle_step*(float)j);
            else
                radius /= cos(angle_step*(float)j);

            float est_x = (float)radius * cos(angle_step*(float)j);
            float est_y = (float)(-radius) * sin(angle_step*(float)j);
            // numerical error
            nb_pattern.first = est_x < -1e-4f ? std::floor(est_x):
                                                (est_x > 1e-4f ? std::ceil(est_x):std::abs(est_x));
            nb_pattern.second = est_y < -1e-4f ? std::floor(est_y):
                                                 (est_y > 1e-4f ? std::ceil(est_y):std::abs(est_y));
//            std::cout << est_x << " ; " << est_y << std::endl;
//            std::cout << nb_pattern.first << " ; " << nb_pattern.second << std::endl;
            radial_pattern_.push_back(nb_pattern);
        }
    }
}

//void Cat2Localization::resetParticles(Particles &_particles){
//    _particles.resize(params_.num_particles);
//    float uniform_weight = 1.0/params_.num_particles;
//    for(Particles::iterator it=_particles.begin();
//        it!=_particles.end();it++){
//        it->x = genUniIntDist(BORDER_STRIP_WIDTH, BORDER_STRIP_WIDTH + FIELD_LENGTH);
//        it->y = genUniIntDist(BORDER_STRIP_WIDTH, BORDER_STRIP_WIDTH + FIELD_WIDTH);
//        it->z = genUniIntDist(0, 360);
//        it->w = uniform_weight;
//    }
//}



Points Cat2Localization::pointsProjection(const Points &_points, bool pillar){
    Points projected_point;
    cv::Mat points_map = cv::Mat::zeros(POINTS_MAP_H, POINTS_MAP_W, CV_8UC1);
#ifdef DEBUG
    cv::Mat target_points_viz = cv::Mat::zeros(FRAME_HEIGHT, FRAME_WIDTH, CV_8UC1);
    cv::Mat unrotated_pm = points_map.clone();
    cv::Mat compensated = target_points_viz.clone();
    cv::Mat distorted_tp = target_points_viz.clone();
#endif
    constexpr int remap_x = POINTS_MAP_W >> 1;
    constexpr int remap_y = POINTS_MAP_H >> 2;

    constexpr float ctr_frame_x = FRAME_WIDTH >> 1;
    constexpr float ctr_frame_y = FRAME_HEIGHT >> 1;
    cv::Point2f center_frame(ctr_frame_x, ctr_frame_y);
    float K1 = camera_info_.D[0];
    float K2 = camera_info_.D[1];
    float K3 = camera_info_.D[4];
    float P1 = camera_info_.D[2];
    float P2 = camera_info_.D[3];
    float cx = camera_info_.K[2];
    float cy = camera_info_.K[5];
    float fx = camera_info_.K[0];
    float fy = camera_info_.K[4];
    float ctr_x = (center_frame.x - cx)/fx;
    float ctr_y = (center_frame.y - cy)/fy;

//    const float PI_2 = CV_PI/2;
    forwardKinematics();
    float c_roll_comp = cos(CAMERA_ORIENTATION.coeff(0));
    float s_roll_comp = sin(CAMERA_ORIENTATION.coeff(0));

    float c_pan_servo = cos(pan_servo_angle_ + pan_rot_comp_);//cos(CAMERA_ORIENTATION.coeff(2));
    float s_pan_servo = sin(pan_servo_angle_ + pan_rot_comp_);//sin(CAMERA_ORIENTATION.coeff(2));

    float shift_pixel = (shift_const_ + ctr_frame_y)*(1 - c_roll_comp);
    for(Points::const_iterator it=_points.begin();
        it != _points.end(); it++){        

        float xn = (it->x - cx)/fx;
        float yn = (it->y - cy)/fy;
        float diff_x = xn - ctr_x;
        float diff_y = yn - ctr_y;
        float rd_2 = diff_x*diff_x + diff_y*diff_y;
        float rd_4 = rd_2*rd_2;
        float rd_6 = rd_4*rd_2;
        float radial_distort = (1.0f + K1*rd_2 + K2*rd_4 + K3*rd_6);

        float undistort_x = xn*(radial_distort) +
                2.0f*P1*xn*yn + P2*(rd_2 + 2.0f*xn*xn);

        float undistort_y = yn*(radial_distort) +
                P1*(rd_2 + 2.0f*yn*yn) + 2.0f*P2*xn*yn;

        undistort_x = fx*undistort_x + cx;
        undistort_y = fy*undistort_y + cy;

        float trans_x = undistort_x - center_frame.x;
        float trans_y = undistort_y - center_frame.y;

    //   float trans_x = it->x - center_frame.x;
    //   float trans_y = it->y - center_frame.y;

        //projection start here

//        float compensated_x = center_frame.x + trans_x*cos(roll_compensation_) + trans_y*sin(roll_compensation_);
//        float compensated_y = center_frame.y - trans_x*sin(roll_compensation_) + trans_y*cos(roll_compensation_);

//        float roll_comp = (1 - fabs(pan_servo_angle_)/PI_2)*roll_compensation_ + (pan_servo_angle_/PI_2) * offset_head_;
//        float roll_comp = cos(pan_servo_angle_)*roll_compensation_ + sin(pan_servo_angle_)*offset_head_;

        float compensated_x = center_frame.x + trans_x*c_roll_comp + trans_y*s_roll_comp + shift_pixel;
        float compensated_y = center_frame.y - trans_x*s_roll_comp + trans_y*c_roll_comp + shift_pixel;

//        float offset_pan = panAngleDeviation(undistort_x);
//        float offset_tilt = tiltAngleDeviation(undistort_y);

        float offset_pan = panAngleDeviation(compensated_x);
        float offset_tilt = tiltAngleDeviation(compensated_y);

//        float distance_y = verticalDistance(offset_tilt);
        float distance_y = verticalDistance(offset_tilt);
        float distance_x = horizontalDistance(distance_y, offset_pan);
        // std::cout << "OP : " << offset_pan << std::endl;
        // std::cout << " X : " << distance_x << " ; Y : " << distance_y << std::endl;

        if(sqrt(distance_x*distance_x + distance_y*distance_y) < 55.0 && !pillar)//ignore feature in less than 55 cm
            continue;

        float rotated_x = distance_x*c_pan_servo + distance_y*s_pan_servo;
        float rotated_y = (-distance_x*s_pan_servo + distance_y*c_pan_servo)*2;

        // Robot local coordinate in real world

        cv::Point local_coord(rotated_x, rotated_y);

        int mapped_x = remap_x + local_coord.x;
        int mapped_y = remap_y + local_coord.y;
#ifdef DEBUG
        target_points_viz.at<uchar>(it->y,it->x) = 255;
        if(compensated_x > 0 && compensated_x < target_points_viz.cols &&
           compensated_y > 0 && compensated_y < target_points_viz.rows &&
           debug_viz_mode == 4)
            compensated.at<uchar>(compensated_y,compensated_x) = 255;
#endif
        if(mapped_x < 0 || mapped_x >= POINTS_MAP_W ||
           mapped_y < 0 || mapped_y >= POINTS_MAP_H ||
           points_map.at<uchar>(mapped_y, mapped_x) > 0){
            continue;
        }

#ifdef DEBUG
        int map_unrotate_x = remap_x + distance_x;
        int map_unrotate_y = remap_y + distance_y;
        if(map_unrotate_x > 0 && map_unrotate_x < POINTS_MAP_W &&
           map_unrotate_y > 0 && map_unrotate_y < POINTS_MAP_H &&
           debug_viz_mode == 3)
            unrotated_pm.at<uchar>(map_unrotate_y, map_unrotate_x) = 255;
            
        if(undistort_x > 0 && undistort_x < target_points_viz.cols &&
           undistort_y > 0 && undistort_y < target_points_viz.rows &&
           debug_viz_mode == 5)
            distorted_tp.at<uchar>(undistort_y,undistort_x) = 255;
#endif

        projected_point.push_back(local_coord);
        points_map.at<uchar>(mapped_y, mapped_x) = 255;
        
//        cv::circle(draw,cv::Point(,),1,cv::Scalar(255),CV_FILLED);
    }
#ifdef DEBUG
    if(!pillar){
        switch(debug_viz_mode){
            case 0:debug_viz_ = target_points_viz.clone();break;
            case 1:debug_viz_ = points_map.clone();break;
            case 3:debug_viz_ = unrotated_pm.clone();break;
            case 4:debug_viz_ = compensated.clone();break;
            case 5:debug_viz_ = distorted_tp.clone();break;
            default:break;
        }
    }
#endif
//     cv::imshow("Projected Points",points_map);
//     cv::imshow("Target Points",target_points_viz);


    return projected_point;
}

Points Cat2Localization::fastPointsProjection(const Points &_points, bool pillar){
    Points projected_point;
    cv::Mat points_map = cv::Mat::zeros(POINTS_MAP_H, POINTS_MAP_W, CV_8UC1);
#ifdef DEBUG
    cv::Mat target_points_viz = cv::Mat::zeros(FRAME_HEIGHT, FRAME_WIDTH,CV_8UC1);
#endif
    constexpr int remap_x = POINTS_MAP_W >> 1;
    constexpr int remap_y = POINTS_MAP_H >> 2;

    constexpr float ctr_frame_x = FRAME_WIDTH >> 1;
    constexpr float ctr_frame_y = FRAME_HEIGHT >> 1;
    cv::Point2f center_frame(ctr_frame_x, ctr_frame_y);

    __m256 K1 = _mm256_set1_ps(camera_info_.D[0]);
    __m256 K2 = _mm256_set1_ps(camera_info_.D[1]);
    __m256 K3 = _mm256_set1_ps(camera_info_.D[4]);
    __m256 P1 = _mm256_set1_ps(camera_info_.D[2]);
    __m256 P2 = _mm256_set1_ps(camera_info_.D[3]);

    float s_cx = camera_info_.K[2];
    __m256 cx = _mm256_set1_ps(s_cx);
    float s_cy = camera_info_.K[5];
    __m256 cy = _mm256_set1_ps(s_cy);
    float s_fx = camera_info_.K[0];
    __m256 fx = _mm256_set1_ps(s_fx);
    float s_fy = camera_info_.K[4];
    __m256 fy = _mm256_set1_ps(s_fy);
    float s_ctr_x = (center_frame.x - s_cx)/s_fx;
    __m256 ctr_x = _mm256_set1_ps(s_ctr_x);
    float s_ctr_y = (center_frame.y - s_cy)/s_fy;
    __m256 ctr_y = _mm256_set1_ps(s_ctr_y);

//    __m256 const_one = _mm256_set1_ps(1.0);
//    const float PI_2 = CV_PI/2;
    forwardKinematics();
    float c_roll_comp = cos(CAMERA_ORIENTATION.coeff(0));
    float s_roll_comp = sin(CAMERA_ORIENTATION.coeff(0));

    float c_pan_servo = cos(pan_servo_angle_ + pan_rot_comp_);//cos(CAMERA_ORIENTATION.coeff(2));
    float s_pan_servo = sin(pan_servo_angle_ + pan_rot_comp_);//sin(CAMERA_ORIENTATION.coeff(2));
//    int new_size = (int)_points.size() - (int)_points.size()%8;
    int curr_idx = 0;
    int sz_bound = 0;

    for(int i = 0; i < (int)_points.size(); i+=8){
       auto mem1 = boost::alignment::aligned_alloc(32, 64 * sizeof(float));
       float* mem1_specific = new(mem1) float;
       auto mem2 = boost::alignment::aligned_alloc(32, 64 * sizeof(float));
       float* mem2_specific = new(mem2) float;
       std::unique_ptr<float[], boost::alignment::aligned_delete > arr_x(mem1_specific);
       std::unique_ptr<float[], boost::alignment::aligned_delete > arr_y(mem2_specific);

        for(int j = 0; j < 8; j++){
            curr_idx = i + j;
            sz_bound = (int)(curr_idx < _points.size());
            curr_idx *= sz_bound;
            arr_x.get()[j] = sz_bound * _points[curr_idx].x;
            arr_y.get()[j] = sz_bound * _points[curr_idx].y;
//            std::cout << cv::Point(arr_x[j], arr_y[j]) << std::endl;
        }
        __m256 xn = _mm256_load_ps(arr_x.get());
        __m256 yn = _mm256_load_ps(arr_y.get());
//        __m256 xn = _mm256_set_ps(x1,x2,x3,x4,x5,x6,x7,x8);
//        __m256 yn = _mm256_set_ps(y1,y2,y3,y4,y5,y6,y7,y8);

        __m256 x_norm = _mm256_div_ps(_mm256_sub_ps(xn, cx), fx);
        __m256 y_norm = _mm256_div_ps(_mm256_sub_ps(yn, cy), fy);

        __m256 diff_x = _mm256_sub_ps(x_norm, ctr_x);
        __m256 diff_y = _mm256_sub_ps(y_norm, ctr_y);

        __m256 rd_2 = _mm256_add_ps(_mm256_mul_ps(diff_x, diff_x), _mm256_mul_ps(diff_y, diff_y));
        __m256 rd_4 = _mm256_mul_ps(rd_2, rd_2);
        __m256 rd_6 = _mm256_mul_ps(rd_4, rd_2);

        __m256 radial_distort = _mm256_add_ps(_mm256_add_ps(
                                _mm256_add_ps(_mm256_set1_ps(1.0f),
                                _mm256_mul_ps(K1, rd_2)),
                                _mm256_mul_ps(K2, rd_4)),
                                _mm256_mul_ps(K3, rd_6));

        __m256 xy_norm = _mm256_mul_ps(x_norm, y_norm);

        __m256 xterm1 = _mm256_mul_ps(x_norm, radial_distort);
        __m256 xterm2 = _mm256_mul_ps(_mm256_mul_ps(_mm256_set1_ps(2.0f), P1), xy_norm);
        __m256 xterm3 = _mm256_mul_ps(P2, _mm256_add_ps(rd_2, _mm256_mul_ps(_mm256_set1_ps(2.0f), _mm256_mul_ps(x_norm, x_norm))));

        __m256 new_x = _mm256_add_ps(xterm1, _mm256_add_ps(xterm2, xterm3));

        __m256 yterm1 = _mm256_mul_ps(y_norm, radial_distort);
        __m256 yterm2 = _mm256_mul_ps(P1, _mm256_add_ps(rd_2, _mm256_mul_ps(_mm256_set1_ps(2.0f), _mm256_mul_ps(y_norm, y_norm))));
        __m256 yterm3 = _mm256_mul_ps(_mm256_mul_ps(_mm256_set1_ps(2.0f), P2), xy_norm);

        __m256 new_y = _mm256_add_ps(yterm1, _mm256_add_ps(yterm2, yterm3));

        __m256 undistort_x = _mm256_fmadd_ps(fx, new_x, cx);
        __m256 undistort_y = _mm256_fmadd_ps(fy, new_y, cy);

        __m256 trans_x = _mm256_sub_ps(undistort_x, _mm256_set1_ps((float)center_frame.x));
        __m256 trans_y = _mm256_sub_ps(undistort_y, _mm256_set1_ps((float)center_frame.y));

        float* arr_trans_x = (float*)&trans_x;
        float* arr_trans_y = (float*)&trans_y;
        for(int j = 0; j < 8; j++){
            float compensated_x = center_frame.x + arr_trans_x[j]*c_roll_comp + arr_trans_y[j]*s_roll_comp;
            float compensated_y = center_frame.y - arr_trans_x[j]*s_roll_comp + arr_trans_y[j]*c_roll_comp;

            float offset_pan = panAngleDeviation(compensated_x);
            float offset_tilt = tiltAngleDeviation(compensated_y);

            float distance_y = verticalDistance(offset_tilt);
            float distance_x = horizontalDistance(distance_y, offset_pan);

            if(sqrt(distance_x*distance_x + distance_y*distance_y) < 55.0 && !pillar)//ignore feature in less than 55 cm
                continue;

            float rotated_x = distance_x*c_pan_servo + distance_y*s_pan_servo;
            float rotated_y = -distance_x*s_pan_servo + distance_y*c_pan_servo;

            // Robot local coordinate in real world

            cv::Point local_coord(rotated_x, rotated_y);

            int mapped_x = remap_x + local_coord.x;
            int mapped_y = remap_y + local_coord.y;
#ifdef DEBUG
            curr_idx = i+j;
            sz_bound = (int)(curr_idx < _points.size());
            if(sz_bound)target_points_viz.at<uchar>(_points[curr_idx].y, _points[curr_idx].x) = 255;
#endif
            if(mapped_x < 0 || mapped_x >= POINTS_MAP_W ||
               mapped_y < 0 || mapped_y >= POINTS_MAP_H ||
               points_map.at<uchar>(mapped_y, mapped_x) > 0)
                continue;

            projected_point.push_back(local_coord);
            points_map.at<uchar>(mapped_y, mapped_x) = 255;
        }        
//        (void)arr_x;
//        (void)arr_y;
    }
#ifdef DEBUG
    if(!pillar){
        switch(debug_viz_mode){
        case 0:debug_viz_ = target_points_viz.clone();break;
        case 1:debug_viz_ = points_map.clone();break;
        default:break;
        }
    }
#endif

    return projected_point;
}

inline void Cat2Localization::arrangeTargetPoints(Points &_target_points){
    for(size_t i = 0; i < _target_points.size(); i++){
        for(size_t j = i+1; j < _target_points.size(); j++){
            if(_target_points[i].x > _target_points[j].x){
                _target_points[i] = _target_points[i] + _target_points[j];
                _target_points[j] = _target_points[i] - _target_points[j];
                _target_points[i] = _target_points[i] - _target_points[j];
            }else if(_target_points[i].x == _target_points[j].x){
                if(_target_points[i].y > _target_points[j].y){
                    _target_points[i] = _target_points[i] + _target_points[j];
                    _target_points[j] = _target_points[i] - _target_points[j];
                    _target_points[i] = _target_points[i] - _target_points[j];
                }
            }
        }
    }
}

float Cat2Localization::calcShootDir(const cv::Point2f &_pillar_pos){//global pillar pos
    // cv::Point2f goal_post1((attack_dir_?landmark_pos_[1][0]:landmark_pos_[1][4]) * 100.0f);
    // cv::Point2f goal_post2((attack_dir_?landmark_pos_[1][1]:landmark_pos_[1][5]) * 100.0f);
    constexpr float goal_postx = FIELD_LENGTH + BORDER_STRIP_WIDTH;
    constexpr float goal_posty1 = BORDER_STRIP_WIDTH + (FIELD_WIDTH - GOAL_WIDTH) * .5f;
    constexpr float goal_posty2 = BORDER_STRIP_WIDTH + (FIELD_WIDTH + GOAL_WIDTH) * .5f;
    cv::Point2f goal_post1(goal_postx, goal_posty1);
    cv::Point2f goal_post2(goal_postx, goal_posty2);
    constexpr float END_OF_XMONITOR = (float)(FIELD_LENGTH + (BORDER_STRIP_WIDTH << 1));
    constexpr float center_goal_y = (goal_posty1 + goal_posty2) * .5f;
    cv::Point2f center_goal(END_OF_XMONITOR, center_goal_y);

    constexpr float GK_OCCUPANCY = 80.0f;
    constexpr float HALF_GK_OCCUPANCY = GK_OCCUPANCY * .5f;
    cv::Point2f zero_dir_area1_tl(goal_post1.x - PENALTY_MARK_DISTANCE, goal_post1.y);
    cv::Point2f zero_dir_area1_br(goal_post1.x, center_goal.y - HALF_GK_OCCUPANCY);

    cv::Point2f zero_dir_area2_tl(goal_post2.x - PENALTY_MARK_DISTANCE, center_goal.y + HALF_GK_OCCUPANCY);
    cv::Point2f zero_dir_area2_br(goal_post2.x, goal_post2.y);

//    std::cout << zero_dir_area1_tl << " ; " << zero_dir_area1_br << std::endl;
//    std::cout << zero_dir_area2_tl << " ; " << zero_dir_area2_br << std::endl;

    if((_pillar_pos.x > zero_dir_area1_tl.x && _pillar_pos.x < zero_dir_area1_br.x &&
        _pillar_pos.y > zero_dir_area1_tl.y && _pillar_pos.y < zero_dir_area1_br.y) ||
            (_pillar_pos.x > zero_dir_area2_tl.x && _pillar_pos.x < zero_dir_area2_br.x &&
             _pillar_pos.y > zero_dir_area2_tl.y && _pillar_pos.y < zero_dir_area2_br.y) ||
            resetting_particle_){
        return 360.0f;
    }

    cv::Point2f gk_avoidance_area_tl(center_goal.x - PENALTY_MARK_DISTANCE - BORDER_STRIP_WIDTH, center_goal.y - HALF_GK_OCCUPANCY);
    cv::Point2f gk_avoidance_area_br(center_goal.x - BORDER_STRIP_WIDTH, center_goal.y + HALF_GK_OCCUPANCY);

//    std::cout << gk_avoidance_area_tl << " ; " << gk_avoidance_area_br << std::endl;

    if((_pillar_pos.x >= gk_avoidance_area_tl.x && _pillar_pos.x <= gk_avoidance_area_br.x &&
        _pillar_pos.y >= gk_avoidance_area_tl.y && _pillar_pos.y <= gk_avoidance_area_br.y)){

        float robot_theta = robot_state_.theta;

        if(robot_theta < .0f)robot_theta = 360.0f + robot_theta;
        bool target_cond = robot_theta > 180.0 && robot_theta < 360.0;
        constexpr float HALF_GOAL_WIDTH = GOAL_WIDTH * .5f;
        cv::Point2f target_goal(center_goal.x - BORDER_STRIP_WIDTH, center_goal.y + (target_cond ? -HALF_GOAL_WIDTH : HALF_GOAL_WIDTH));

        float target_dir = atan2(target_goal.y - _pillar_pos.y, target_goal.x - _pillar_pos.x) * Math::RAD2DEG;
        if(target_dir < .0f)target_dir = 360.0f + target_dir;
        return target_dir;
    }

    //Shooting Dir First Style
//    cv::Point2f avoidance_gk_area1_tl(center_goal.x - PENALTY_MARK_DISTANCE - BORDER_STRIP_WIDTH, center_goal.y - (GK_OCCUPANCY * 0.5f));
//    cv::Point2f avoidance_gk_area1_br(center_goal.x, center_goal.y);

//    cv::Point2f avoidance_gk_area2_tl(center_goal.x - PENALTY_MARK_DISTANCE - BORDER_STRIP_WIDTH, center_goal.y);
//    cv::Point2f avoidance_gk_area2_br(center_goal.x, center_goal.y + (GK_OCCUPANCY * 0.5f));

//    if((_pillar_pos.x >= avoidance_gk_area1_tl.x && _pillar_pos.x <= avoidance_gk_area1_br.x &&
//        _pillar_pos.y >= avoidance_gk_area1_tl.y && _pillar_pos.y <= avoidance_gk_area1_br.y)){
//        cv::Point2f target_goal(center_goal.x, center_goal.y + GOAL_WIDTH * 0.5f);
//        float target_dir = atan2(target_goal.y - _pillar_pos.y, target_goal.x - _pillar_pos.x) * Math::RAD2DEG;
//        if(target_dir < .0f)target_dir = 360.0f + target_dir;
//        return target_dir;
//    }

//    if((_pillar_pos.x > avoidance_gk_area2_tl.x && _pillar_pos.x < avoidance_gk_area2_br.x &&
//        _pillar_pos.y > avoidance_gk_area2_tl.y && _pillar_pos.y < avoidance_gk_area2_br.y)){
//        cv::Point2f target_goal(center_goal.x, center_goal.y - GOAL_WIDTH * 0.5f);
//        float target_dir = atan2(target_goal.y - _pillar_pos.y, target_goal.x - _pillar_pos.x) * Math::RAD2DEG;
//        if(target_dir < .0f)target_dir = 360.0f + target_dir;
//        return target_dir;
//    }

//==============
    float goal_width = fabs(goal_post1.y - goal_post2.y);
    float diff_x1 = _pillar_pos.x - goal_post1.x;
    float diff_y1 = _pillar_pos.y - goal_post1.y;
    float diff_x2 = _pillar_pos.x - goal_post2.x;
    float diff_y2 = _pillar_pos.y - goal_post2.y;
    float dist_to_post1 = sqrt(diff_x1*diff_x1 + diff_y1*diff_y1);
    float dist_to_post2 = sqrt(diff_x2*diff_x2 + diff_y2*diff_y2);
    float angle_interval = (dist_to_post1*dist_to_post1 + dist_to_post2*dist_to_post2 - goal_width*goal_width)/
            (2.0f * dist_to_post1*dist_to_post2);
    angle_interval = acos(angle_interval);
//    float center_dir = (attack_dir_?CV_PI - atan2(center_goal.y - _pillar_pos.y,_pillar_pos.x - center_goal.x):
//      atan2(center_goal.y - _pillar_pos.y,center_goal.x - _pillar_pos.x))*Math::RAD2DEG;
    float center_dir = atan2(center_goal.y - _pillar_pos.y, center_goal.x - _pillar_pos.x) * Math::RAD2DEG;
    if(center_dir < .0f)center_dir = 360.0f + center_dir;

//    std::cout << "Center Dir : " << center_dir << std::endl;
    //not yet added random dir, but the interval is already
    return center_dir;
}

void Cat2Localization::publishData(){
    geometry_msgs::PoseStamped robot_state_msg;
    robot_state_msg.pose.position.x = robot_state_.x ;
    robot_state_msg.pose.position.y = robot_state_.y ;
    robot_state_msg.pose.orientation.z = robot_state_.theta;
    robot_state_msg.header.stamp = this->stamp_;
    robot_state_msg.header.seq++;


    // geometry_msgs::PointStamped proj_pillar_stamped_msg;
    // proj_pillar_stamped_msg.header.stamp = this->stamp_;
    // proj_pillar_stamped_msg.header.seq++;
    // geometry_msgs::Point pillar_pos_msg;
    // pillar_pos_msg.z = -1.0;
    // proj_pillar_stamped_msg.point = pillar_pos_msg;

    // if(pillar_pos_.x != -1.0 &&
    //     pillar_pos_.y != -1.0){
    //     Points pillar_pos;
    //     pillar_pos.emplace_back(cv::Point(pillar_pos_.x,pillar_pos_.y));
    //     pillar_pos = pointsProjection(pillar_pos, true);

    //     if(pillar_pos.size() > 0){

    //         float c_t = cos(robot_state_.theta * Math::DEG2RAD);
    //         float s_t = sin(robot_state_.theta * Math::DEG2RAD);
    //         float shoot_dir = calcShootDir(cv::Point2f(robot_state_.x + pillar_pos.front().y*c_t - pillar_pos.front().x*s_t,
    //                                  robot_state_.y + pillar_pos.front().y*s_t + pillar_pos.front().x*c_t));

    //         pillar_pos_msg.x = pillar_pos.front().y;
    //         pillar_pos_msg.y = -pillar_pos.front().x;
    //         pillar_pos_msg.z = shoot_dir;
    //         projected_pillar_pub_.publish(pillar_pos_msg);

    //         proj_pillar_stamped_msg.point.x = pillar_pos.front().x;
    //         proj_pillar_stamped_msg.point.y = pillar_pos.front().y;
    //         proj_pillar_stamped_msg.point.z = shoot_dir;
    //     }
    // }

    geometry_msgs::PointStamped proj_square_stamped_msg;
    proj_square_stamped_msg.header.stamp = this->stamp_;
    proj_square_stamped_msg.header.seq++;
    geometry_msgs::Point square_pos_msg;
    square_pos_msg.z = -1.0;
    proj_square_stamped_msg.point = square_pos_msg;

    if(square_pos_.x != -1.0 &&
        square_pos_.y != -1.0){
        Points square_pos;
        square_pos.emplace_back(cv::Point(square_pos_.x,square_pos_.y));
        square_pos = pointsProjection(square_pos, true);

        if(square_pos.size() > 0){

            float c_t = cos(robot_state_.theta * Math::DEG2RAD);
            float s_t = sin(robot_state_.theta * Math::DEG2RAD);
            float shoot_dir = calcShootDir(cv::Point2f(robot_state_.x + square_pos.front().y*c_t - square_pos.front().x*s_t,
                                     robot_state_.y + square_pos.front().y*s_t + square_pos.front().x*c_t));

            square_pos_msg.x = square_pos.front().y;
            square_pos_msg.y = -square_pos.front().x;
            square_pos_msg.z = 0;
            projected_square_pub_.publish(square_pos_msg);

            proj_square_stamped_msg.point.x = square_pos.front().x;
            proj_square_stamped_msg.point.y = square_pos.front().y;
            proj_square_stamped_msg.point.z = shoot_dir;
        }
    }

    geometry_msgs::PointStamped proj_line_stamped_msg;
    proj_line_stamped_msg.header.stamp = this->stamp_;
    proj_line_stamped_msg.header.seq++;
    geometry_msgs::Point line_pos_msg;
    line_pos_msg.z = -1.0;
    proj_line_stamped_msg.point = line_pos_msg;

    if(line_pos_.x != -1.0 &&
        line_pos_.y != -1.0){
        Points line_pos;
        line_pos.emplace_back(cv::Point(line_pos_.x,line_pos_.y));
        line_pos = pointsProjection(line_pos, true);

        if(line_pos.size() > 0){

            float c_t = cos(robot_state_.theta * Math::DEG2RAD);
            float s_t = sin(robot_state_.theta * Math::DEG2RAD);
            float shoot_dir = calcShootDir(cv::Point2f(robot_state_.x + line_pos.front().y*c_t - line_pos.front().x*s_t,
                                     robot_state_.y + line_pos.front().y*s_t + line_pos.front().x*c_t));

            line_pos_msg.x = line_pos.front().y;
            line_pos_msg.y = -line_pos.front().x;
            line_pos_msg.z = shoot_dir;
            projected_line_pub_.publish(line_pos_msg);

            proj_line_stamped_msg.point.x = line_pos.front().x;
            proj_line_stamped_msg.point.y = line_pos.front().y;
            proj_line_stamped_msg.point.z = shoot_dir;
        }
    }

    // geometry_msgs::PointStamped proj_goalpost_stamped_msg;
    // proj_goalpost_stamped_msg.header.stamp = this->stamp_;
    // proj_goalpost_stamped_msg.header.seq++;
    // geometry_msgs::Point goalpost_pos_msg;
    // goalpost_pos_msg.z = -1.0;
    // proj_goalpost_stamped_msg.point = goalpost_pos_msg;

    // if(goalpost_pos_.x != -1.0 &&
    //     goalpost_pos_.y != -1.0){
    //     Points goalpost_pos;
    //     goalpost_pos.emplace_back(cv::Point(goalpost_pos_.x,goalpost_pos_.y));
    //     goalpost_pos = pointsProjection(goalpost_pos, true);

    //     if(goalpost_pos.size() > 0){

    //         float c_t = cos(robot_state_.theta * Math::DEG2RAD);
    //         float s_t = sin(robot_state_.theta * Math::DEG2RAD);
    //         float shoot_dir = calcShootDir(cv::Point2f(robot_state_.x + goalpost_pos.front().y*c_t - goalpost_pos.front().x*s_t,
    //                                  robot_state_.y + goalpost_pos.front().y*s_t + goalpost_pos.front().x*c_t));

    //         goalpost_pos_msg.x = goalpost_pos.front().y;
    //         goalpost_pos_msg.y = -goalpost_pos.front().x;
    //         goalpost_pos_msg.z = shoot_dir;
    //         projected_goalpost_pub_.publish(goalpost_pos_msg);

    //         proj_goalpost_stamped_msg.point.x = goalpost_pos.front().x;
    //         proj_goalpost_stamped_msg.point.y = goalpost_pos.front().y;
    //         proj_goalpost_stamped_msg.point.z = shoot_dir;
    //     }
    // }
    


    // geometry_msgs::PointStamped proj_ball_stamped_msg;
    // proj_ball_stamped_msg.header.stamp = this->stamp_;
    // proj_ball_stamped_msg.header.seq++;
    // geometry_msgs::Point ball_pos_msg;
    // ball_pos_msg.z = -1.0;
    // proj_ball_stamped_msg.point = ball_pos_msg;
    //         // std::cout<<"BALL POS X  : "<<ball_pos_.x<<std::endl;

    // if(ball_pos_.x != -1.0 &&
    //     ball_pos_.y != -1.0){
    //     Points ball_pos;
    //     ball_pos.emplace_back(cv::Point(ball_pos_.x,ball_pos_.y));
    //     ball_pos = pointsProjection(ball_pos, true);

    //     if(ball_pos.size() > 0){

    //         float c_t = cos(robot_state_.theta * Math::DEG2RAD);
    //         float s_t = sin(robot_state_.theta * Math::DEG2RAD);
    //         float shoot_dir = calcShootDir(cv::Point2f(robot_state_.x + ball_pos.front().y*c_t - ball_pos.front().x*s_t,
    //                                  robot_state_.y + ball_pos.front().y*s_t + ball_pos.front().x*c_t));

    //         ball_pos_msg.x = ball_pos.front().y;
    //         ball_pos_msg.y = -ball_pos.front().x;
    //         ball_pos_msg.z = shoot_dir;
    //         projected_ball_pub_.publish(ball_pos_msg);

    //         proj_ball_stamped_msg.point.x = ball_pos.front().x;
    //         proj_ball_stamped_msg.point.y = ball_pos.front().y;
    //         proj_ball_stamped_msg.point.z = shoot_dir;
    //     }
    // }

    robot_state_pub_.publish(robot_state_msg);
    // features_pub_.publish(features_);
    // projected_pillar_stamped_pub_.publish(proj_pillar_stamped_msg);
    projected_square_stamped_pub_.publish(proj_square_stamped_msg);
    // projected_goalpost_stamped_pub_.publish(proj_goalpost_stamped_msg);
    // projected_ball_stamped_pub_.publish(proj_ball_stamped_msg);
    projected_line_stamped_pub_.publish(proj_line_stamped_msg);
}

void Cat2Localization::sampleMotionModelOdometry(
        Particles &_particles_state,
        const geometry_msgs::Pose2D &_odometer_out){
    bool idle = odometer_buffer_.size() == 0;
    
    float diff_x = .0f;
    float diff_y = .0f;
    
    if(!idle){
        diff_x = odometer_buffer_.front().x;
        diff_y = -odometer_buffer_.front().y;
    }

    float drot1 = atan2(diff_x, -diff_y);// + gy_heading_*Math::DEG2RAD;
    float dtrans = sqrt(diff_x*diff_x + diff_y*diff_y);
    float drot2 = _odometer_out.theta; //- drot1;

    //temporarily not yet use motion noise
//    float drot1_sqr = drot1*drot1;
//    float dtrans_sqr = dtrans*dtrans;
//    float drot2_sqr = drot2*drot2;

    double noise_std_dev = features_present_ > 0 ? 1.75 : .0;//std::min(3,features_present_);

    for(Particles::iterator it=_particles_state.begin();
        it!=_particles_state.end();it++){
//        if(it->z < 0)it->z = 360 + it->z;
        float drot1_hat = drot1 ;//- sampleNormal(params_.alpha1*drot1_sqr + params_.alpha2*dtrans_sqr);
        float dtrans_hat = dtrans ;//- sampleNormal(params_.alpha3*dtrans_sqr + params_.alpha4*drot1_sqr + params_.alpha4*drot2_sqr);
        float drot2_hat = drot2 ;//- sampleNormal(params_.alpha1*drot2_sqr + params_.alpha2*dtrans_sqr);
        drot1_hat *= Math::RAD2DEG;
        drot2_hat *= Math::RAD2DEG;

//        if(dtrans_hat > 0.0)std::cout << "ROT1_HAT : " << drot1_hat << " ; TRANS_HAT : " << dtrans_hat << " ; ROT2_HAT : " << drot2_hat << std::endl;
        float tetha = (it->z /*+ drot1_hat*/)*Math::DEG2RAD;
        //Posterior Pose
//        it->x = it->x + dtrans_hat*cos(tetha) + features_present_ * (idle ? genNormalDist(0,0.5) : 0);
//        it->y = it->y + dtrans_hat*sin(tetha) + features_present_ * (idle ? genNormalDist(0,0.5) : 0);
//        it->z = it->z + /*drot1_hat +*/ drot2_hat + features_present_ * (idle ? genNormalDist(0,1) : 0);
        it->x = it->x + dtrans_hat*cos(tetha) + genNormalDist(.0, noise_std_dev);
        it->y = it->y + dtrans_hat*sin(tetha) + genNormalDist(.0, noise_std_dev);
        it->z = it->z + /*drot1_hat +*/ drot2_hat + genNormalDist(.0, noise_std_dev);
        if(it->z < .0)it->z = 360.0 + it->z;
    }

    odometer_out_.theta = .0;
}

void Cat2Localization::measurementModel(Particles &_particles_state,
                                    vision_utils::Features _features_arg,
                                    float &_weight_avg){
    if(_features_arg.feature.size() == 0){
//        float uniform_weight = 1.0/params_.num_particles;
//        for(Particles::iterator it = _particles_state.begin();
//            it != _particles_state.end(); it++){
//            it->w = uniform_weight;
//        }
        // _weight_avg = uniform_weight;
        _weight_avg = last_weight_avg_;
        return;
    }

    vision_utils::Features _features = _features_arg;
    for(std::vector<vision_utils::Feature>::iterator it = _features.feature.begin();
        it != _features.feature.end(); it++){
        it->param1 *= .01f;
        it->param2 *= .01f;
        it->param3 *= .01f;
        it->param4 *= .01f;

//        std::cout << "Param 4 : " << it->param4 << std::endl;
//        std::cout << "ORIENTATION : "  << it->orientation  << std::endl;
        it->orientation *= Math::DEG2RAD;
    }

    float total_weight = .0f;
//     float minimum_weight = std::numeric_limits<float>::max();
//    float max_weight = std::numeric_limits<float>::min();
//    int num_features = _features.feature.size();
//    float max_weight = 0;
    cv::Vec3f top3_weight = {.0f, .0f, .0f};
    bool acquisition[3] = {false, false, false};
    //Range, Beam, Correspondence
    Vecs4 weight_param(_features.feature.size());
    for(Particles::iterator it = _particles_state.begin();
        it != _particles_state.end(); it++){
//        std::cout << it->z << std::endl;        

//        bool segline_used[11] = {false,false,false,false,false,
//                                 false,false,false,false,false,false};
        float pos_x = it->x * .01f;
        float pos_y = it->y * .01f;
        float tetha =  it->z * Math::DEG2RAD;
        float c_t = cos(tetha);
        float s_t = sin(tetha);
        for(std::pair<std::vector<vision_utils::Feature>::iterator,
            Vecs4::iterator > it_pair(_features.feature.begin(), weight_param.begin());
            it_pair.first != _features.feature.end();
            it_pair.first++, it_pair.second++){

            int feature_type = it_pair.first->feature_type;
            (*it_pair.second)[0] = FIELD_LENGTH;
            (*it_pair.second)[1] = Math::PI_TWO;
            (*it_pair.second)[2] = .0f;
            (*it_pair.second)[3] = -1.0f; // Unknown Feature

            if(feature_type < 4){//L, T, X, circle landmark                
                float optimal_diff = std::numeric_limits<float>::max();
                for(size_t j = 0; j< landmark_pos_[feature_type].size(); j++){
                    float delta_x = (landmark_pos_[feature_type][j].x - pos_x);
                    float delta_y = (landmark_pos_[feature_type][j].y - pos_y);
                    float feature_dist = sqrt(delta_x*delta_x + delta_y*delta_y);
                    float diff = std::fabs(feature_dist - it_pair.first->param4);
                    if(diff < optimal_diff){                        
                        (*it_pair.second)[0] = diff;
                        float beam_dev = atan2(delta_y,delta_x);
                        int map_tetha = tetha > Math::PI ? (tetha-Math::TWO_PI) : tetha;
                        beam_dev = beam_dev - map_tetha;
//                        if(beam_dev < 0)beam_dev = Math::TWO_PI + beam_dev;
//                        beam_dev = tetha-beam_dev;
//                        beam_dev = tetha-beam_dev;
//                        int dir=1;
//                        if(fabs(beam_dev) > 180)dir =- 1;
//                        beam_dev = std::min(beam_dev, 360 - beam_dev) * dir;
//                        (*it_pair.second)[1] = fabs((beam_dev < Math::PI ? beam_dev : Math::TWO_PI - beam_dev) - it_pair.first->orientation);
                        beam_dev = std::fabs(beam_dev - it_pair.first->orientation);
                        (*it_pair.second)[1] = beam_dev;
                        (*it_pair.second)[2] = .0f;
                        (*it_pair.second)[3] = -1.0f;
//                        std::cout << (*it_pair.second) << std::endl;
                        optimal_diff = diff;
                    }

                }
            }else{
                float optimal_diff = std::numeric_limits<float>::max();

                cv::Point2f a(pos_x + it_pair.first->param2*c_t - it_pair.first->param1*s_t,
                            pos_y + it_pair.first->param2*s_t + it_pair.first->param1*c_t);
                cv::Point2f b(pos_x + it_pair.first->param4*c_t - it_pair.first->param3*s_t,
                            pos_y + it_pair.first->param4*s_t + it_pair.first->param3*c_t);
//                float segline_len = sqrt((a.x - b.x)*(a.x - b.x) + (a.y - b.y)*(a.y - b.y));
                float orientation2V = std::min(std::fabs(Math::PI_TWO - tetha),
                                               std::fabs(Math::THREE_PI_TWO - tetha));
                float orientation2H = std::min(std::fabs(tetha),
                                      std::min(std::fabs(Math::TWO_PI - tetha),
                                               std::fabs(Math::PI - tetha)));

                float diffV = std::fabs(orientation2V - it_pair.first->orientation);
                float diffH = std::fabs(orientation2H - it_pair.first->orientation);

                for(size_t j = 0;j < line_segment_pos_.size(); j++){
//                    if(segline_used[j])continue;
                    if(j < 5){//Vertical Index
//                        if(a.y > line_segment_pos_[j][1] && b.y < line_segment_pos_[j][3]){
//                        float refline_len = (line_segment_pos_[j][3] - line_segment_pos_[j][1]);
//                        if(segline_len <= refline_len &&
//                            (std::min(a.y,b.y) - line_segment_pos_[j][1]) > -MAX_DIFF_OFFSET && // maximum 25 cm offset
//                            (std::max(a.y,b.y) - line_segment_pos_[j][3]) < MAX_DIFF_OFFSET){
                        float diff_offset1 = std::max(.0f, line_segment_pos_[j][1] - std::min(a.y,b.y));
                        float diff_offset2 = std::max(.0f, std::max(a.y,b.y) - line_segment_pos_[j][3]);
//                        float diff = std::fabs(a.x - line_segment_pos_[j][2]) + std::fabs(b.x - line_segment_pos_[j][0]);
                        float diff = std::fabs((std::max(a.x,b.x) - line_segment_pos_[j][2]) + (std::min(a.x,b.x) - line_segment_pos_[j][0]));
//                        float diff = std::fabs(std::max(a.x,b.x) - line_segment_pos_[j][2]) - std::fabs(std::min(a.x,b.x) - line_segment_pos_[j][0]);
                        float temp_diff = diff + diff_offset1 + diff_offset2 + diffV;
                        if(temp_diff < optimal_diff){
                            optimal_diff = temp_diff;
                            (*it_pair.second)[0] = diff + diff_offset1 + diff_offset2;
//                            float beam_dev = std::fabs(orientation_p2ref - it_pair.first->orientation);
                            (*it_pair.second)[1] = diffV;//fabs(beam_dev < 90.0 ? beam_dev : 180-beam_dev);
                            (*it_pair.second)[2] = diff_offset1 + diff_offset2;
                            (*it_pair.second)[3] = j;
//                            }
                        }
                    }else{//Horizontal Remains
//                        if(a.x > line_segment_pos_[j][0] && b.x < line_segment_pos_[j][2]){
//                        float refline_len = (line_segment_pos_[j][2] - line_segment_pos_[j][0]);
//                        if(segline_len <= refline_len ){
                        float diff_offset1 = std::max(.0f, line_segment_pos_[j][0] - std::min(a.x,b.x));
                        float diff_offset2 = std::max(.0f, std::max(a.x,b.x) - line_segment_pos_[j][2]);
//                        float diff = std::fabs(a.y - line_segment_pos_[j][3]) + std::fabs(b.y - line_segment_pos_[j][1]);
                        float diff = std::fabs((std::max(a.y,b.y) - line_segment_pos_[j][3]) + (std::min(a.y,b.y) - line_segment_pos_[j][1]));
//                        float diff = std::fabs(std::max(a.y,b.y) - line_segment_pos_[j][3]) - std::fabs(std::min(a.y,b.y) - line_segment_pos_[j][1]);
                        float temp_diff = diff + diff_offset1 + diff_offset2 + diffH;
                        if(temp_diff < optimal_diff){
                            optimal_diff = temp_diff;
                            (*it_pair.second)[0] = diff + diff_offset1 + diff_offset2;
//                            float beam_dev = std::fabs(orientation - it_pair.first->orientation);
                            (*it_pair.second)[1] = diffH;//fabs(beam_dev < 180.0 ? 90 - beam_dev : 270 - beam_dev);
                            (*it_pair.second)[2] = diff_offset1 + diff_offset2;
                            (*it_pair.second)[3] = j;
                        }
//                        }
                    }
                }
//                if((*it_pair.second)[2]>0)segline_used[(int)(*it_pair.second)[2]] = true;
            }

        }

        int features_used = 0;

        for(Vecs4::const_iterator it2 = weight_param.begin();
            it2 != weight_param.end(); it2++){
//            std::cout << (*it2)[0] << " ; " << (*it2)[1] << " ; " << (*it2)[3] << std::endl;
            float weight = (pdfRange((*it2)[0])*pdfBeam((*it2)[1]));//*probDensityFunc((*it2)[2],1.0));

            if(weight > top3_weight[0] && !acquisition[0]){
                acquisition[0] = (*it2)[3] == -1.0f;
                top3_weight[1] = top3_weight[0];
                top3_weight[0] = weight;
                ++features_used;
            }else if(weight > top3_weight[1] && !acquisition[1]){
                acquisition[1] = (*it2)[3] == -1.0f;
                top3_weight[2] = top3_weight[1];
                top3_weight[1] = weight;
                ++features_used;
            }else if(weight > top3_weight[2] && !acquisition[2]){
                acquisition[2] = (*it2)[3] == -1.0f;
                top3_weight[2] = weight;
                ++features_used;
            }

//            updated_weight += weight;
//            it->w = updated_weight;
        }
        features_used = std::max(1, std::min(features_used, 3));

        float gy_dev = fabs(tetha - gy_heading_ * Math::DEG2RAD);
        gy_dev = gy_dev > Math::PI ? Math::TWO_PI - gy_dev : gy_dev;
        float updated_weight = (top3_weight[0]*(int)(features_used > 0) +
                          top3_weight[1]*(int)(features_used > 1) +
                          top3_weight[2]*(int)(features_used > 2))/features_used;
//        std::cout << "VIS WEIGHT : " << updated_weight << std::endl;
        // float gy_weight = probDensityFunc(gy_dev,params_.gy_var);
        float gy_weight = expWeight(gy_dev, params_.gy_var);
//        std::cout << "GY Weight : " << gy_weight << std::endl;
        updated_weight *= gy_weight;

        it->w = updated_weight;

//        if(updated_weight > max_weight)max_weight = updated_weight;

        total_weight += updated_weight;

//         if(updated_weight < minimum_weight)
//             minimum_weight = updated_weight;

//        if(updated_weight > max_weight){
//            max_weight = updated_weight;
//        }

        top3_weight[0] = top3_weight[1] = top3_weight[2] = .0f;
        acquisition[0] = acquisition[1] = acquisition[2] = false;
    }
#ifdef DEBUG
//    std::cout << "MAX Weight : " << max_weight << std::endl;
//    std::cout << "Minimum Weight : " << minimum_weight << std::endl;
#endif

    float weight_avg = .0f;
//    if(max_weight == 0.0)max_weight = 1.0;
    for(Particles::iterator it = _particles_state.begin();
        it != _particles_state.end(); it++){
//        weight_avg += it->w/max_weight;
        weight_avg += it->w;
        it->w = it->w / total_weight;        
    }    
//    if(weight_avg==0)weight_avg=last_weight_avg_;
//    _weight_avg = weight_avg == 0.0 ? last_weight_avg_ : weight_avg/params_.num_particles;

    _weight_avg = weight_avg/params_.num_particles;
}

void Cat2Localization::process(){ 
    // std::cout<<"AAAAAAAAAAA"<<std::endl;
    if(!setInputImage())return;   
    // std::cout<<"BBBBBABBIIIIIIII KAAWAAAA ASUUUU"<<std::endl;
    

//    vision_utils::LineTip tip_points;

   
//    cv::imshow("SW",segmented_white_);

    constexpr float FRAME_AREA = FRAME_WIDTH*FRAME_HEIGHT;
    bool blind = (1.0f - (float)cv::countNonZero(invert_green_)/FRAME_AREA) < 0.01f; // assume the robot is blind when less than 1% green in frame

    auto t1 = boost::chrono::high_resolution_clock::now();
    // lost_features_ = true;
    // std::cout << front_fall_limit_ << " ; " << behind_fall_limit_ << " ; " << right_fall_limit_ << " ; " << left_fall_limit_ << std::endl;
    if(tilt_servo_angle_ < tilt_limit_ &&
            offset_head_ < 40.0f &&
            fabs(roll_offset_) < 22.0f){ //robot condition for feature observation
        Points target_points;
        Vectors3 line_models;

        // ProjectionUtils::getInstance()->scanLinePoints(invert_green_, field_boundary_, target_points);
//        ProjectionUtils::getInstance()->adaptiveScanLinePoints(invert_green_,segmented_white_,tilt_servo_angle_,pan_servo_angle_,field_boundary_,target_points);

#ifdef METHOD_1
#ifdef DEBUG
        Points projected_points = pointsProjection(target_points);
#else
        Points projected_points = fastPointsProjection(target_points);
#endif
        target_points.clear();
        target_points.shrink_to_fit();
        arrangeTargetPoints(projected_points);
        // getFeaturesModels(projected_points, line_models, features_);
#else
        arrangeTargetPoints(target_points);
        // getFeaturesModels(target_points,line_models,features_,tip_points);
        cv::Mat check_tp = cv::Mat::zeros(FRAME_HEIGHT,FRAME_WIDTH, CV_8UC1);
        for(size_t i = 0;i < target_points.size();i++){
            check_tp.at<uchar>(target_points[i].y, target_points[i].x) = 255;
        }

        for(size_t i=0;i<tip_points.tip1.size();i++){
            cv::line(check_tp, cv::Point(tip_points.tip1[i].x, tip_points.tip1[i].y),
            cv::Point(tip_points.tip2[i].x, tip_points.tip2[i].y),
                cv::Scalar(150),2);
        }
//        cv::imshow("CHECK_TOK",check_tp);
        publishTipPoints(tip_points);
#endif
    }

    update();

    if(blind){
        robot_state_.x = 999.0;
        robot_state_.y = 999.0;
    }

    if(odometer_buffer_.size() > 0)
        odometer_buffer_.erase(odometer_buffer_.begin());

    publishData();

    // auto t2 = boost::chrono::high_resolution_clock::now();
    // auto elapsed_time = boost::chrono::duration_cast<boost::chrono::milliseconds>(t2-t1).count();

    // static auto sum_et = .0;

#ifdef DEBUG
    std::cout << "Elapsed Time : " << elapsed_time << " ms : SUM ET : " << sum_et << std::endl;
#endif

    // if(lost_features_)
    //     sum_et += elapsed_time;

    // if(sum_et > 200.0 || (!lost_features_ && sum_et > .0)){//hold for 100 ms
    //     features_present_ = 0;
    //     features_.feature.clear();
    //     sum_et = .0;
    // }
    
    // actionForMonitor();
    
#ifdef DEBUG
    if(!debug_viz_.empty())
        cv::imshow("DEBUG_VIZ", debug_viz_);
    cv::waitKey(1);
#endif
}