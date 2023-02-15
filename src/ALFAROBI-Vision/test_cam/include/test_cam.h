#ifndef TESTCAM_H
#define TESTCAM_H

#include <ros/ros.h>

#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>

#include <opencv2/core/core.hpp>

class TestCam{
public:
    TestCam();
    ~TestCam();

    void publishImage();
    void setInputImage(const cv::Mat &_in_img);
private:
    //ROS Node Handle
    ros::NodeHandle nh_;
    ros::Subscriber subs_;
    ros::Publisher pubs_;

    image_transport::ImageTransport it_;
    image_transport::Publisher it_pubs_;
    image_transport::Subscriber it_subs_;
    cv_bridge::CvImage cv_img_pub;
    cv_bridge::CvImagePtr cv_img_ptr_sub;

    ros::Time sub_time;

    //Detector param
    cv::Mat in_img_;

};

#endif // TESTCAM_H
