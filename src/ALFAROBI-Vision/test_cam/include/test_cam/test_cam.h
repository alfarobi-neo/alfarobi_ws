#ifndef TESTCAM_H
#define TESTCAM_H

//core
#include <ros/ros.h>
//hardware to software utility
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
//CV utility
#include <opencv2/core/core.hpp>

//std lib
#include <string>

class TestCam{
public:
    TestCam();
    ~TestCam();

    void publishImage();    
    void process();
private:
    //ROS Node Handle
    ros::NodeHandle nh_;
    ros::Subscriber subs_;
    ros::Publisher pubs_;

    image_transport::ImageTransport it_;
    image_transport::Publisher it_pubs_;
    image_transport::Subscriber it_subs_;
    cv_bridge::CvImage cv_img_pub_;
    cv_bridge::CvImagePtr cv_img_ptr_sub_;

    //Detector param
    cv::Mat in_img_;
    cv::Mat out_img_;

    std::string img_id_;
    ros::Time sub_time_;
    unsigned int img_encoding_;
    enum{
        IMG_MONO = 0,
        IMG_RGB = 1
    };

    bool img_arrive_;

    void setInputImage(const cv::Mat &_in_img);
    void setOutputImage(const cv::Mat &_out_img);
    void imageCallback(const sensor_msgs::ImageConstPtr &msg);
};

#endif // TESTCAM_H
