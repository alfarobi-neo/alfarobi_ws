#include <ros/ros.h>
#include <vision_simple/Points.h>
#include <mcl_localization/mcl_localization.h>
#include <geometry_msgs/Pose.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mcl_localization_node");
  ros::NodeHandle node_(ros::this_node::getName());
  robotis_op::MCL mcl(node_);

  ros::Subscriber motion_ = node_.subscribe("/robot_state/base_odometry", 10, &robotis_op::MCL::MotionUpdate, &mcl);
  ros::Subscriber imu_ = node_.subscribe("alfarobi/imu", 10, &robotis_op::MCL::updateImu, &mcl);
  ros::Subscriber whites_ = node_.subscribe("/vision_simple_node/white_points", 10, &robotis_op::MCL::updateSensor, &mcl);
  ros::ServiceServer param_server = node_.advertiseService("get_params",
                                                           &robotis_op::MCL::getParams,
                                                           &mcl);
  ros::Subscriber param_sub = node_.subscribe("/mcl_localization_node/set_param", 10,
                                              &robotis_op::MCL::setParams, &mcl);
  ros::Subscriber reset_ = node_.subscribe("/mcl_localization_node/reset_particle", 10,
                                              &robotis_op::MCL::resetMCL, &mcl);


//  ros::AsyncSpinner spinner(2);
//  if(spinner.canStart())
//    spinner.start();

  ros::Rate loop(30);
  while(ros::ok())
  {
    mcl.publish();
    mcl.publishGlobalWhites();
    ros::spinOnce();
    loop.sleep();
  }
  ros::waitForShutdown();
  return 0;

}
