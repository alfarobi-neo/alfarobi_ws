/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCharts/QChartView>
#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QGraphicsView *graphicsView;
    QGroupBox *groupBox;
    QWidget *horizontalLayoutWidget;
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QComboBox *device_list;
    QWidget *horizontalLayoutWidget_2;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *refresh_button;
    QPushButton *connect_button;
    QComboBox *baud_rate_box;
    QWidget *horizontalLayoutWidget_4;
    QHBoxLayout *horizontalLayout_4;
    QLabel *label_3;
    QLabel *buttonStatus;
    QTabWidget *tabWidget;
    QWidget *imu_tab;
    QChartView *plotter_imu;
    QWidget *gyro_tab;
    QChartView *plotter_gyro;
    QWidget *horizontalLayoutWidget_3;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_4;
    QLabel *plotter_roll_val;
    QLabel *label_5;
    QLabel *plotter_pitch_val;
    QLabel *label_6;
    QLabel *plotter_yaw_val;
    QPushButton *offset_btn;
    QWidget *horizontalLayoutWidget_5;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label_2;
    QLabel *offset_value;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(900, 500);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        graphicsView = new QGraphicsView(centralWidget);
        graphicsView->setObjectName(QStringLiteral("graphicsView"));
        graphicsView->setGeometry(QRect(20, 140, 261, 251));
        groupBox = new QGroupBox(centralWidget);
        groupBox->setObjectName(QStringLiteral("groupBox"));
        groupBox->setGeometry(QRect(20, 10, 421, 101));
        horizontalLayoutWidget = new QWidget(groupBox);
        horizontalLayoutWidget->setObjectName(QStringLiteral("horizontalLayoutWidget"));
        horizontalLayoutWidget->setGeometry(QRect(10, 20, 401, 31));
        horizontalLayout = new QHBoxLayout(horizontalLayoutWidget);
        horizontalLayout->setSpacing(6);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(horizontalLayoutWidget);
        label->setObjectName(QStringLiteral("label"));

        horizontalLayout->addWidget(label);

        device_list = new QComboBox(horizontalLayoutWidget);
        device_list->setObjectName(QStringLiteral("device_list"));

        horizontalLayout->addWidget(device_list);

        horizontalLayoutWidget_2 = new QWidget(groupBox);
        horizontalLayoutWidget_2->setObjectName(QStringLiteral("horizontalLayoutWidget_2"));
        horizontalLayoutWidget_2->setGeometry(QRect(10, 60, 401, 31));
        horizontalLayout_2 = new QHBoxLayout(horizontalLayoutWidget_2);
        horizontalLayout_2->setSpacing(6);
        horizontalLayout_2->setContentsMargins(11, 11, 11, 11);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(0, 0, 0, 0);
        refresh_button = new QPushButton(horizontalLayoutWidget_2);
        refresh_button->setObjectName(QStringLiteral("refresh_button"));

        horizontalLayout_2->addWidget(refresh_button);

        connect_button = new QPushButton(horizontalLayoutWidget_2);
        connect_button->setObjectName(QStringLiteral("connect_button"));

        horizontalLayout_2->addWidget(connect_button);

        baud_rate_box = new QComboBox(horizontalLayoutWidget_2);
        baud_rate_box->setObjectName(QStringLiteral("baud_rate_box"));

        horizontalLayout_2->addWidget(baud_rate_box);

        horizontalLayoutWidget_4 = new QWidget(centralWidget);
        horizontalLayoutWidget_4->setObjectName(QStringLiteral("horizontalLayoutWidget_4"));
        horizontalLayoutWidget_4->setGeometry(QRect(290, 140, 151, 41));
        horizontalLayout_4 = new QHBoxLayout(horizontalLayoutWidget_4);
        horizontalLayout_4->setSpacing(6);
        horizontalLayout_4->setContentsMargins(11, 11, 11, 11);
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        horizontalLayout_4->setContentsMargins(0, 0, 0, 0);
        label_3 = new QLabel(horizontalLayoutWidget_4);
        label_3->setObjectName(QStringLiteral("label_3"));

        horizontalLayout_4->addWidget(label_3);

        buttonStatus = new QLabel(horizontalLayoutWidget_4);
        buttonStatus->setObjectName(QStringLiteral("buttonStatus"));

        horizontalLayout_4->addWidget(buttonStatus);

        tabWidget = new QTabWidget(centralWidget);
        tabWidget->setObjectName(QStringLiteral("tabWidget"));
        tabWidget->setGeometry(QRect(460, 10, 421, 381));
        imu_tab = new QWidget();
        imu_tab->setObjectName(QStringLiteral("imu_tab"));
        plotter_imu = new QChartView(imu_tab);
        plotter_imu->setObjectName(QStringLiteral("plotter_imu"));
        plotter_imu->setGeometry(QRect(10, 10, 401, 331));
        tabWidget->addTab(imu_tab, QString());
        gyro_tab = new QWidget();
        gyro_tab->setObjectName(QStringLiteral("gyro_tab"));
        plotter_gyro = new QChartView(gyro_tab);
        plotter_gyro->setObjectName(QStringLiteral("plotter_gyro"));
        plotter_gyro->setGeometry(QRect(10, 10, 401, 331));
        tabWidget->addTab(gyro_tab, QString());
        horizontalLayoutWidget_3 = new QWidget(centralWidget);
        horizontalLayoutWidget_3->setObjectName(QStringLiteral("horizontalLayoutWidget_3"));
        horizontalLayoutWidget_3->setGeometry(QRect(460, 400, 421, 31));
        horizontalLayout_3 = new QHBoxLayout(horizontalLayoutWidget_3);
        horizontalLayout_3->setSpacing(6);
        horizontalLayout_3->setContentsMargins(11, 11, 11, 11);
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        horizontalLayout_3->setContentsMargins(0, 0, 0, 0);
        label_4 = new QLabel(horizontalLayoutWidget_3);
        label_4->setObjectName(QStringLiteral("label_4"));

        horizontalLayout_3->addWidget(label_4);

        plotter_roll_val = new QLabel(horizontalLayoutWidget_3);
        plotter_roll_val->setObjectName(QStringLiteral("plotter_roll_val"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(plotter_roll_val->sizePolicy().hasHeightForWidth());
        plotter_roll_val->setSizePolicy(sizePolicy);

        horizontalLayout_3->addWidget(plotter_roll_val);

        label_5 = new QLabel(horizontalLayoutWidget_3);
        label_5->setObjectName(QStringLiteral("label_5"));

        horizontalLayout_3->addWidget(label_5);

        plotter_pitch_val = new QLabel(horizontalLayoutWidget_3);
        plotter_pitch_val->setObjectName(QStringLiteral("plotter_pitch_val"));
        QSizePolicy sizePolicy1(QSizePolicy::Expanding, QSizePolicy::MinimumExpanding);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(plotter_pitch_val->sizePolicy().hasHeightForWidth());
        plotter_pitch_val->setSizePolicy(sizePolicy1);

        horizontalLayout_3->addWidget(plotter_pitch_val);

        label_6 = new QLabel(horizontalLayoutWidget_3);
        label_6->setObjectName(QStringLiteral("label_6"));

        horizontalLayout_3->addWidget(label_6);

        plotter_yaw_val = new QLabel(horizontalLayoutWidget_3);
        plotter_yaw_val->setObjectName(QStringLiteral("plotter_yaw_val"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(plotter_yaw_val->sizePolicy().hasHeightForWidth());
        plotter_yaw_val->setSizePolicy(sizePolicy2);

        horizontalLayout_3->addWidget(plotter_yaw_val);

        offset_btn = new QPushButton(centralWidget);
        offset_btn->setObjectName(QStringLiteral("offset_btn"));
        offset_btn->setGeometry(QRect(290, 230, 80, 22));
        horizontalLayoutWidget_5 = new QWidget(centralWidget);
        horizontalLayoutWidget_5->setObjectName(QStringLiteral("horizontalLayoutWidget_5"));
        horizontalLayoutWidget_5->setGeometry(QRect(290, 190, 151, 31));
        horizontalLayout_5 = new QHBoxLayout(horizontalLayoutWidget_5);
        horizontalLayout_5->setSpacing(6);
        horizontalLayout_5->setContentsMargins(11, 11, 11, 11);
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        horizontalLayout_5->setContentsMargins(0, 0, 0, 0);
        label_2 = new QLabel(horizontalLayoutWidget_5);
        label_2->setObjectName(QStringLiteral("label_2"));

        horizontalLayout_5->addWidget(label_2);

        offset_value = new QLabel(horizontalLayoutWidget_5);
        offset_value->setObjectName(QStringLiteral("offset_value"));

        horizontalLayout_5->addWidget(offset_value);

        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 900, 19));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        tabWidget->setCurrentIndex(1);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", Q_NULLPTR));
        groupBox->setTitle(QApplication::translate("MainWindow", "Device Properties", Q_NULLPTR));
        label->setText(QApplication::translate("MainWindow", "Device Port", Q_NULLPTR));
        refresh_button->setText(QApplication::translate("MainWindow", "Refresh", Q_NULLPTR));
        connect_button->setText(QApplication::translate("MainWindow", "Connect", Q_NULLPTR));
        baud_rate_box->clear();
        baud_rate_box->insertItems(0, QStringList()
         << QApplication::translate("MainWindow", "9600", Q_NULLPTR)
         << QApplication::translate("MainWindow", "57600", Q_NULLPTR)
         << QApplication::translate("MainWindow", "115200", Q_NULLPTR)
        );
        label_3->setText(QApplication::translate("MainWindow", "Button Status : ", Q_NULLPTR));
        buttonStatus->setText(QApplication::translate("MainWindow", "None", Q_NULLPTR));
        tabWidget->setTabText(tabWidget->indexOf(imu_tab), QApplication::translate("MainWindow", "Imu", Q_NULLPTR));
        tabWidget->setTabText(tabWidget->indexOf(gyro_tab), QApplication::translate("MainWindow", "Gyro", Q_NULLPTR));
        label_4->setText(QApplication::translate("MainWindow", "Roll:", Q_NULLPTR));
        plotter_roll_val->setText(QString());
        label_5->setText(QApplication::translate("MainWindow", "Pitch:", Q_NULLPTR));
        plotter_pitch_val->setText(QString());
        label_6->setText(QApplication::translate("MainWindow", "Yaw:", Q_NULLPTR));
        plotter_yaw_val->setText(QString());
        offset_btn->setText(QApplication::translate("MainWindow", "Set Offset", Q_NULLPTR));
        label_2->setText(QApplication::translate("MainWindow", "Offset : ", Q_NULLPTR));
        offset_value->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
