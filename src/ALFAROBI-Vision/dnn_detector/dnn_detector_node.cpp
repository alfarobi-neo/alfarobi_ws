#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include "dnn_detector.h"
#include <iostream>

static const std::string OPENCV_WINDOW = "Image window";

class ImageConverter
{
  std::string name_ = ros::this_node::getNamespace();
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;
  cv_bridge::CvImage cv_img_pub_;

  //circle set publisher
  dnn_detector::CircleStamped circles_msg_;
  ros::Publisher circles_pub_;

  robotis_op::BallDNN ball_;

  cv::Size img_;

public:
  ImageConverter()
    : it_(nh_)
  {
    // Subscrive to input video feed and publish output video feed
    image_sub_ = it_.subscribe("dnn_detector_node/image_in", 1,
      &ImageConverter::imageCb, this);
    image_pub_ = it_.advertise("dnn_detector_node/image_out", 1);
    circles_pub_ = nh_.advertise<dnn_detector::CircleStamped>("dnn_detector_node/circle_set", 100);


//    cv::namedWindow(OPENCV_WINDOW);
  }

  ~ImageConverter()
  {
//    cv::destroyWindow(OPENCV_WINDOW);
  }

  void imageCb(const sensor_msgs::ImageConstPtr& msg)
  {
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

   img_ = cv_ptr->image.size();

    ball_.setInputImage(cv_ptr->image);
    ball_.process();

    publishImage();
    publishCircles();

    cv::waitKey(1);

    // Output modified video stream
    image_pub_.publish(cv_img_pub_.toImageMsg());
  }

  void publishImage()
  {
    ball_.getOutputImage(cv_img_pub_.image);

    cv_img_pub_.header.seq++;
    cv_img_pub_.header.stamp = ros::Time::now();
    cv_img_pub_.encoding = sensor_msgs::image_encodings::BGR8;
  }

  void publishCircles()
  {
    std::vector<cv::Vec3f> circles_ = ball_.getCircles();

    if (circles_.size() == 0)
        return;

    //clears and resize the message
    circles_msg_.circles.clear();
    circles_msg_.circles.resize(circles_.size());

    //fill header
    circles_msg_.header.seq++;
    circles_msg_.header.stamp = ros::Time::now();
    circles_msg_.header.frame_id = "detector";  //To do: get frame_id from input image

    //fill circle data
    // top(-1), bottom(+1)
    // left(-1), right(+1)
    for (int idx = 0; idx < circles_.size(); idx++)
    {
        circles_msg_.circles[idx].x = circles_[idx][0]/ img_.width * 2 - 1;    // x (-1 ~ 1)
        circles_msg_.circles[idx].y = circles_[idx][1]/ img_.height * 2 - 1;    // y (-1 ~ 1)
        circles_msg_.circles[idx].z = circles_[idx][2];    // radius
    }

    //publish message
    circles_pub_.publish(circles_msg_);
  }
};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "dnn_detector_node");

  ImageConverter ic;
  ros::spin();
  return 0;
}
