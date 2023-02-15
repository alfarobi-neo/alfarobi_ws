#include "node.h"

Node::Node(int argc, char **argv)
  : init_argc_(argc),
    init_argv_(argv)
{

  init();

}

Node::~Node()
{
  if (ros::isStarted())
  {
    ros::shutdown();  // explicitly needed since we use ros::start();
    ros::waitForShutdown();
  }
  wait();
}

bool Node::init()
{
  std::cout << "initialize node" << std::endl;
  ros::init(init_argc_, init_argv_, "mcl_viewer_node");

  if (!ros::master::check())
  {
    return false;
  }

  ros::start();  // explicitly needed since our nodehandle is going out of scope.
  start();

  return true;

}

void Node::run()
{
  ros::NodeHandle ros_node;

  ros::Subscriber loc_pub_ = ros_node.subscribe("mcl_localization_node/localization_data", 10, &Node::updateMCL, this);
  ros::Subscriber global_white_pub = ros_node.subscribe("mcl_localization_node/global_white_pts", 10, &Node::updateWhites, this);
  set_loc_param = ros_node.advertise<mcl_localization::localization_param>("/mcl_localization_node/set_param", 10);
  get_loc_param_ = ros_node.serviceClient<mcl_localization::GetLocParam>("/mcl_localization_node/get_params");
  mcl_reset_ = ros_node.advertise<std_msgs::String>("/mcl_localization_node/reset_particle", 10);

  ros::Rate loop_rate(30);

  while (ros::ok())
  {
    ros::spinOnce();
    loop_rate.sleep();
  }

  std::cout << "Ros shutdown, proceeding to close the gui." << std::endl;
  emit rosShutdown();  // used to signal the gui for a shutdown (useful to roslaunch)
}

void Node::setParam(std::vector<double> params_)
{
  mcl_localization::localization_param param_msgs;
  param_msgs.mgauss_x = params_[0];
  param_msgs.mgauss_y = params_[1];
  param_msgs.mgauss_w = params_[2];
  param_msgs.vgauss_x = params_[3];
  param_msgs.vgauss_y = params_[4];
  param_msgs.mcl_afast = params_[5];
  param_msgs.mcl_aslow = params_[6];
  param_msgs.mcl_variance = params_[7];
  param_msgs.mcl_wcmps = params_[8];

  set_loc_param.publish(param_msgs);
  std::cout << "Update Parameters" << std::endl;
}

void Node::refreshParam()
{
  mcl_localization::GetLocParam param_msgs;

  if (get_loc_param_.call(param_msgs))
  {
    loc_param_ = param_msgs.response.parameters;
    emit updateParameters(loc_param_);
  }

}

void Node::resetParticle()
{
  std_msgs::String msg;
  msg.data = "reset";
  mcl_reset_.publish(msg);
}

void Node::updateMCL(const mcl_localization::localization::ConstPtr &loc)
{
  emit updateMCLitem(loc);

}

void Node::updateWhites(const vision_simple::Points::ConstPtr &white)
{
  QVector<QPointF> whites;
  for(auto w: white->WhitePoints)
    whites.push_back(QPointF(w.x, w.y));

  emit updateWhites(whites);
}
