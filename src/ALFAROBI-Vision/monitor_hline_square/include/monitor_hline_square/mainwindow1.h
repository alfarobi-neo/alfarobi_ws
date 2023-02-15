#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QtCore>
#include <QtGui>
#include <QtWidgets>

#include <ros/ros.h>
#include <ros/package.h>
#include <std_msgs/Int8.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Empty.h>

#include <image_transport/image_transport.h>
#include <image_transport/publisher.h>

#include <dynamic_reconfigure/Reconfigure.h>
#include <dynamic_reconfigure/IntParameter.h>
#include <dynamic_reconfigure/Config.h>

#include <yaml-cpp/yaml.h>

#include <cv_bridge/cv_bridge.h>
#include <opencv2/core/core.hpp>

#include <sstream>

#include "monitor_hline_square/frameviewer.h"

#include "vision_utils/LUT.h"
#include "v9_ball_detector/BallDetectorParamsConfig.h"


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    ros::NodeHandle nh_;

    Ui::MainWindow *ui;

    FrameViewer *frame_viewer;

    vision_utils::LUT LUT_msg_;
    ros::Publisher LUT_pub_m;

    // For ball reference
    image_transport::ImageTransport it_;
    image_transport::Publisher it_pub_m;
    cv_bridge::CvImage cv_bf_pub_;

    QGroupBox *frame_mode_gb;
    QVBoxLayout *frame_mode_layout;
    QRadioButton *frame_mode_rb1;
    QRadioButton *frame_mode_rb2;
    QRadioButton *frame_mode_rb3;
    QRadioButton *frame_mode_rb4;

    QGroupBox *vision_mode_gb;
    QHBoxLayout *vision_mode_layout;
    QRadioButton *vision_mode_rb1;
    QRadioButton *vision_mode_rb2;
    int frame_mode_;
    ros::Publisher frame_mode_pub_m;
    std_msgs::Int8 frame_mode_msg_;

    QPushButton *save_param_pb;
    ros::Publisher save_param_pub_m;

    QGridLayout *central_layout;
    QWidget* central_widget;

    QSpacerItem *_space_test;

    QTabWidget *param_tab;
    QWidget *param1_widget;
    QWidget *param2_widget;
    QGridLayout *param1_layout;
    QGridLayout *param2_layout;

    //param1
    QLabel *lut_dir_label;
    QLineEdit *lut_dir_display;
    QPushButton *lut_dir_browse;
    QFileDialog *lut_file_dialog;
    std_msgs::Bool load_lut_msg;

    QLabel *score_label_;
    QSlider *score_slider_;
    QLabel *cost_label_;
    QSlider *cost_slider_;

    dynamic_reconfigure::ReconfigureRequest srv_req_;
    dynamic_reconfigure::ReconfigureResponse srv_resp_;

    void settingWidgets();
    void settingActions();

    //read recent value only
    void loadConfig();
private slots:
    void frameModeChange();
    void frameROI(QImage _img);
    void getColorClass(int idx);
    void browseLUT();
    void saveParam();
    void getBallReference(QImage _img);
    void updateParam1Value(int _value);
};

#endif // MAINWINDOW_H
