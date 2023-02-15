#include "mainwindow.h"

#define FIELD_WIDTH 900
#define FIELD_HEIGHT 600
#define BORDER 100

#define PENALTY_WIDTH 100
#define PENALTY_HEIGHT 500
#define PENALTY_X1 -FIELD_WIDTH/2
#define PENALTY_Y1 -FIELD_HEIGHT/2+50
#define PENALTY_X2 FIELD_WIDTH/2-PENALTY_WIDTH
#define PENALTY_Y2 PENALTY_Y1
#define PENALTY_POINT 210

#define GOAL_WIDTH 60
#define GOAL_HEIGHT 260
#define GOAL_X1 -FIELD_WIDTH/2 - GOAL_WIDTH
#define GOAL_Y1 -FIELD_HEIGHT/2 + 170
#define GOAL_X2 FIELD_WIDTH/2
#define GOAL_Y2 -FIELD_HEIGHT/2 + 170

#define LINE_X1 0
#define LINE_X2 0
#define LINE_Y1 -FIELD_HEIGHT/2
#define LINE_Y2 FIELD_HEIGHT/2

//#define GLOBAL_WHITES

MainWindow::MainWindow(int argc, char** argv, QWidget *parent) :
  QMainWindow(parent),
  node(argc, argv),
  ui(new Ui::MainWindow)
{
//  node.init();
  node.refreshParam();

  field = new Field;
  ui->setupUi(this);
  scene = new QGraphicsScene(this);
  scene->setSceneRect(-FIELD_WIDTH/2-BORDER, -FIELD_HEIGHT/2-BORDER, FIELD_WIDTH + 2*BORDER, FIELD_HEIGHT + 2*BORDER);
  ui->graphicsView->setScene(scene);
  ui->graphicsView->scale(0.5, 0.5);
  ui->graphicsView->scene()->addItem(field);

  mcl_item = new MCLItem;
  whites_item = new WhitesItem;

  ui->graphicsView->scene()->addItem(whites_item);
  ui->graphicsView->scene()->addItem(mcl_item);

  QObject::connect(&node, SIGNAL(updateParameters(mcl_localization::localization_param)), this,
                   SLOT(updateParameters(mcl_localization::localization_param)));
  QObject::connect(&node, SIGNAL(rosShutdown()), this, SLOT(close()));
  qRegisterMetaType<QVector<QPointF>>("QVector<QPointF>");
  QObject::connect(&node, SIGNAL(updateWhites(QVector<QPointF>)), this, SLOT(updateWhites(QVector<QPointF>)));
  qRegisterMetaType<mcl_localization::localization::ConstPtr>("mcl_localization::localization::ConstPtr");
  QObject::connect(&node, SIGNAL(updateMCLitem(mcl_localization::localization::ConstPtr)), this, SLOT(updateMCL(mcl_localization::localization::ConstPtr)));

  this->setFixedSize(this->size()+QSize(50,50));
  this->setWindowTitle("Alfarobi AMCL Viewer");


  on_param_refresh_button_clicked();

}

MainWindow::~MainWindow()
{
  delete ui;
}

MainWindow::Field::Field()
{
  boxes.push_back(QRect((-FIELD_WIDTH/2), -FIELD_HEIGHT/2, FIELD_WIDTH, FIELD_HEIGHT));
  boxes.push_back(QRect(PENALTY_X1, PENALTY_Y1, PENALTY_WIDTH, PENALTY_HEIGHT));
  boxes.push_back(QRect(PENALTY_X2, PENALTY_Y2, PENALTY_WIDTH, PENALTY_HEIGHT));
  boxes.push_back(QRect(GOAL_X1, GOAL_Y1, GOAL_WIDTH, GOAL_HEIGHT));
  boxes.push_back(QRect(GOAL_X2, GOAL_Y2, GOAL_WIDTH, GOAL_HEIGHT));
  lines.push_back(QLine(LINE_X1, LINE_Y1, LINE_X2, LINE_Y2));

}

void MainWindow::Field::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget)
{
  painter->setPen(Qt::transparent);
  painter->setBrush(Qt::green);
  painter->drawRect(boundingRect());
  painter->setPen(QPen(Qt::white,5));
  painter->setBrush(Qt::transparent);
  painter->drawRects(boxes);
  painter->drawLines(lines);
  painter->drawEllipse(QPoint(0,0), 75, 75);
  Qt::BrushStyle style = Qt::SolidPattern;
  painter->setBrush(QBrush(Qt::white, style));
  painter->drawEllipse(QPoint(0,0), 10, 10);
  painter->drawEllipse(QPoint(-PENALTY_POINT, 0), 5, 5);
  painter->drawEllipse(QPoint(PENALTY_POINT, 0), 5, 5);

}

QRectF MainWindow::Field::boundingRect() const
{
  return QRectF(-FIELD_WIDTH/2-BORDER,-FIELD_HEIGHT/2-BORDER,FIELD_WIDTH+2*BORDER,FIELD_HEIGHT+2*BORDER);
}

void MainWindow::on_param_refresh_button_clicked()
{
  node.refreshParam();
}

void MainWindow::on_mcl_reset_button_clicked()
{
  node.resetParticle();
}

void MainWindow::on_param_set_button_clicked()
{
  std::vector<double> params_;
  params_.resize(9);

  params_[0] = ui->dspin_mgauss_x->value();
  params_[1] = ui->dspin_mgauss_y->value();
  params_[2] = ui->dspin_mgauss_w->value();
  params_[3] = ui->dspin_vgauss_x->value();
  params_[4] = ui->dspin_vgauss_x->value();
  params_[5] = ui->dspin_mcl_afast->value();
  params_[6] = ui->dspin_mcl_aslow->value();
  params_[7] = ui->dspin_mcl_variance->value();
  params_[8] = ui->dspin_mcl_wcmps->value();

  node.setParam(params_);
}

void MainWindow::updateParameters(mcl_localization::localization_param params)
{
  ui->dspin_mgauss_x->setValue(params.mgauss_x);
  ui->dspin_mgauss_y->setValue(params.mgauss_y);
  ui->dspin_mgauss_w->setValue(params.mgauss_w);
  ui->dspin_mcl_afast->setValue(params.mcl_afast);
  ui->dspin_mcl_aslow->setValue(params.mcl_aslow);
  ui->dspin_mcl_variance->setValue(params.mcl_variance);
  ui->dspin_vgauss_x->setValue(params.vgauss_x);
  ui->dspin_vgauss_y->setValue(params.vgauss_y);
  ui->dspin_mcl_wcmps->setValue(params.mcl_wcmps);

}

void MainWindow::updateMCL(const mcl_localization::localization::ConstPtr &loc)
{
  static auto last_update = ros::Time::now();
  auto now = ros::Time::now();
  ros::Duration dt = now-last_update;
  if(dt>ros::Duration(ros::Rate(10)))
  {
    MCLItem::Pose2D bel(QPointF(loc->belief.x,loc->belief.y),loc->belief.theta);
    MCLItem::Pose2D best(QPointF(loc->best_estimation.x,loc->best_estimation.y),loc->best_estimation.theta);
    MCLItem::Particles particles;
    whites_item->setBelief(bel);
    for(auto p : loc->particles)
      particles.push_back(MCLItem::Pose2D(QPointF(p.x,p.y),p.theta));
    mcl_item->setParticles(bel,particles,best);
    mcl_item->update();
    last_update = now;
  }
}

void MainWindow::updateWhites(QVector<QPointF> white)
{
  static ros::Time last_update; // = ros::Time::now();
  auto now = ros::Time::now();
  ros::Duration dt = now-last_update;

  if(dt>ros::Duration(ros::Rate(10)))
  {
    whites_item->setWhites(white);
    whites_item->update();
    last_update = now;
  }
}

MainWindow::MCLItem::MCLItem()
{
  this->setAcceptHoverEvents(true);
}

void MainWindow::MCLItem::setParticles(Pose2D belief_, Particles particles_, Pose2D best_estimate_)
{
  belief = belief_;
  particles = particles_;
  best_estimate = best_estimate_;
}

void MainWindow::MCLItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget)
{
  auto matrix0 = painter->matrix();
  QPointF belief_point(belief.first.x(),belief.first.y());
  QPointF best_point(best_estimate.first.x(),best_estimate.first.y());
  painter->setPen(Qt::red);

  double c = cos(belief.second * M_PI/180);
  double s = sin(belief.second * M_PI/180);

  painter->scale(1,-1);

  //robot
  painter->setPen(Qt::red);
  QRectF robot(-20, -20, 40, 40);
  robot.translate(belief_point);
  double rot_lx = c*40-s*0;
  double rot_ly = s*40+c*0;
  painter->drawLine(belief_point, belief_point + QPointF(rot_lx, rot_ly));
  painter->drawEllipse(robot);

  painter->setBrush(Qt::blue);
  for(auto& p: particles)
  {
      QRectF particle_(-10, -10, 20, 20);
      double x = p.first.x();
      double y = p.first.y();
      double w = p.second;
      if(abs(x) > (FIELD_WIDTH/2) + GOAL_WIDTH || abs(y) > (FIELD_HEIGHT/2)) continue;
      particle_.translate(x, y);
      double c = cos(w * M_PI/180);
      double s = sin(w * M_PI/180);
      painter->setPen(Qt::blue);
      double rot_lx = c*40-s*0;
      double rot_ly = s*40+c*0;
      painter->drawLine(QPointF(x,y), QPointF(x,y) + QPointF(rot_lx, rot_ly));
      painter->drawEllipse(particle_);
      //    if((translate_point-hover_point).manhattanLength()<10)
      //      text = QString("(%1,%2,%3)").arg(p.first.x()).arg(p.first.y()).arg(p.second);
      //    painter->drawEllipse(QPointF(0.0,0.0),5.0,5.0);
      //    painter->drawLine(QPointF(0.0,0.0),QPointF(10.0,0.0));
  }


  QString text;
//  for(auto& p : particles)
//  {
//    painter->setMatrix(matrix0);
//    QPointF translate_point(p.first.x(),-p.first.y());
//    painter->translate(translate_point);
//    painter->rotate(-p.second*180/M_PI);

//  }
  if(draw_text)
  {
    painter->setMatrix(matrix0);
    painter->setPen(Qt::black);
    auto draw_point = hover_point;
    if(!text.isEmpty())
      painter->drawText(hover_point,text);
    if((best_point-hover_point).manhattanLength()<20)
    {
      draw_point-=QPointF(0.0,10.0);
      text = QString("(%1,%2,%3)").arg(best_estimate.first.x()).arg(best_estimate.first.y()).arg(best_estimate.second*180/M_PI);
      painter->drawText(draw_point,text);
    }
    if((belief_point-hover_point).manhattanLength()<20)
    {
      draw_point-=QPointF(0.0,10.0);
      text = QString("(%1,%2,%3)").arg(belief.first.x()).arg(belief.first.y()).arg(belief.second);
      painter->drawText(draw_point,text);
    }
  }
//  painter->setMatrix(matrix0);
//  painter->translate(belief_point);
//  painter->rotate(-belief.second*180/M_PI);
//  painter->setPen(Qt::red);
//  painter->drawEllipse(QPointF(0.0,0.0),25.0,25.0);
//  painter->drawLine(QPointF(0.0,0.0),QPointF(50.0,0.0));
//  painter->setMatrix(matrix0);
//  painter->translate(best_point);
//  painter->rotate(-best_estimate.second*180/M_PI);
//  painter->setPen(Qt::blue);
//  painter->drawEllipse(QPointF(0.0,0.0),25.0,25.0);
//  painter->drawLine(QPointF(0.0,0.0),QPointF(50.0,0.0));
}

QRectF MainWindow::MCLItem::boundingRect() const
{
  return QRectF(-FIELD_WIDTH/2-BORDER,-FIELD_HEIGHT/2-BORDER,FIELD_WIDTH+2*BORDER,FIELD_HEIGHT+2*BORDER);
}

void MainWindow::MCLItem::hoverEnterEvent(QGraphicsSceneHoverEvent *event)
{
  draw_text = true;
  hover_point = event->pos();
}

void MainWindow::MCLItem::hoverLeaveEvent(QGraphicsSceneHoverEvent *event)
{
  draw_text = false;
}

void MainWindow::MCLItem::hoverMoveEvent(QGraphicsSceneHoverEvent *event)
{
  hover_point = event->pos();
}

MainWindow::WhitesItem::WhitesItem()
{
  this->setAcceptHoverEvents(true);
}

void MainWindow::WhitesItem::setWhites(QVector<QPointF> whites_)
{
  whites = whites_;
}

void MainWindow::WhitesItem::setBelief(MainWindow::MCLItem::Pose2D bel_)
{
  bel=bel_;
}

void MainWindow::WhitesItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget)
{
  painter->setPen(Qt::blue);
  painter->scale(1,-1);
  double x_ = bel.first.x();
  double y_ = bel.first.y();
  double w_ = bel.second;
  double c = cos(w_ * M_PI/180);
  double s = sin(w_ * M_PI/180);
#ifndef GLOBAL_WHITES

  for(auto& w : whites)
  {
    double point_x = c*w.x()-s*w.y()+x_;
    double point_y = s*w.x()+c*w.y()+y_;
    if(abs(point_x) > (FIELD_WIDTH/2) + GOAL_WIDTH || abs(point_y) > (FIELD_HEIGHT/2)) continue;
    painter->drawEllipse(QPointF(point_x, point_y), 5, 5);
  }
#else
  QString text;
  for(auto& w : whites)
  {
    QPointF draw_point(w.x(),-w.y());
    if((draw_point-hover_point).manhattanLength()<20)
      text = QString("(%1,%2)").arg(w.x()).arg(w.y());
    painter->drawEllipse(draw_point,3.0,3.0);
  }
  if(draw_text)
    if(!text.isEmpty())
    {
      painter->setPen(Qt::darkBlue);
      painter->drawText(hover_point,text);
    }
#endif
}

QRectF MainWindow::WhitesItem::boundingRect() const
{
  return QRectF(-FIELD_WIDTH/2-BORDER,-FIELD_HEIGHT/2-BORDER,FIELD_WIDTH+2*BORDER,FIELD_HEIGHT+2*BORDER);
}

void MainWindow::WhitesItem::hoverEnterEvent(QGraphicsSceneHoverEvent *event)
{
  draw_text = true;
  hover_point = event->pos();
}

void MainWindow::WhitesItem::hoverLeaveEvent(QGraphicsSceneHoverEvent *event)
{
  draw_text = false;
}

void MainWindow::WhitesItem::hoverMoveEvent(QGraphicsSceneHoverEvent *event)
{
  hover_point = event->pos();
}
