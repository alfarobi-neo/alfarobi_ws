#ifndef NODE_H_
#define NODE_H_

#ifndef Q_MOC_RUN

#include <ros/ros.h>
#include <ros/package.h>
#include <ros/console.h>
#include <std_msgs/String.h>
#include <string>
#include <sstream>
#include <stdio.h>

#include <mcl_localization/GetLocParam.h>
#include <mcl_localization/SetLocParam.h>
#include <mcl_localization/localization_param.h>
#include <mcl_localization/localization.h>
#include <vision_simple/Points.h>

#include <QVector>
#include <QPoint>
#include <QThread>
#include <QObject>

#endif


class Node : public QThread
{
  Q_OBJECT
public:
  Node(int argc, char** argv);
  virtual ~Node();

  bool init();
  void run();

  void refreshParam();
  void setParam(std::vector<double> params_);
  void updateMCL(const mcl_localization::localization::ConstPtr &loc);
  void updateWhites(const vision_simple::Points::ConstPtr &white);
  void resetParticle();

signals:
  void rosShutdown();
  void updateParameters(mcl_localization::localization_param params);
  void updateWhites(QVector<QPointF> whites);
  void updateMCLitem(const mcl_localization::localization::ConstPtr &loc);



private:
  int init_argc_;
  char** init_argv_;

  ros::ServiceClient get_loc_param_;
  ros::Publisher set_loc_param;
  ros::Publisher mcl_reset_;

  mcl_localization::localization_param loc_param_;

};

#endif // NODE_H
