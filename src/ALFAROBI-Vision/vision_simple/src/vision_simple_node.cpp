#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <vision_simple/vision_core.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "vision_simple_node");

  VisionCore vision_core_;
  ros::NodeHandle nh_;

  ros::Subscriber base_pose = nh_.subscribe("/robot_state/camera_pose", 10, &VisionCore::CameraPoseCallback, &vision_core_);

  ros::Rate loop_rate(30);

  while(ros::ok())
  {
    if(vision_core_.newImage())
    {
      vision_core_.process();
      vision_core_.publish();
    }

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
