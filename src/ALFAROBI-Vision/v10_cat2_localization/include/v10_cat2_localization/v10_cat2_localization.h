#pragma once

#include <ros/ros.h>
#include <ros/package.h>

#include <image_transport/image_transport.h>
#include <image_transport/publisher.h>
#include <image_transport/subscriber.h>

#include <cv_bridge/cv_bridge.h>

#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/JointState.h>
#include <sensor_msgs/Imu.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/PoseStamped.h>

#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <dynamic_reconfigure/server.h>

#include <robotis_math/robotis_math.h>

#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Eigen>

#include <yaml-cpp/yaml.h>
#include <fstream>

#include <boost/chrono.hpp>

#include <immintrin.h>

#include "v10_cat2_localization/v10_cat2_amcl.h"

#include "vision_utils/fitcircle.h"
#include "vision_utils/localization_utils.h"
#include "vision_utils/LineTip.h"
#include "vision_utils/FieldBoundary.h"

#include <boost/align/aligned_alloc.hpp>
#include <boost/align/aligned_delete.hpp>

#ifdef DEBUG
#include <opencv2/highgui/highgui.hpp>
#endif

#define METHOD_1

typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image,
                                                        vision_utils::FieldBoundary,
                                                        sensor_msgs::JointState,
                                                        sensor_msgs::Imu> SyncPolicy;
typedef message_filters::Synchronizer<SyncPolicy> InputUtils;


using Alfarobi::FRAME_HEIGHT;
using Alfarobi::FRAME_WIDTH;
using Alfarobi::POINTS_MAP_H;
using Alfarobi::POINTS_MAP_W;
using Field::PENALTY_MARK_DISTANCE;
using Field::GOAL_WIDTH;

class Cat2Localization:public AMCL{
private:

    cv::Mat image_in_;
    cv::Mat invert_green_;
    int sw_encoding_;
    int isg_encoding_;

    sensor_msgs::CameraInfo camera_info_;

    double H_FOV;
    double V_FOV;
    float TAN_HFOV_PER2;
    float TAN_VFOV_PER2;

    inline float panAngleDeviation(float _pixel_x_pos);
    inline float tiltAngleDeviation(float _pixel_y_pos);
    inline float verticalDistance(float _tilt_dev);
    inline float horizontalDistance(float _distance_y, float _offset_pan);

    ros::NodeHandle nh_;

    image_transport::ImageTransport it_;
    // image_transport::Subscriber it_sw_sub_;
    image_transport::Subscriber it_isg_sub_;

    // cv_bridge::CvImagePtr cv_sw_ptr_sub_;
    cv_bridge::CvImagePtr cv_isg_ptr_sub_;

    void utilsCallback(
                       const sensor_msgs::ImageConstPtr &_isg_msg,
                       const vision_utils::FieldBoundary::ConstPtr &_fb_msg,
                       const sensor_msgs::JointStateConstPtr &_js_msg,
                       const sensor_msgs::ImuConstPtr &_imu_msg);

    // message_filters::Subscriber<sensor_msgs::Image > sw_sub_;
    message_filters::Subscriber<sensor_msgs::Image > isg_sub_;
    message_filters::Subscriber<vision_utils::FieldBoundary > fb_sub_;
    message_filters::Subscriber<sensor_msgs::JointState > js_sub_;
    message_filters::Subscriber<sensor_msgs::Imu > imu_sub_;

    InputUtils input_sync_;

    ros::Subscriber camera_info_sub_;
    void cameraInfoCallback(const sensor_msgs::CameraInfoConstPtr &_msg){
        camera_info_.D = _msg->D;
        camera_info_.K = _msg->K;
    }

    v10_cat2_localization::Cat2LocalizationParamsConfig new_params_;
    bool params_req_;

    bool setInputImage();

    ros::Time stamp_;
    std::string frame_id_;

    double circle_cost;
    double inlier_error;
    double fx_;
    double fy_;

    static const int MIN_LINE_INLIERS;
    static const int MIN_CIRCLE_INLIERS;
    static const int MIN_LINE_LENGTH;
    static const int MAX_LINE_MODEL;

    double tilt_limit_;
    double roll_offset_,pitch_offset_,yaw_offset_;
    double pan_servo_offset_,tilt_servo_offset_;

    double front_fall_limit_, behind_fall_limit_, right_fall_limit_, left_fall_limit_;

    template <typename T> inline int sgn(const T &val, int limit){return (val < limit) ? -1 : 1;}

    // void initializeFieldFeaturesData();
    std::vector<std::vector<cv::Point2f> > landmark_pos_;
    std::vector<cv::Vec4f> line_segment_pos_;    

//    ros::Subscriber imu_data_sub_;
    Eigen::Vector3d imu_data_;
//    void imuDataCb(const sensor_msgs::ImuConstPtr &_msg){

//    }

    float robot_height_;
    double z_offset_;
    double pan_rot_comp_;
    float offset_head_;
    float roll_compensation_;
    float gy_heading_;
    float last_gy_heading_;

    double shift_const_;

    float pan_servo_angle_;
    float tilt_servo_angle_;
//    ros::Subscriber present_joint_sub_;
//    void presentJointStateCb(const sensor_msgs::JointStateConstPtr &_msg);

    Eigen::Affine3d NECK;
    Eigen::Affine3d HEAD;
    Eigen::Affine3d CAMERA_POSE;
    Eigen::Vector3d CAMERA_DIRECTION;
    Eigen::Vector3d CAMERA_ORIENTATION;

    void initializeFK(){
        NECK = Eigen::Affine3d(Eigen::Translation3d(Eigen::Vector3d(Alfarobi::NECK_X, Alfarobi::NECK_Y, Alfarobi::NECK_Z)));
        HEAD = Eigen::Affine3d(Eigen::Translation3d(Eigen::Vector3d(Alfarobi::NECK2HEAD_X, Alfarobi::NECK2HEAD_Y, Alfarobi::NECK2HEAD_Z)));
    }

    void forwardKinematics(){
        NECK.linear() = Eigen::Matrix3d::Identity();
        HEAD.linear() = Eigen::Matrix3d::Identity();

        NECK.rotate(Eigen::AngleAxisd(roll_compensation_,Eigen::Vector3d(1,0,0)) *
                    Eigen::AngleAxisd(offset_head_,Eigen::Vector3d(0,1,0)));
                    // Eigen::AngleAxisd(0,Eigen::Vector3d(0,0,1)));
        HEAD.rotate(Eigen::AngleAxisd(pan_servo_angle_,Eigen::Vector3d(0,0,1)) *
                    Eigen::AngleAxisd(tilt_servo_angle_,Eigen::Vector3d(0,1,0)));
        CAMERA_POSE = NECK * HEAD;
        CAMERA_DIRECTION = CAMERA_POSE.translation();
        CAMERA_ORIENTATION = robotis_framework::convertRotationToRPY(CAMERA_POSE.linear());
#ifdef DEBUG
//#ifndef GAZEBO
        std::cout << "R : " << roll_compensation_ * Math::RAD2DEG << " ; P : " << offset_head_ * Math::RAD2DEG << " ; Y : " << gy_heading_ << std::endl;
        std::cout << "Robot Height : " << robot_height_ + CAMERA_DIRECTION.coeff(2) << std::endl;
        std::cout << "PAN : " << pan_servo_angle_* Math::RAD2DEG << " ; TILT : " << tilt_servo_angle_ * Math::RAD2DEG << std::endl;
        std::cout << "Camera Orientation : " << CAMERA_ORIENTATION * Math::RAD2DEG << std::endl;
        std::cout << "Camera Direction : " << CAMERA_DIRECTION * 100 << std::endl;
//#endif
#endif
    }

    Points pointsProjection(const Points &_points, bool ball=false);
    Points fastPointsProjection(const Points &_points, bool ball=false);

    // std::vector<Points> sampleCircleCandidates(cv::Mat &points_map, const Points &_points);

    void genRadialPattern();
    std::vector<std::pair<int,int> > radial_pattern_;

    void sampleMotionModelOdometry(Particles &_particles_state,
                                   const geometry_msgs::Pose2D &_odometer_out);
    void measurementModel(Particles &_particle_state,
                          vision_utils::Features _features_arg,
                          float &_weight_avg);
    ros::Publisher robot_state_pub_;

    //not used anymore
    //ros::Publisher monitor_utils_pub_;

    // ros::Publisher particles_state_pub_;
    // ros::Publisher features_pub_;

    vision_utils::FieldBoundary field_boundary_;

    inline void arrangeTargetPoints(Points &_target_points);

    // ros::Publisher line_tip_pub_;

    // bool lost_features_;
    // void getFeaturesModels(Points &_target_points,
    //                    Vectors3 &_line_models,
    //                    vision_utils::Features &_features_arg);
    //overloading function
#ifndef METHOD_1
    // void getFeaturesModels(Points &_target_points,
    //                     Vectors3 &_line_models,
    //                     vision_utils::Features &_features, vision_utils::LineTip &_line_tip);
#endif
    // void publishTipPoints(vision_utils::LineTip _tip_points);

    // int getIntersectionType(const cv::Mat &_intersect_roi, const cv::Vec2f _model[2],const cv::Point &_center);

    // vision_utils::Features getLineIntersection(Vectors3 _line_models);

    bool reset_particles_req_;
    ros::Subscriber reset_particles_sub_;
    void resetParticlesCb(const std_msgs::BoolConstPtr &_msg){
        reset_particles_req_ = _msg->data;
    }


    ros::Subscriber pillar_pos_sub_;
    geometry_msgs::Point pillar_pos_;
    void pillarPosCb(const geometry_msgs::PointConstPtr &_msg){
        pillar_pos_.x = _msg->x;
        pillar_pos_.y = _msg->y;
        pillar_pos_.z = _msg->z;
    }

    ros::Publisher projected_pillar_pub_;
    ros::Publisher projected_pillar_stamped_pub_;
    ///////////////
    ros::Subscriber square_pos_sub_;
    geometry_msgs::Point square_pos_;
    void squarePosCb(const geometry_msgs::PointConstPtr &_msg){
        square_pos_.x = _msg->x;
        square_pos_.y = _msg->y;
        square_pos_.z = _msg->z;
    }

    ros::Publisher projected_square_pub_;
    ros::Publisher projected_square_stamped_pub_;
    //////////////
    ros::Subscriber line_pos_sub_;
    geometry_msgs::Point line_pos_;
    void linePosCb(const geometry_msgs::PointConstPtr &_msg){
        line_pos_.x = _msg->x;
        line_pos_.y = _msg->y;
        line_pos_.z = _msg->z;
    }

    ros::Publisher projected_line_pub_;
    ros::Publisher projected_line_stamped_pub_;
    ///////////////
    ros::Subscriber goalpost_pos_sub_;
    geometry_msgs::Point goalpost_pos_;
    void goalpostPosCb(const geometry_msgs::PointConstPtr &_msg){
        goalpost_pos_.x = _msg->x;
        goalpost_pos_.y = _msg->y;
        goalpost_pos_.z = _msg->z;
    }

    ros::Subscriber ball_pos_sub_;
    geometry_msgs::Point ball_pos_;
    void ballPosCb(const geometry_msgs::PointConstPtr &_msg){
        ball_pos_.x = _msg->x;
        ball_pos_.y = _msg->y;
        ball_pos_.z = _msg->z;
    }

    ros::Publisher projected_ball_pub_;
    ros::Publisher projected_ball_stamped_pub_;

    ros::Publisher projected_goalpost_pub_;
    ros::Publisher projected_goalpost_stamped_pub_;
    ///////////////

    ros::Subscriber odometry_sub_;
    ros::Subscriber robot_height_sub_;

#ifdef GAZEBO
    void odometryCb(const geometry_msgs::PoseStampedConstPtr &_msg){
        odometer_out_.x = _msg->pose.position.x;
        odometer_out_.y = _msg->pose.position.y;
    }
#else
    void odometryCb(const geometry_msgs::PointConstPtr &_msg){
        odometer_out_.x = _msg->x <= -100.0 ? .0 : _msg->x * 100.0;
        odometer_out_.y = _msg->y <= -100.0 ? .0 : _msg->y * 100.0;
        // robot_height_ = _msg->z * 100;
        // std::cout << " DIFF : " << odometer_out_.x << " ; " << odometer_out_.y << std::endl;
        odometer_buffer_.push_back(odometer_out_);
    }

    void robotHeightCb(const geometry_msgs::PointConstPtr &_msg){
        robot_height_ = _msg->z * 100.0;
    }

#endif

    ros::Publisher odometry_cmd_pub_;

    void publishData();

        dynamic_reconfigure::Server<v10_cat2_localization::Cat2LocalizationParamsConfig >::CallbackType param_cb_;
        dynamic_reconfigure::Server<v10_cat2_localization::Cat2LocalizationParamsConfig > server_;
        void paramCallback(v10_cat2_localization::Cat2LocalizationParamsConfig &_config, uint32_t level);

    void loadParams(){

        YAML::Node offset_file;
        try{
            offset_file = YAML::LoadFile(ros::package::getPath("op3_manager") + "/config/offset.yaml");
        }catch(const std::exception &e){
            ROS_ERROR("[v10_cat2_localization] Unable to load offset file: %s", e.what());
        }
        YAML::Node offset_node = offset_file["offset"];

        pan_servo_offset_ = offset_node["head_pan"].as<double>();
        tilt_servo_offset_ = offset_node["head_tilt"].as<double>();
    }



    void saveParams(){
        // YAML::Emitter params_file;
        // params_file << YAML::BeginMap;
        // params_file << YAML::Key << "num_particles" << YAML::Value << params_.num_particles;
        // params_file << YAML::Key << "range_var" << YAML::Value << params_.range_var;
        // params_file << YAML::Key << "beam_var" << YAML::Value << params_.beam_var;
        // params_file << YAML::Key << "gy_var" << YAML::Value << params_.gy_var;
        // params_file << YAML::Key << "alpha1" << YAML::Value << params_.alpha1;
        // params_file << YAML::Key << "alpha2" << YAML::Value << params_.alpha2;
        // params_file << YAML::Key << "alpha3" << YAML::Value << params_.alpha3;
        // params_file << YAML::Key << "alpha4" << YAML::Value << params_.alpha4;
        // params_file << YAML::Key << "short_term_rate" << YAML::Value << params_.short_term_rate;
        // params_file << YAML::Key << "long_term_rate" << YAML::Value << params_.long_term_rate;
        // params_file << YAML::EndMap;
        // std::ofstream file_out(ros::package::getPath("v9_localization") + "/config/saved_params.yaml");
        // file_out << params_file.c_str();
        // file_out.close();
    }
    
    ros::Subscriber save_params_sub_;
    void saveParamsPillarCb(const std_msgs::EmptyConstPtr &_msg){
        (void)_msg;
        saveParams();
    }

    bool attack_dir_;
    float calcShootDir(const cv::Point2f &_ball_pos);

#ifdef DEBUG
    cv::Mat debug_viz_;
#endif
public:
    Cat2Localization();
    ~Cat2Localization();
    void process();
};