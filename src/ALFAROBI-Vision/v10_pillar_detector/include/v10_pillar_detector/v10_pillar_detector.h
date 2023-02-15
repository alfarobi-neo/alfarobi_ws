#pragma once

#include <ros/ros.h>
#include <ros/package.h>

#include <std_msgs/Int8.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Empty.h>
#include <geometry_msgs/Point.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/image_encodings.h>

#include <dynamic_reconfigure/server.h>
//#include <v9_ball_detector/BallDetectorConfig.h>
#include <v10_pillar_detector/PillarDetectorParamsConfig.h>

#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>

#include <opencv2/highgui/highgui.hpp>

#include <yaml-cpp/yaml.h>

#include "vision_utils/vision_common.h"
#include "vision_utils/LineTip.h"
#include "vision_utils/FieldBoundary.h"
#include "vision_utils//LUT.h"

#include <string.h>
#include <fstream>
#include <sstream>

class Pillar_Detector{
    private:
        ros::NodeHandle nh_;

        cv_bridge::CvImagePtr cv_img_ptr_subs_;
        cv_bridge::CvImage cv_img_pubs_;

        image_transport::ImageTransport it_;
        image_transport::Subscriber it_subs_;
        image_transport::Publisher it_pubs_;

        void imageCallback(const sensor_msgs::ImageConstPtr &_msg);
        void cameraInfoCallback(const sensor_msgs::CameraInfo &_msg);
        void publishImage();

        ros::Publisher update_params_pub_;

        cv::Mat in_img_;
        cv::Mat out_img_;

        sensor_msgs::CameraInfo cam_info_msg_;
        ros::Subscriber cam_info_sub_;
        ros::Publisher cam_info_pub_;

        unsigned int img_encoding_;

        geometry_msgs::Point pillar_pos_;
        ros::Publisher pillar_pos_pub_;

        ros::Time stamp_;
        std::string frame_id_;

        cv::Mat& setInputImage();
        void setOutputImage(const cv::Mat &_out_img);

        std::string pillar_config_path;
        v10_pillar_detector::PillarDetectorParamsConfig config_;
        dynamic_reconfigure::Server<v10_pillar_detector::PillarDetectorParamsConfig> param_server_;
        dynamic_reconfigure::Server<v10_pillar_detector::PillarDetectorParamsConfig>::CallbackType param_cb_;
        void paramCallback(v10_pillar_detector::PillarDetectorParamsConfig &_config, uint32_t level);

        //====================

        cv::Mat LUT_data;
        std::string LUT_dir;
        ros::Subscriber LUT_sub_;
        void lutCallback(const vision_utils::LUTConstPtr &_msg);

        void pillarRefCallback(const sensor_msgs::ImageConstPtr &_msg);
        image_transport::Subscriber it_bf_sub_;
        cv_bridge::CvImagePtr cv_bf_ptr_sub_;
        cv::Mat pillar_ref_;
        cv::MatND pillar_ref_hist_;
        float checkTargetHistogram(cv::Mat _target_roi);
        class HistParam{
        public:
            int channels[2];
            int hist_size[2];
            float h_ranges[2];
            float s_ranges[2];
            float v_ranges[2];
            const float* ranges[2];
            HistParam():channels{0,1},hist_size{32,32},
                h_ranges{0,255},s_ranges{0,255},v_ranges{0,255},
                ranges{s_ranges,s_ranges}{

            }
        }hist_param_;

        static const float MIN_FIELD_CONTOUR_AREA;
        static const float MIN_CONTOUR_AREA;
        static const float MIN_BACKGROUND_CONTOUR_AREA;
        static const float MIN_SQUARE_CONTOUR_AREA;

        cv::Mat cvtMulti(const cv::Mat &_pillar_ref);

        cv::Mat in_hsv_;
        cv::Mat thresh_image_;

        ros::Publisher field_boundary_pub_;
        std::pair<cv::Mat, vision_utils::FieldBoundary > getFieldImage(const cv::Mat &_segmented_green);

        cv::Mat segmentColor(cv::Mat &_segmented_green, cv::Mat &_inv_segmented_green, cv::Mat &_segmented_pillar_color, cv::Mat &_segmented_black, cv::Mat &_segmented_blue);

        void filterContourData(std::vector<cv::Mat> &divided_roi, cv::Point top_left_pt,
                            std::vector<Points > &selected_data, cv::Mat *debug_mat, int sub_mode);

        int frame_mode_;
        ros::Subscriber frame_mode_subs_;
        void frameModeCallback(const std_msgs::Int8::ConstPtr &_msg);

        ros::Subscriber save_param_subs_;
        void saveParamCallback(const std_msgs::Empty::ConstPtr &_msg);

        ros::Subscriber pred_status_sub_;
        bool pred_status_;
        void predStatusCb(const std_msgs::Bool::ConstPtr &_msg){
        pred_status_ = _msg->data;
        }
        void lineTipCallback(const vision_utils::LineTipConstPtr &_msg);
        ros::Subscriber line_tip_sub_;
        vision_utils::LineTip line_tip_;

        //coba tambah
        cv::Mat pillar_segment(cv::Mat &_segmented_pillar);
        void erode_dilate (cv::Mat &img_src);
        struct lineF;

        cv::Mat getBackgroundImage(const cv::Mat &_segmented_black);
        cv::Mat getSquareImage(const cv::Mat &_segmented_blue);

        image_transport::Publisher it_inv_sg_pub_;
        // void localizationInputEnhance(cv::Mat &_input);
        void publishLocalizationUtils( const cv::Mat &_inv_segmented_green, vision_utils::FieldBoundary _field_boundary);
        cv_bridge::CvImage cv_inv_sg_pub_;
        

    public:
        Pillar_Detector();
        void process();
        void saveParam();
        void loadParam();
};
