/********************************************************************************
** Form generated from reading UI file 'basemonitor.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_BASEMONITOR_H
#define UI_BASEMONITOR_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_BaseMonitor
{
public:
    QWidget *centralwidget;
    QGroupBox *groupBox;
    QGraphicsView *graphicsView;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *BaseMonitor)
    {
        if (BaseMonitor->objectName().isEmpty())
            BaseMonitor->setObjectName(QString::fromUtf8("BaseMonitor"));
        BaseMonitor->resize(1000, 600);
        centralwidget = new QWidget(BaseMonitor);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        groupBox = new QGroupBox(centralwidget);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        groupBox->setGeometry(QRect(10, 10, 581, 451));
        graphicsView = new QGraphicsView(groupBox);
        graphicsView->setObjectName(QString::fromUtf8("graphicsView"));
        graphicsView->setGeometry(QRect(10, 30, 560, 410));
        BaseMonitor->setCentralWidget(centralwidget);
        menubar = new QMenuBar(BaseMonitor);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 1000, 19));
        BaseMonitor->setMenuBar(menubar);
        statusbar = new QStatusBar(BaseMonitor);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        BaseMonitor->setStatusBar(statusbar);

        retranslateUi(BaseMonitor);

        QMetaObject::connectSlotsByName(BaseMonitor);
    } // setupUi

    void retranslateUi(QMainWindow *BaseMonitor)
    {
        BaseMonitor->setWindowTitle(QApplication::translate("BaseMonitor", "MainWindow", nullptr));
        groupBox->setTitle(QApplication::translate("BaseMonitor", "Field View", nullptr));
    } // retranslateUi

};

namespace Ui {
    class BaseMonitor: public Ui_BaseMonitor {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_BASEMONITOR_H
