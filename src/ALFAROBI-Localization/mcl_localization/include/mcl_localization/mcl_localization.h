#ifndef MCL_LOCALIZATION_H
#define MCL_LOCALIZATION_H

#include <ros/ros.h>
#include <ros/package.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose2D.h>
#include <std_msgs/String.h>
#include <kdl_conversions/kdl_msg.h>
#include <tf/tf.h>
#include <eigen_conversions/eigen_msg.h>
#include <eigen3/Eigen/Eigen>
#include <fstream>
#include <iostream>

#include <robotis_math/robotis_math.h>
#include <vision_simple/Points.h>
#include <sensor_msgs/Imu.h>
#include <robotis_math/robotis_math.h>
#include <robotis_math/step_data_define.h>
#include <mcl_localization/localization.h>
#include <mcl_localization/localization_param.h>
#include <mcl_localization/GetLocParam.h>
#include <yaml-cpp/yaml.h>

#include <vector>
#include <tuple>
#include <random>
#include <cmath>
#include <stdio.h>

#define FIELD_WIDTH 900
#define FIELD_HEIGHT 600
#define BORDER 100
#define MATWIDTH (FIELD_WIDTH+(2*BORDER))
#define MATHEIGHT (FIELD_HEIGHT+(2*BORDER))
#define CENTERX ((FIELD_WIDTH/2) + BORDER)
#define CENTERY ((FIELD_HEIGHT/2) + BORDER)


/*
 *
 * Monte Carlo Localization for Robocup 3D Soccer Simulation League
 *
 */

#define N_Particle 100

namespace robotis_op
{

class MCL
{
public:
  MCL(ros::NodeHandle &node);

  typedef std::tuple<double, double, double, double, double, double> Particle;
  typedef std::vector<Particle> Particles;
  typedef std::pair<double,double> SensorData;
  typedef std::tuple<double,double,double> State;
  struct FieldMatrix;

//  State mean();

  inline double& x(MCL::Particle& particle)
  {
    return std::get<0>(particle);
  }

  inline double& y(MCL::Particle& particle)
  {
    return std::get<1>(particle);
  }

  inline double& w(MCL::Particle& particle)
  {
    return std::get<2>(particle);
  }

  inline double& vis_weight(Particle& particle)
  {
      return std::get<3>(particle);
  }

  inline double& cmps_weight(Particle& particle)
  {
      return std::get<4>(particle);
  }

  inline double& total_weight(Particle& particle)
  {
      return std::get<5>(particle);
  }

  inline double& x(MCL::SensorData &point)
  {
    return point.first;
  }

  inline double& y(MCL::SensorData& point)
  {
    return point.second;
  }

  FieldMatrix* getField() { return &field; }


  /*
   * Motion update from torso pose (still using torso orientation not compass)
   */
  void MotionUpdate(const geometry_msgs::Pose2D::ConstPtr &msg);

  /*
   * Perception Update from sensor
   */
  void PerceptionUpdate(const std::vector<MCL::SensorData> &points);
  
  void  updateSensor(const vision_simple::Points::ConstPtr &msg);
  double cmps_error(double &angle);
  void updateImu(const sensor_msgs::Imu::ConstPtr &msg);
  /*
   *  Low Variance Resampling
   */
  void Resampling();

  void publish();
  void publishGlobalWhites();
  void setParams(const mcl_localization::localization_param::ConstPtr &msgs);
  bool getParams(mcl_localization::GetLocParam::Request &req, mcl_localization::GetLocParam::Response &res);
  void resetMCL(const std_msgs::String::ConstPtr &msg);

  void loadConfig();

  MCL::State mean()
  {
    return std::make_tuple(x(mean_estimate),y(mean_estimate),w(mean_estimate));
  }

public:
  struct FieldMatrix
  {
      FieldMatrix();
      void loadData(std::string path);
      double *distance_matrix;
      double distance(double x, double y);
      std::string bin_file;
  };



private:

  int init_argc_;
  char** init_argv_;

  ros::NodeHandle node_;

  std::string param_path;


  bool DEBUG;

  ros::Publisher loc_pub_;
  ros::Publisher global_white_pub;

  Eigen::Vector3d prev_pose;
  Eigen::Vector3d current_pose;


  Particles particles;
  Particle best_estimate;
  Particle mean_estimate;

  //some value to correct the odometry data because of slip, etc
  double alpha_;
  double beta_;
  double gamma_;
  Eigen::Vector3d const_;
  Eigen::Vector3d robot;

  // amcl
  double mcl_var, mcl_wfast, mcl_wslow;
  double mcl_aslow, mcl_afast;

  //gaussian noise variable
  double mgauss_x, mgauss_y, mgauss_w;
  double vgauss_x, vgauss_y;
  double mcl_wcmps, mcl_wvision;

  FieldMatrix field;
  std::vector<SensorData> sensor_data;

  double FOV_WIDTH;
  double FOV_HEIGHT;

  mcl_localization::localization_param loc_param_;


};

}

#endif // MCL_LOCALIZATION_H
