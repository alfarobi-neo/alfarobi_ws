/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QGraphicsView *graphicsView;
    QTabWidget *tabWidget;
    QWidget *tab_3;
    QWidget *formLayoutWidget_3;
    QFormLayout *formLayout_4;
    QLabel *label_9;
    QDoubleSpinBox *dspin_mcl_afast;
    QLabel *label_12;
    QDoubleSpinBox *dspin_mcl_aslow;
    QLabel *label_13;
    QDoubleSpinBox *dspin_mcl_variance;
    QDoubleSpinBox *dspin_mcl_wcmps;
    QLabel *label;
    QWidget *tab;
    QWidget *formLayoutWidget;
    QFormLayout *formLayout_2;
    QLabel *label_4;
    QDoubleSpinBox *dspin_mgauss_x;
    QLabel *label_5;
    QDoubleSpinBox *dspin_mgauss_y;
    QLabel *label_6;
    QDoubleSpinBox *dspin_mgauss_w;
    QLabel *label_10;
    QDoubleSpinBox *dspin_vgauss_x;
    QLabel *label_11;
    QDoubleSpinBox *dspin_vgauss_y;
    QGroupBox *groupBox;
    QWidget *horizontalLayoutWidget;
    QHBoxLayout *horizontalLayout;
    QPushButton *param_refresh_button;
    QPushButton *param_set_button;
    QGroupBox *groupBox_2;
    QWidget *horizontalLayoutWidget_2;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *mcl_reset_button;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(840, 455);
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(MainWindow->sizePolicy().hasHeightForWidth());
        MainWindow->setSizePolicy(sizePolicy);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        QSizePolicy sizePolicy1(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(centralWidget->sizePolicy().hasHeightForWidth());
        centralWidget->setSizePolicy(sizePolicy1);
        graphicsView = new QGraphicsView(centralWidget);
        graphicsView->setObjectName(QStringLiteral("graphicsView"));
        graphicsView->setGeometry(QRect(10, 10, 560, 410));
        sizePolicy.setHeightForWidth(graphicsView->sizePolicy().hasHeightForWidth());
        graphicsView->setSizePolicy(sizePolicy);
        tabWidget = new QTabWidget(centralWidget);
        tabWidget->setObjectName(QStringLiteral("tabWidget"));
        tabWidget->setGeometry(QRect(580, 10, 241, 211));
        tab_3 = new QWidget();
        tab_3->setObjectName(QStringLiteral("tab_3"));
        formLayoutWidget_3 = new QWidget(tab_3);
        formLayoutWidget_3->setObjectName(QStringLiteral("formLayoutWidget_3"));
        formLayoutWidget_3->setGeometry(QRect(10, 10, 211, 130));
        formLayout_4 = new QFormLayout(formLayoutWidget_3);
        formLayout_4->setSpacing(6);
        formLayout_4->setContentsMargins(11, 11, 11, 11);
        formLayout_4->setObjectName(QStringLiteral("formLayout_4"));
        formLayout_4->setHorizontalSpacing(10);
        formLayout_4->setContentsMargins(10, 10, 10, 10);
        label_9 = new QLabel(formLayoutWidget_3);
        label_9->setObjectName(QStringLiteral("label_9"));

        formLayout_4->setWidget(0, QFormLayout::LabelRole, label_9);

        dspin_mcl_afast = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_mcl_afast->setObjectName(QStringLiteral("dspin_mcl_afast"));
        dspin_mcl_afast->setDecimals(3);
        dspin_mcl_afast->setMinimum(-99);
        dspin_mcl_afast->setSingleStep(0.001);
        dspin_mcl_afast->setValue(0);

        formLayout_4->setWidget(0, QFormLayout::FieldRole, dspin_mcl_afast);

        label_12 = new QLabel(formLayoutWidget_3);
        label_12->setObjectName(QStringLiteral("label_12"));

        formLayout_4->setWidget(1, QFormLayout::LabelRole, label_12);

        dspin_mcl_aslow = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_mcl_aslow->setObjectName(QStringLiteral("dspin_mcl_aslow"));
        dspin_mcl_aslow->setDecimals(3);
        dspin_mcl_aslow->setSingleStep(0.01);

        formLayout_4->setWidget(1, QFormLayout::FieldRole, dspin_mcl_aslow);

        label_13 = new QLabel(formLayoutWidget_3);
        label_13->setObjectName(QStringLiteral("label_13"));

        formLayout_4->setWidget(2, QFormLayout::LabelRole, label_13);

        dspin_mcl_variance = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_mcl_variance->setObjectName(QStringLiteral("dspin_mcl_variance"));
        dspin_mcl_variance->setDecimals(3);
        dspin_mcl_variance->setMaximum(10);

        formLayout_4->setWidget(2, QFormLayout::FieldRole, dspin_mcl_variance);

        dspin_mcl_wcmps = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_mcl_wcmps->setObjectName(QStringLiteral("dspin_mcl_wcmps"));
        dspin_mcl_wcmps->setDecimals(3);
        dspin_mcl_wcmps->setMaximum(1);
        dspin_mcl_wcmps->setSingleStep(0.01);

        formLayout_4->setWidget(3, QFormLayout::FieldRole, dspin_mcl_wcmps);

        label = new QLabel(formLayoutWidget_3);
        label->setObjectName(QStringLiteral("label"));

        formLayout_4->setWidget(3, QFormLayout::LabelRole, label);

        tabWidget->addTab(tab_3, QString());
        tab = new QWidget();
        tab->setObjectName(QStringLiteral("tab"));
        formLayoutWidget = new QWidget(tab);
        formLayoutWidget->setObjectName(QStringLiteral("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(10, 10, 211, 161));
        formLayout_2 = new QFormLayout(formLayoutWidget);
        formLayout_2->setSpacing(6);
        formLayout_2->setContentsMargins(11, 11, 11, 11);
        formLayout_2->setObjectName(QStringLiteral("formLayout_2"));
        formLayout_2->setContentsMargins(10, 10, 10, 10);
        label_4 = new QLabel(formLayoutWidget);
        label_4->setObjectName(QStringLiteral("label_4"));

        formLayout_2->setWidget(0, QFormLayout::LabelRole, label_4);

        dspin_mgauss_x = new QDoubleSpinBox(formLayoutWidget);
        dspin_mgauss_x->setObjectName(QStringLiteral("dspin_mgauss_x"));
        dspin_mgauss_x->setDecimals(3);
        dspin_mgauss_x->setSingleStep(0.01);

        formLayout_2->setWidget(0, QFormLayout::FieldRole, dspin_mgauss_x);

        label_5 = new QLabel(formLayoutWidget);
        label_5->setObjectName(QStringLiteral("label_5"));

        formLayout_2->setWidget(1, QFormLayout::LabelRole, label_5);

        dspin_mgauss_y = new QDoubleSpinBox(formLayoutWidget);
        dspin_mgauss_y->setObjectName(QStringLiteral("dspin_mgauss_y"));
        dspin_mgauss_y->setDecimals(3);
        dspin_mgauss_y->setSingleStep(0.01);

        formLayout_2->setWidget(1, QFormLayout::FieldRole, dspin_mgauss_y);

        label_6 = new QLabel(formLayoutWidget);
        label_6->setObjectName(QStringLiteral("label_6"));

        formLayout_2->setWidget(2, QFormLayout::LabelRole, label_6);

        dspin_mgauss_w = new QDoubleSpinBox(formLayoutWidget);
        dspin_mgauss_w->setObjectName(QStringLiteral("dspin_mgauss_w"));
        dspin_mgauss_w->setDecimals(3);
        dspin_mgauss_w->setSingleStep(0.01);

        formLayout_2->setWidget(2, QFormLayout::FieldRole, dspin_mgauss_w);

        label_10 = new QLabel(formLayoutWidget);
        label_10->setObjectName(QStringLiteral("label_10"));

        formLayout_2->setWidget(3, QFormLayout::LabelRole, label_10);

        dspin_vgauss_x = new QDoubleSpinBox(formLayoutWidget);
        dspin_vgauss_x->setObjectName(QStringLiteral("dspin_vgauss_x"));

        formLayout_2->setWidget(3, QFormLayout::FieldRole, dspin_vgauss_x);

        label_11 = new QLabel(formLayoutWidget);
        label_11->setObjectName(QStringLiteral("label_11"));

        formLayout_2->setWidget(4, QFormLayout::LabelRole, label_11);

        dspin_vgauss_y = new QDoubleSpinBox(formLayoutWidget);
        dspin_vgauss_y->setObjectName(QStringLiteral("dspin_vgauss_y"));

        formLayout_2->setWidget(4, QFormLayout::FieldRole, dspin_vgauss_y);

        tabWidget->addTab(tab, QString());
        groupBox = new QGroupBox(centralWidget);
        groupBox->setObjectName(QStringLiteral("groupBox"));
        groupBox->setGeometry(QRect(580, 300, 241, 80));
        horizontalLayoutWidget = new QWidget(groupBox);
        horizontalLayoutWidget->setObjectName(QStringLiteral("horizontalLayoutWidget"));
        horizontalLayoutWidget->setGeometry(QRect(0, 20, 241, 51));
        horizontalLayout = new QHBoxLayout(horizontalLayoutWidget);
        horizontalLayout->setSpacing(6);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        param_refresh_button = new QPushButton(horizontalLayoutWidget);
        param_refresh_button->setObjectName(QStringLiteral("param_refresh_button"));

        horizontalLayout->addWidget(param_refresh_button);

        param_set_button = new QPushButton(horizontalLayoutWidget);
        param_set_button->setObjectName(QStringLiteral("param_set_button"));

        horizontalLayout->addWidget(param_set_button);

        groupBox_2 = new QGroupBox(centralWidget);
        groupBox_2->setObjectName(QStringLiteral("groupBox_2"));
        groupBox_2->setGeometry(QRect(580, 230, 241, 61));
        horizontalLayoutWidget_2 = new QWidget(groupBox_2);
        horizontalLayoutWidget_2->setObjectName(QStringLiteral("horizontalLayoutWidget_2"));
        horizontalLayoutWidget_2->setGeometry(QRect(0, 20, 241, 41));
        horizontalLayout_2 = new QHBoxLayout(horizontalLayoutWidget_2);
        horizontalLayout_2->setSpacing(6);
        horizontalLayout_2->setContentsMargins(11, 11, 11, 11);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(0, 0, 0, 0);
        mcl_reset_button = new QPushButton(horizontalLayoutWidget_2);
        mcl_reset_button->setObjectName(QStringLiteral("mcl_reset_button"));

        horizontalLayout_2->addWidget(mcl_reset_button);

        MainWindow->setCentralWidget(centralWidget);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", Q_NULLPTR));
        label_9->setText(QApplication::translate("MainWindow", "MCL a Fast", Q_NULLPTR));
        label_12->setText(QApplication::translate("MainWindow", "MCL a Slow", Q_NULLPTR));
        label_13->setText(QApplication::translate("MainWindow", "MCL Variance", Q_NULLPTR));
        label->setText(QApplication::translate("MainWindow", "MCL W Compass", Q_NULLPTR));
        tabWidget->setTabText(tabWidget->indexOf(tab_3), QApplication::translate("MainWindow", "MCL", Q_NULLPTR));
        label_4->setText(QApplication::translate("MainWindow", "Motion Gauss X", Q_NULLPTR));
        label_5->setText(QApplication::translate("MainWindow", "Motion Gauss Y", Q_NULLPTR));
        label_6->setText(QApplication::translate("MainWindow", "Motion Gauss W", Q_NULLPTR));
        label_10->setText(QApplication::translate("MainWindow", "Vision Gauss X", Q_NULLPTR));
        label_11->setText(QApplication::translate("MainWindow", "Vision Gauss Y", Q_NULLPTR));
        tabWidget->setTabText(tabWidget->indexOf(tab), QApplication::translate("MainWindow", "Noise", Q_NULLPTR));
        groupBox->setTitle(QApplication::translate("MainWindow", "Parameter", Q_NULLPTR));
        param_refresh_button->setText(QApplication::translate("MainWindow", "Refresh", Q_NULLPTR));
        param_set_button->setText(QApplication::translate("MainWindow", "Set", Q_NULLPTR));
        groupBox_2->setTitle(QApplication::translate("MainWindow", "Particle", Q_NULLPTR));
        mcl_reset_button->setText(QApplication::translate("MainWindow", "Reset Particle", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
