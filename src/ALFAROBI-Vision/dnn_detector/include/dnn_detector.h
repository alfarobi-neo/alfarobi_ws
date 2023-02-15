#ifndef DNN_DETECTOR_H
#define DNN_DETECTOR_H

#include <fstream>
#include <iostream>

#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/dnn.hpp>
#include <opencv2/dnn/all_layers.hpp>
#include <opencv2/dnn/layer.hpp>
#include <opencv2/tracking.hpp>
#include <opencv2/dnn/shape_utils.hpp>
#include <opencv2/video/tracking.hpp>
#include <opencv2/ximgproc.hpp>

#include <ros/ros.h>
#include <ros/package.h>
#include <ros/time.h>
#include <ros/callback_queue.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/image_encodings.h>
#include <dynamic_reconfigure/server.h>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>

#include <eigen3/Eigen/Eigen>

#include "dnn_config.h"
#include "dnn_detector/CircleStamped.h"
#include "dnn_detector/DnnParamsConfig.h"
#include "dnn_detector/DnnDetectorParams.h"
#include "dnn_detector/GetParameters.h"
#include "dnn_detector/SetParameters.h"

#include "FieldDetector.h"
#include "line_detector.h"
#include "tools.h"

#include <yaml-cpp/yaml.h>

namespace YAML {
template<>
struct convert<Eigen::Vector3d> {
    static Node encode(const Eigen::Vector3d& rhs) {
        Node node;
        node.push_back(rhs.x());
        node.push_back(rhs.y());
        node.push_back(rhs.z());
        return node;
    }

    static bool decode(const Node& node, Eigen::Vector3d& rhs) {
        if(!node.IsSequence() || node.size() != 3) {
            return false;
        }

        rhs.x() = node[0].as<double>();
        rhs.y() = node[1].as<double>();
        rhs.z() = node[2].as<double>();
        return true;
    }
};
}

inline YAML::Emitter& operator << (YAML::Emitter& out, const Eigen::Vector3d& v) {
    out << YAML::Flow;
    out << YAML::BeginSeq << v.x() << v.y() << v.z() << YAML::EndSeq;
    return out;
}


namespace robotis_op{

class BallDNN
{
public:
    BallDNN();
    ~BallDNN();

    void process();
    void setInputImage(const cv::Mat & inIm);
    void getOutputImage(cv::Mat & outIm);
    std::vector<cv::Vec3f> getCircles() { return circles_;}
    bool newImage();

protected:

    void loadDNNdata(const std::string path_model, const std::string path_proto);
    std::vector<cv::Point> contoursConvexHull( std::vector<std::vector<cv::Point> > contours );
    void getGreenField(cv::Mat& input, cv::Mat& output);

    //callbacks to camera info subscription
    void cameraInfoCallback(const sensor_msgs::CameraInfo & msg);

    void dynParamCallback(dnn_detector::DnnParamsConfig &config, uint32_t level);
    void enableCallback(const std_msgs::Bool::ConstPtr &msg);

    void paramCommandCallback(const std_msgs::String::ConstPtr &msg);
    bool setParamCallback(dnn_detector::SetParameters::Request &req, dnn_detector::SetParameters::Response &res);
    bool getParamCallback(dnn_detector::GetParameters::Request &req, dnn_detector::GetParameters::Response &res);
    void resetParameter();
    void publishParam();

    void saveConfig();
    void drawOutputImage();

    void initializKF();


    ros::Subscriber enable_sub_;

    ros::NodeHandle nh_;

    image_transport::Publisher image_pub_;
    cv_bridge::CvImage cv_img_pub_;

    bool enable_;
    bool init_param_;
    int not_found_count_;

    //camera info subscriber
    sensor_msgs::CameraInfo camera_info_msg_;
    ros::Subscriber camera_info_sub_;
    ros::Publisher camera_info_pub_;

    //dynamic reconfigure
    std::string param_path_;
    bool has_path_;
    DNNConfig config_;

    // web setting
    std::string default_setting_path_;
    ros::Publisher param_pub_;
    ros::Subscriber param_command_sub_;
    ros::ServiceServer get_param_client_;
    ros::ServiceServer set_param_client_;

    //img encoding id
    unsigned int img_encoding_;
    unsigned int IMG_MONO = 0;
    unsigned int IMG_RGB8 = 1;

    cv::dnn::Net net;
    std::string v_proto_path;
    std::string v_model_path;

    cv::Mat in_image_;
    cv::Mat out_image_;
    cv::Mat RawHSVImg, RawGrayImg;
    cv::Mat ballBinary, goalBinary, obstacleBinary;
    std::vector<cv::Vec3f> circles_;

    const std::string OPENCV_WINDOW = "Image window";

    dynamic_reconfigure::Server<dnn_detector::DnnParamsConfig> param_server_;
    dynamic_reconfigure::Server<dnn_detector::DnnParamsConfig>::CallbackType callback_fnc_;

    bool found;

    ros::Time time;

    HsvFilter fieldRange, ballRange, obstacleRange, goalRange, ballyuv;
    FieldDetector field_detector_;
    LineDetector line_detector_;

};

}

#endif // DNN_DETECTOR_H
