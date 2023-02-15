#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#ifndef Q_MOC_RUN


#include <QMainWindow>
#include <QObject>
#include <QDialog>
#include <QGraphicsItem>
#include <QGraphicsView>
#include <QGraphicsSceneHoverEvent>
#include "ui_mainwindow.h"
#include "node.h"

#include <ros/ros.h>
#include <ros/package.h>
#include <ros/console.h>
#include <string>
#include <sstream>
#include <stdio.h>

#include <mcl_localization/GetLocParam.h>
#include <mcl_localization/SetLocParam.h>
#include <mcl_localization/localization_param.h>
#include <mcl_localization/localization.h>
#include <vision_simple/Points.h>

#include <QVector>
#include <vector>
#include <QPainter>

#endif


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
  Q_OBJECT

public:
  MainWindow(int argc, char** argv, QWidget *parent = 0);
  ~MainWindow();



public slots:
  void on_param_refresh_button_clicked();
  void on_param_set_button_clicked();
  void on_mcl_reset_button_clicked();
  void updateWhites(QVector<QPointF> white);
  void updateParameters(mcl_localization::localization_param params);
  void updateMCL(const mcl_localization::localization::ConstPtr &loc);


private:
  Ui::MainWindow *ui;

  class Field : public QGraphicsItem
  {
  public:
    Field();
    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
    QRectF boundingRect() const;

  private:
    QVector<QRect> boxes;
    QVector<QLineF> lines;
    QVector<QLineF> circle_lines;
    QRectF center_circle;
  };

  class MCLItem : public QGraphicsItem
  {
  public:
    typedef QPair<QPointF,double> Pose2D;
    typedef QVector<Pose2D> Particles;
    MCLItem();
    void setParticles(Pose2D belief_, Particles particles_, Pose2D best_estimate_);
    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
    QRectF boundingRect() const;
    Pose2D bel() { return belief; }
  private:
    void hoverEnterEvent(QGraphicsSceneHoverEvent *event);
    void hoverLeaveEvent(QGraphicsSceneHoverEvent *event);
    void hoverMoveEvent(QGraphicsSceneHoverEvent *event);
  private:
    Pose2D belief;
    Pose2D best_estimate;
    Particles particles;
    QPointF hover_point;
    bool draw_text;
  };

  class WhitesItem : public QGraphicsItem
  {
  public:
    WhitesItem();
    void setWhites(QVector<QPointF> whites_);
    void setBelief(MCLItem::Pose2D bel_);
    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
    QRectF boundingRect() const;
  private:
    void hoverEnterEvent(QGraphicsSceneHoverEvent *event);
    void hoverLeaveEvent(QGraphicsSceneHoverEvent *event);
    void hoverMoveEvent(QGraphicsSceneHoverEvent *event);
  private:
    QVector<QPointF> whites;
    MCLItem::Pose2D bel;
    QPointF hover_point;
    bool draw_text;
  };



private:
  Field *field;
  QGraphicsScene *scene;
  Node node;
  ros::NodeHandle nh;

  MCLItem *mcl_item;
  WhitesItem *whites_item;

  ros::ServiceClient get_loc_param_;
  ros::Publisher set_loc_param;

  mcl_localization::localization_param loc_param_;

};

#endif // MAINWINDOW_H
