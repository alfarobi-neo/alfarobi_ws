#include "cat2_monitor/mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    nh_(ros::this_node::getName()),
    it_(nh_){

    ui->setupUi(this);

    central_layout = new QGridLayout;
    central_widget = new QWidget;

    settingWidgets();
    settingActions();
    loadConfig();

    central_widget->setLayout(central_layout);

    std::stringstream icon_path;
    icon_path << ros::package::getPath("cat2_monitor") << "/icon/logo_alfarobi.png";
    QIcon icon_file;
    icon_file.addFile(icon_path.str().c_str());
    this->setWindowIcon(icon_file);

    std::stringstream style_path;
    style_path << ros::package::getPath("cat2_monitor") << "/style/vision_style.qss";
    QFile style_file(style_path.str().c_str());
    style_file.open(QFile::ReadOnly);
    QString read_style(style_file.readAll());
    this->setStyleSheet(read_style);

    this->setCentralWidget(central_widget);
    this->removeToolBar(ui->mainToolBar);
    this->setWindowTitle(tr("Categories 2 Monitor"));
    this->setMaximumSize(this->centralWidget()->width(),this->centralWidget()->height());

    LUT_pub_ = nh_.advertise<vision_utils::LUT>("LUT_data",10);
    frame_mode_pub_ = nh_.advertise<std_msgs::Int8>("frame_mode",100);
    save_param_pub_ = nh_.advertise<std_msgs::Empty>("save_param",10);

    it_pub_ = it_.advertise("square_ref",10);

    frame_viewer->startStream();
}

MainWindow::~MainWindow(){
    frame_viewer->stopStream();
    delete ui;
}

void MainWindow::settingWidgets(){
    frame_viewer = new FrameViewer;
    frame_viewer->setFixedSize(QSize(640,480));
    frame_viewer->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
    frame_viewer->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
    frame_viewer->verticalScrollBar()->blockSignals(true);
    frame_viewer->horizontalScrollBar()->blockSignals(true);

    frame_mode_gb = new QGroupBox;
    frame_mode_layout = new QVBoxLayout;
    frame_mode_rb1 = new QRadioButton;
    frame_mode_rb2 = new QRadioButton;
    frame_mode_rb3 = new QRadioButton;
    frame_mode_rb4 = new QRadioButton;

    frame_mode_rb1->setText(tr("Input"));
    frame_mode_rb1->setChecked(true);
    frame_mode_rb2->setText(tr("HSV"));
    frame_mode_rb3->setText(tr("Threshold"));
    frame_mode_rb4->setText(tr("Output"));
    frame_mode_layout->addWidget(frame_mode_rb1);
    frame_mode_layout->addWidget(frame_mode_rb2);
    frame_mode_layout->addWidget(frame_mode_rb3);
    frame_mode_layout->addWidget(frame_mode_rb4);
    frame_mode_layout->addStretch(1);
    frame_mode_gb->setTitle(tr("Frame Mode"));
    frame_mode_gb->setLayout(frame_mode_layout);
    frame_mode_gb->setFixedSize(frame_mode_gb->minimumSizeHint());

    save_param_pb = new QPushButton;
    save_param_pb->setText(tr("Save"));

    vision_mode_gb = new QGroupBox;
    vision_mode_layout = new QHBoxLayout;
    vision_mode_rb1 = new QRadioButton;
    vision_mode_rb2 = new QRadioButton;
    vision_mode_rb1->setText(tr("Uniform"));
    vision_mode_rb1->setChecked(true);
    vision_mode_rb2->setText(tr("Non-Uniform"));
    vision_mode_layout->addWidget(vision_mode_rb1);
    vision_mode_layout->addWidget(vision_mode_rb2);
    vision_mode_layout->addStretch(1);
    vision_mode_gb->setTitle(tr("Vision Mode"));
    vision_mode_gb->setLayout(vision_mode_layout);
    vision_mode_gb->setFixedSize(vision_mode_gb->minimumSizeHint());

    lut_dir_label = new QLabel;
    lut_dir_label->setText(tr("LUT Directory"));

    lut_dir_display = new QLineEdit;
    lut_dir_display->setText(tr("/home/hernanta/LUT.xml"));
    lut_dir_display->setEnabled(false);

    lut_dir_browse = new QPushButton;
    lut_dir_browse->setText(tr("Browse"));
    lut_dir_browse->setFixedSize(lut_dir_browse->minimumSizeHint());

    score_slider_ = new QSlider;
    score_slider_->setMaximum(2000);
    score_slider_->setMinimum(0);
    score_slider_->setTickInterval(2000);
    score_slider_->setSingleStep(1);
    score_slider_->setSizePolicy(QSizePolicy::Expanding,QSizePolicy::Fixed);
    score_slider_->setOrientation(Qt::Horizontal);
    score_slider_->setValue(20);//Default value

    score_label_ = new QLabel;
    score_label_->setText(tr("Score : %1").arg(score_slider_->value()));

    ratio1_slider_ = new QSlider;
    ratio1_slider_->setMaximum(2000);
    ratio1_slider_->setMinimum(0);
    ratio1_slider_->setTickInterval(2000);
    ratio1_slider_->setSingleStep(1);
    ratio1_slider_->setSizePolicy(QSizePolicy::Expanding,QSizePolicy::Fixed);
    ratio1_slider_->setOrientation(Qt::Horizontal);
    ratio1_slider_->setValue(20);//Default value

    ratio1_label_ = new QLabel;
    ratio1_label_->setText(tr("Ratio 1 : %1").arg(ratio1_slider_->value()));

    ratio2_slider_ = new QSlider;
    ratio2_slider_->setMaximum(2000);
    ratio2_slider_->setMinimum(0);
    ratio2_slider_->setTickInterval(2000);
    ratio2_slider_->setSingleStep(1);
    ratio2_slider_->setSizePolicy(QSizePolicy::Expanding,QSizePolicy::Fixed);
    ratio2_slider_->setOrientation(Qt::Horizontal);
    ratio2_slider_->setValue(20);//Default value

    ratio2_label_ = new QLabel;
    ratio2_label_->setText(tr("Ratio 2 : %1").arg(ratio2_slider_->value()));

    param1_layout = new QGridLayout;
    param1_layout->addWidget(lut_dir_label,  0,0,1,1);
    param1_layout->addWidget(lut_dir_display,1,0,1,1);
    param1_layout->addWidget(lut_dir_browse, 1,1,1,1);
    param1_layout->addWidget(score_label_,   2,0,1,1);
    param1_layout->addWidget(score_slider_,  3,0,1,2);
    param1_layout->addWidget(ratio1_label_,    4,0,1,1);
    param1_layout->addWidget(ratio1_slider_,   5,0,1,2);
    param1_layout->addWidget(ratio2_label_,    6,0,1,1);
    param1_layout->addWidget(ratio2_slider_,   7,0,1,2);    
    param1_layout->addItem(new QSpacerItem(0,0,QSizePolicy::Expanding,QSizePolicy::Expanding),6,2);

    param1_widget = new QWidget;
    param1_widget->setLayout(param1_layout);

    param_tab = new QTabWidget;
    param_tab->addTab(param1_widget,"Uniform");
    param_tab->addTab(new QWidget(),"Non-Uniform");
    param_tab->setFixedSize(param_tab->minimumSizeHint());

    central_layout->addWidget(frame_viewer,  0,0,4,1);
    central_layout->addWidget(frame_mode_gb, 0,1,1,1);
    central_layout->addWidget(save_param_pb, 1,1,1,1);
    central_layout->addWidget(param_tab,     0,2,2,1);
    central_layout->addWidget(vision_mode_gb,4,0,1,1);
    central_layout->addItem(new QSpacerItem(0,0,QSizePolicy::Expanding, QSizePolicy::Expanding),5,3);
}

void MainWindow::settingActions(){
    connect(frame_mode_rb1,SIGNAL(clicked(bool)),this,SLOT(frameModeChange()));
    connect(frame_mode_rb2,SIGNAL(clicked(bool)),this,SLOT(frameModeChange()));
    connect(frame_mode_rb3,SIGNAL(clicked(bool)),this,SLOT(frameModeChange()));
    connect(frame_mode_rb4,SIGNAL(clicked(bool)),this,SLOT(frameModeChange()));
    connect(frame_viewer,SIGNAL(getROI(QImage)),this,SLOT(frameROI(QImage)));
    connect(frame_viewer,SIGNAL(colorClass(int)),this,SLOT(getColorClass(int)));
    connect(frame_viewer,SIGNAL(squareReference(QImage)),this,SLOT(getSquareReference(QImage)));
    connect(lut_dir_browse,SIGNAL(clicked(bool)),this,SLOT(browseLUT()));
    connect(save_param_pb,SIGNAL(clicked(bool)),this,SLOT(saveParam()));
    connect(score_slider_,SIGNAL(valueChanged(int)),this,SLOT(updateParam1Value(int)));
    connect(ratio1_slider_,SIGNAL(valueChanged(int)),this,SLOT(updateParam1Value(int)));
    connect(ratio2_slider_,SIGNAL(valueChanged(int)),this,SLOT(updateParam1Value(int)));
}

void MainWindow::saveParam(){
    QMessageBox save_msg_box;
    save_msg_box.setWindowTitle(tr("Info"));
    save_msg_box.setText(tr("Save ?"));
    save_msg_box.setStandardButtons(QMessageBox::Save | QMessageBox::Cancel);
    save_msg_box.setDefaultButton(QMessageBox::Save);
    int ret = save_msg_box.exec();
    if(ret == QMessageBox::Save){
        std_msgs::Empty msg;
        save_param_pub_.publish(msg);
    }
}

void MainWindow::browseLUT(){
    QString LUT_path = QFileDialog::getOpenFileName(this,"Search LUT file...",ros::package::getPath("v10_cat2_detector").c_str(),"XML File(*.xml)");
    if(LUT_path.isEmpty())return;
    lut_dir_display->setText(LUT_path);
    cv::FileStorage fs(LUT_path.toStdString().c_str(),cv::FileStorage::READ);
    cv::Mat loaded_LUT;    
    fs["Tabel_Warna"] >> loaded_LUT;    
    fs.release();
    LUT_msg_.color.resize(loaded_LUT.cols*loaded_LUT.rows);
    for(int i=0;i<loaded_LUT.rows;i++){
        uchar *loaded_LUT_ptr = loaded_LUT.ptr<uchar>(i);
        for(int j=0;j<loaded_LUT.cols;j++){
            int curr_idx = j + i*loaded_LUT.cols;
            LUT_msg_.color[curr_idx].x = i;
            LUT_msg_.color[curr_idx].y = j;
            LUT_msg_.color[curr_idx].z = loaded_LUT_ptr[j];
        }
    }
    LUT_pub_.publish(LUT_msg_);
    LUT_msg_.color.clear();
}

void MainWindow::frameModeChange(){
    QObject *_sender = sender();
    if(_sender == frame_mode_rb1)
        frame_mode_msg_.data = 0;
    else if(_sender == frame_mode_rb2)
        frame_mode_msg_.data = 1;
    else if(_sender == frame_mode_rb3)
        frame_mode_msg_.data = 2;
    else if(_sender == frame_mode_rb4)
        frame_mode_msg_.data = 3;
    else
        frame_mode_msg_.data = 0;

    frame_mode_pub_.publish(frame_mode_msg_);
}

void MainWindow::getColorClass(int idx){
    LUT_msg_.color_class.data = idx;
}

void MainWindow::frameROI(QImage _img){
    LUT_msg_.color.clear();
    uchar* data_buffer = _img.bits();
    int LUT_size = _img.width()*_img.height();
    LUT_msg_.color.resize(LUT_size);
    cv::Mat frame_roi(_img.height(),_img.width(),CV_8UC3,data_buffer,_img.bytesPerLine());
    cv::cvtColor(frame_roi,frame_roi,CV_BGR2HSV);
    for(int i=0;i<frame_roi.rows;i++){
        for(int j=0;j<frame_roi.cols;j++){
            int curr_idx = j + i*frame_roi.cols;
            LUT_msg_.color[curr_idx].x = frame_roi.at<cv::Vec3b > (i,j)[0];
            LUT_msg_.color[curr_idx].y = frame_roi.at<cv::Vec3b > (i,j)[1];

        }
    }
    LUT_pub_.publish(LUT_msg_);
}

void MainWindow::getSquareReference(QImage _img){
    cv::Mat square_ref(_img.height(), _img.width(), CV_8UC3, _img.bits(), _img.bytesPerLine());
    cv::cvtColor(square_ref,square_ref,CV_BGR2RGB);
    cv_bf_pub_.image = square_ref;
    cv_bf_pub_.encoding = sensor_msgs::image_encodings::BGR8;
    it_pub_.publish(cv_bf_pub_.toImageMsg());
}

void MainWindow::updateParam1Value(int _value){
    QObject *object = sender();

    dynamic_reconfigure::IntParameter int_param;
    dynamic_reconfigure::Config conf;

    if(object == score_slider_){
        score_label_->setText(tr("Score : %1").arg((float)_value/10.0f));
        int_param.name = "score";
        int_param.value = _value;
    }else if(object == ratio1_slider_){
        ratio1_label_->setText(tr("Ratio 1 : %1").arg((float)_value/100.0f));
        int_param.name = "ratio1";
        int_param.value = _value;
    }else if(object == ratio2_slider_){
        ratio2_label_->setText(tr("Ratio 2 : %1").arg((float)_value/100.0f));
        int_param.name = "ratio2";
        int_param.value = _value;
    }
    conf.ints.push_back(int_param);
    srv_req_.config = conf;
    ros::service::call("/v10_cat2_detector_node/set_parameters",srv_req_,srv_resp_);

}

void MainWindow::loadConfig(){
    YAML::Node config_file;
    try{
        config_file = YAML::LoadFile(ros::package::getPath("v10_cat2_detector") + "/config/saved_config.yaml");
    }catch(const std::exception &e){
        ROS_ERROR("[cat2_monitor] Problem while opening config file !!!");
    }

    score_slider_->setValue(config_file["score"].as<int>());
    ratio1_slider_->setValue(config_file["ratio1"].as<int>());
    ratio2_slider_->setValue(config_file["ratio2"].as<int>());
}