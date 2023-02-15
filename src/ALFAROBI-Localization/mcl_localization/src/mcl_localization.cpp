#include <mcl_localization/mcl_localization.h>


using namespace Eigen;
namespace robotis_op
{


MCL::MCL(ros::NodeHandle& node)
  :node_(node),
    FOV_WIDTH((70.42/2) * M_PI / 180),
    FOV_HEIGHT((43.30/2) * M_PI / 180),
    DEBUG(false)
{

  ros::start();


  std::string mat_path = ros::package::getPath("mcl_localization") + "/distance_mat/norm_dist.bin";
  param_path = ros::package::getPath("op3_manager") + "/config/GlobalConfig.yaml";
  node_.param<std::string>("/mcl_localization/bin_file", field.bin_file, mat_path);

  loadConfig();
  field.loadData(field.bin_file);

  std::string node_name = ros::this_node::getName();
  loc_pub_ = node_.advertise<mcl_localization::localization>(node_name+"/localization_data", 100);
  global_white_pub = node_.advertise<vision_simple::Points>(node_name+"/global_white_pts", 100);

  mcl_wfast = 0;
  mcl_wslow = 0;
  mcl_afast = loc_param_.mcl_afast; mcl_aslow= loc_param_.mcl_aslow;
  mcl_wvision =1-loc_param_.mcl_wcmps;

  std::random_device x_rd, y_rd, w_rd;
  std::uniform_real_distribution<double> x_rgen(-450,450), y_rgen(-300,300), w_rgen(0,360);

  for(int i = 0; i < N_Particle; i++)
    particles.push_back(Particle(x_rgen(x_rd), y_rgen(y_rd), w_rgen(w_rd), mcl_wvision/N_Particle, loc_param_.mcl_wcmps/N_Particle,1/N_Particle));


}

void MCL::loadConfig()
{
  YAML::Node node;
  try
  {
    // load yaml
    node = YAML::LoadFile(param_path.c_str());
  } catch (const std::exception& e)
  {
    ROS_ERROR("Fail to load yaml file.");
    return;
  }

  YAML::Node doc = node["mcl_localization"];

  loc_param_.mcl_afast = doc["mcl_afast"].as<double>();
  loc_param_.mcl_aslow = doc["mcl_aslow"].as<double>();
  loc_param_.vgauss_x = doc["vgauss_x"].as<double>();
  loc_param_.vgauss_y = doc["vgauss_y"].as<double>();
  loc_param_.mgauss_x = doc["mgauss_x"].as<double>();
  loc_param_.mgauss_y = doc["mgauss_y"].as<double>();
  loc_param_.mgauss_w = doc["mgauss_w"].as<double>();
  loc_param_.mcl_variance = doc["variance"].as<double>();
  loc_param_.mcl_wcmps = doc["mcl_wcmps"].as<double>();

}

void MCL::resetMCL(const std_msgs::String::ConstPtr &msg)
{
  if(msg->data == "reset")
  {
    std::random_device xrd, yrd, wrd;
    std::uniform_real_distribution<double> xrg(-450,450), yrg(-300,300), wrg(0,360);
    for(auto& p : particles)
    {
      x(p) = xrg(xrd);
      y(p) = yrg(yrd);
      w(p) = wrg(wrd);
    }
  }

  mcl_wfast=0;
  mcl_wslow=0;
}

double MCL::cmps_error(double &angle)
{
  if(angle>360)
    angle -= 360;
  if(angle < 0)
    angle += 360;

  double err = angle-robot.z();
  if(fabs(err)>180.0) {
    err = 360.0-fabs(err);
  }
  return err;

}


void MCL::MotionUpdate(const geometry_msgs::Pose2D::ConstPtr &msg)
{
  ROS_DEBUG_COND(DEBUG, "Motion Update");

  geometry_msgs::Pose2D pose;
  pose.x = msg->x; pose.y = msg->y; pose.theta = msg->theta;

  std::random_device xrd, yrd, wrd;
  std::normal_distribution<> xgen(0.0,loc_param_.mgauss_x), ygen(0.0,loc_param_.mgauss_y), wgen(0.0,loc_param_.mgauss_w);


  double dx = pose.x * 100;
  double dy = pose.y * 100;
  double dw = pose.theta * RADIAN2DEGREE ;

  for(auto& p : particles)
  {
    double c = cos(w(p) * DEGREE2RADIAN);
    double s = sin(w(p) * DEGREE2RADIAN);

    x(p) += dx*c - dy*s + xgen(xrd);
    y(p) += dx*s + dy*c + ygen(yrd);
    w(p) += dw + wgen(wrd);
  }

}

void MCL::updateSensor(const vision_simple::Points::ConstPtr &msg)
{
  std::vector<MCL::SensorData> data;
  for(auto& w : msg->WhitePoints)
    data.push_back(MCL::SensorData(w.x*100, w.y*100));
  sensor_data = data;
  PerceptionUpdate(data);
}

void MCL::updateImu(const sensor_msgs::Imu::ConstPtr &msg)
{
  geometry_msgs::Quaternion orien_ = msg->orientation;
  Eigen::Quaterniond orien(orien_.w, orien_.x, orien_.y, orien_.z);

  robot = robotis_framework::convertQuaternionToRPY(orien);
  robot.z() = robot.z() * RADIAN2DEGREE;

}


void MCL::PerceptionUpdate(const std::vector<SensorData> &points)
{
  ROS_DEBUG_COND(DEBUG, "Perception Update");

  int num_points = points.size();
  double sum_weight = 0;
  double weight_sum_cmps = 0;
  double w_avg = 0;

  std::random_device rd;
  std::mt19937 gen(rd());
  std::normal_distribution<> xgen(0,vgauss_x), ygen(0,vgauss_y), wgen(0,5);


  for(auto &p : particles)
  {
    double prob = 1;
    double p_weight = 0.001;
    for(auto d : points)
    {
      double angle_rad = w(p) * DEGREE2RADIAN;
      double c = cos(angle_rad);
      double s = sin(angle_rad);
      //relative to robot
      double world_x = (c*x(d)-s*y(d))+x(p)+CENTERX;//+ xgen(gen);
      double world_y = (CENTERY-y(p))+(-s*x(d)+c*y(d));//+ ygen(gen);
      double distance = 200;
      if((world_x >= 0) && (world_x <= MATWIDTH) && (world_y >= 0) && (world_y <= MATHEIGHT))
        distance = field.distance_matrix[800*int(world_x)+int(world_y)];
      else
        distance = 200;
      prob += distance*distance;
    }
    if(prob > 0)
      p_weight = 1/prob;

    if(num_points > 0)
      p_weight /= num_points;

    vis_weight(p) = p_weight;
    double cmps_err = 180.0/std::max(fabs(cmps_error(w(p))),1.);
    cmps_weight(p) = cmps_err;
    weight_sum_cmps += cmps_err;
    sum_weight +=  p_weight;
  }

  //normalization, sum of every weight = 1

  double sum = 0;
  if(sum_weight > 0)
    for(auto& p : particles)
    {
      vis_weight(p) /= sum_weight;
      cmps_weight(p) = (cmps_weight(p)/weight_sum_cmps);
      total_weight(p) = loc_param_.mcl_wcmps*cmps_weight(p) + mcl_wvision*vis_weight(p);
      w_avg += vis_weight(p)/N_Particle;
    }

//  w_avg = (sum_weight*mcl_wvision+weight_sum_cmps*loc_param_.mcl_wcmps)/N_Particle;

  //  std::cout << "sum : " << sum << std::endl;


  mcl_wslow += mcl_aslow*(w_avg - mcl_wslow);
  mcl_wfast += mcl_afast*(w_avg - mcl_wfast);


  Resampling();


}

//low variance resampling
void MCL::Resampling()
{
  ROS_DEBUG_COND(DEBUG, "Resampling");
  Particles new_list;
  std::default_random_engine rd;  //Will be used to obtain a seed for the random number engine
  std::random_device x_rd, y_rd, w_rd;
  std::uniform_real_distribution<double> rg(0.0,1.0/N_Particle), xrg(-450,450), yrg(-300,300), wrg(0,359);
  double reset_prob = std::max(double(0.0), double(1-(mcl_wfast/mcl_wslow)));
  double r = rg(rd);
  double c = vis_weight(particles[0]);
  best_estimate = particles[0];
  int id = 0;

  double mean_x = 0;
  double mean_y = 0;
  double sin_ = 0, cos_ = 0;
  double orien = 0;

  for(int j = 0; j < N_Particle; j++)
  {
    double random = ((double) rand() / (RAND_MAX));
    if(random < reset_prob)
      new_list.push_back(std::make_tuple(xrg(x_rd), yrg(y_rd), wrg(w_rd), mcl_wvision/N_Particle, loc_param_.mcl_wcmps/N_Particle,1/N_Particle));
    else
    {
      double U = r+((double)(j)/N_Particle);
      while(U > c)
      {
        id +=1;
        c += vis_weight(particles[id]);
      }
      if(vis_weight(particles[id]) > vis_weight(best_estimate))
        best_estimate = particles[id];

      new_list.push_back(particles[id]);
    }
  }

  particles = new_list;

  //  std::cout << weight(best_estimate) << std::endl;

  for(auto &p : particles)
  {
    mean_x += x(p);
    mean_y += y(p);
    double deg = w(p) * DEGREE2RADIAN;
    sin_ += sin(deg);
    cos_ += cos(deg);
    total_weight(p) = 1/N_Particle;
  }

  mean_x /= N_Particle;
  mean_y /= N_Particle;
  orien = atan2(sin_,cos_)*RADIAN2DEGREE;

  x(mean_estimate) = mean_x;
  y(mean_estimate) = mean_y;
  w(mean_estimate) = orien;

  //  std::cout << "Mean: " << mean_x << ", " <<mean_y << std::endl;
  //  std::cout << "best_estimate: " << x(best_estimate) << ", " <<y(best_estimate) << std::endl;

}

void MCL::publish()
{
  mcl_localization::localization loc_msg;
  //  auto belief = std::make_tuple(-100,0,0);

  auto belief = mean();
  loc_msg.belief.x = std::get<0>(belief);
  loc_msg.belief.y = std::get<1>(belief);
  loc_msg.belief.theta = std::get<2>(belief);
  loc_msg.best_estimation.x = x(best_estimate);
  loc_msg.best_estimation.y = y(best_estimate);
  loc_msg.best_estimation.theta = w(best_estimate);
  loc_msg.best_estimation_weight = total_weight(best_estimate);
  for(auto& p : particles)
  {
    geometry_msgs::Pose2D pose;
    pose.x = x(p);
    pose.y = y(p);
    pose.theta = w(p);
    loc_msg.particles.push_back(pose);
  }
  //  last_publish = ros::Time::now();
  loc_pub_.publish(loc_msg);
  ROS_DEBUG_COND(DEBUG, "MCL Published");
}

void MCL::publishGlobalWhites()
{
  vision_simple::Points whites_msg;
  for(auto& data : sensor_data)
  {
    geometry_msgs::Point p;
    p.x = data.first;
    p.y = data.second;
    whites_msg.WhitePoints.push_back(p);
  }
  global_white_pub.publish(whites_msg);

  ROS_DEBUG_COND(DEBUG, "Points Published");

}

MCL::FieldMatrix::FieldMatrix()
{
  distance_matrix = new double[MATHEIGHT*MATWIDTH];
}

void MCL::FieldMatrix::loadData(std::string path)
{
  ROS_INFO("LOADED FROM %s", path.c_str());
  std::ifstream file(path.c_str(),std::ios::in | std::ios::binary);
  file.read((char*)distance_matrix,sizeof(double)*1100*800);
  file.close();
}

double MCL::FieldMatrix::distance(double x, double y)
{
  //Accessing data from column wise
  int x_ = int(floor(x))+ 550;
  int y_ = 400-int(floor(y));
  //  if((x > -10) && (x< 10) && (y < 20) && (y > -20))
  //     std::cout << "x,y : " << x << ", " <<y  << " || " << distance_matrix[y_+x_*800] << std::endl;
  if((x_ >= 0) && (x_ < MATWIDTH) && (y_ >= 0) && (y_ < MATHEIGHT))
  {
    int pos = y_+x_*800;
    double dist = distance_matrix[pos];
    //    if(dist > 0)
    //      if(pos > MATHEIGHT*MATWIDTH)
    //        std::cout << "x,y : " << x_ << ", " <<y_ << " || " << pos << std::endl;
    return dist;
  }
  else
  {
    return 0;
  }
}

void MCL::setParams(const mcl_localization::localization_param::ConstPtr &msgs)
{
  loc_param_ = *msgs;
  mcl_wvision = 1-loc_param_.mcl_wcmps;

  YAML::Node node;
  try
  {
    // load yaml
    node = YAML::LoadFile(param_path.c_str());
  } catch (const std::exception& e)
  {
    ROS_ERROR("Fail to load yaml file.");
    return;
  }

  YAML::Node doc = node["mcl_localization"];

  doc["mcl_afast"] = loc_param_.mcl_afast;
  doc["mcl_aslow"] = loc_param_.mcl_aslow;
  doc["vgauss_x"] = loc_param_.vgauss_x;
  doc["vgauss_y"] = loc_param_.vgauss_y;
  doc["mgauss_x"] = loc_param_.mgauss_x;
  doc["mgauss_y"] = loc_param_.mgauss_y;
  doc["mgauss_w"] = loc_param_.mgauss_w;
  doc["variance"] = loc_param_.mcl_variance;
  doc["mcl_wcmps"] = loc_param_.mcl_wcmps;

  // output to file
  std::ofstream fout(param_path.c_str());
  fout << node;
}

bool MCL::getParams(mcl_localization::GetLocParam::Request &req, mcl_localization::GetLocParam::Response &res)
{
  res.parameters = loc_param_;
  return true;

}

}


