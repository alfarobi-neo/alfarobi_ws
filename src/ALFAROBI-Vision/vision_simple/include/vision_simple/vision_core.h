#ifndef VISION_CORE_H
#define VISION_CORE_H

#include <string>
#include <iostream>
#include <math.h>

#include <ros/ros.h>
#include <ros/package.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/JointState.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/Pose.h>
#include <dynamic_reconfigure/server.h>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <geometry_msgs/Point32.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PoseStamped.h>
#include <eigen_conversions/eigen_msg.h>

#include <eigen3/Eigen/Eigen>

#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <vision_simple/linedetection.h>
#include <vision_simple/fielddetection.h>
#include <vision_simple/Points.h>

#include <robotis_math/robotis_math.h>


class VisionCore
{
public:

  VisionCore();

  void process();
  bool newImage();
  void setInputImage(cv::Mat &inIm);
  void publish();
  void publishPoints();
  void publishImage();
  void getOutputImage(cv::Mat &outIm);
  void drawObjects();

  void imageCallback(const sensor_msgs::ImageConstPtr & msg);
  void CameraPoseCallback(const geometry_msgs::PoseStampedConstPtr &msg);

  //ros node handle
  ros::NodeHandle nh_;


  ros::Publisher white_points_pub_;
  ros::Subscriber enable_sub_;
  ros::Subscriber gazebo_imu;
  ros::Subscriber current_joint_states_sub_;

  //image publisher/subscriber
  image_transport::ImageTransport it_;
  image_transport::Publisher image_pub_;
  cv_bridge::CvImagePtr cv_img_pub_;
  image_transport::Subscriber image_sub_;
  cv_bridge::CvImagePtr cv_img_ptr_sub_;

protected:
  bool new_image_flag_;

private:
  ros::Time received_time_;
  LineDetection lineDetection_;
  FieldDetection fieldDetection_;

  cv::Mat InputImage, RawHSVImg, RawBGRImg, OutImage;

  std::vector<cv::Point> fieldBoundary;
  std::vector<cv::Point> linePoints;
  std::vector<cv::Vec3f> circles;


  std::string img_encoding_;

  vision_simple::Points white_points;

  Eigen::Affine3d camera;

  Eigen::Matrix3d K_;
  Eigen::Matrix3d R_;
  Eigen::MatrixXd P_;
  Eigen::MatrixXd D_;


  sensor_msgs::Imu imu_;

  double FOV_WIDTH;
  double FOV_HEIGHT;




};

#endif // VISION_CORE_H
