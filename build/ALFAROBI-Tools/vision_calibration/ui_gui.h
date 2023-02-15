/********************************************************************************
** Form generated from reading UI file 'gui.ui'
**
** Created by: Qt User Interface Compiler version 5.9.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_GUI_H
#define UI_GUI_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QListView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QGraphicsView *graphicsView;
    QGroupBox *lut_table;
    QRadioButton *add_lut_btn;
    QRadioButton *rem_lut_btn;
    QComboBox *lut_item_box;
    QPushButton *save_lut_btn;
    QPushButton *load_lut_btn;
    QCheckBox *lutview_check;
    QLineEdit *lut_path;
    QPushButton *lut_browse_btn;
    QGroupBox *log;
    QListView *log_view;
    QGroupBox *file_viewer;
    QPushButton *update_image_btn;
    QPushButton *browse_btn;
    QLineEdit *path_list;
    QPushButton *load_file;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(900, 600);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        graphicsView = new QGraphicsView(centralWidget);
        graphicsView->setObjectName(QStringLiteral("graphicsView"));
        graphicsView->setGeometry(QRect(10, 10, 480, 360));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(graphicsView->sizePolicy().hasHeightForWidth());
        graphicsView->setSizePolicy(sizePolicy);
        graphicsView->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        graphicsView->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        lut_table = new QGroupBox(centralWidget);
        lut_table->setObjectName(QStringLiteral("lut_table"));
        lut_table->setGeometry(QRect(500, 10, 251, 221));
        add_lut_btn = new QRadioButton(lut_table);
        add_lut_btn->setObjectName(QStringLiteral("add_lut_btn"));
        add_lut_btn->setGeometry(QRect(20, 70, 100, 20));
        rem_lut_btn = new QRadioButton(lut_table);
        rem_lut_btn->setObjectName(QStringLiteral("rem_lut_btn"));
        rem_lut_btn->setGeometry(QRect(20, 90, 100, 20));
        lut_item_box = new QComboBox(lut_table);
        lut_item_box->setObjectName(QStringLiteral("lut_item_box"));
        lut_item_box->setGeometry(QRect(10, 30, 101, 31));
        save_lut_btn = new QPushButton(lut_table);
        save_lut_btn->setObjectName(QStringLiteral("save_lut_btn"));
        save_lut_btn->setGeometry(QRect(150, 30, 81, 31));
        load_lut_btn = new QPushButton(lut_table);
        load_lut_btn->setObjectName(QStringLiteral("load_lut_btn"));
        load_lut_btn->setGeometry(QRect(150, 80, 81, 31));
        lutview_check = new QCheckBox(lut_table);
        lutview_check->setObjectName(QStringLiteral("lutview_check"));
        lutview_check->setGeometry(QRect(20, 110, 101, 21));
        lut_path = new QLineEdit(lut_table);
        lut_path->setObjectName(QStringLiteral("lut_path"));
        lut_path->setGeometry(QRect(10, 180, 231, 31));
        lut_browse_btn = new QPushButton(lut_table);
        lut_browse_btn->setObjectName(QStringLiteral("lut_browse_btn"));
        lut_browse_btn->setGeometry(QRect(150, 130, 81, 31));
        log = new QGroupBox(centralWidget);
        log->setObjectName(QStringLiteral("log"));
        log->setGeometry(QRect(10, 380, 321, 151));
        log_view = new QListView(log);
        log_view->setObjectName(QStringLiteral("log_view"));
        log_view->setGeometry(QRect(10, 30, 301, 111));
        file_viewer = new QGroupBox(centralWidget);
        file_viewer->setObjectName(QStringLiteral("file_viewer"));
        file_viewer->setGeometry(QRect(500, 240, 251, 131));
        update_image_btn = new QPushButton(file_viewer);
        update_image_btn->setObjectName(QStringLiteral("update_image_btn"));
        update_image_btn->setGeometry(QRect(10, 100, 91, 22));
        browse_btn = new QPushButton(file_viewer);
        browse_btn->setObjectName(QStringLiteral("browse_btn"));
        browse_btn->setGeometry(QRect(120, 70, 80, 22));
        path_list = new QLineEdit(file_viewer);
        path_list->setObjectName(QStringLiteral("path_list"));
        path_list->setGeometry(QRect(10, 30, 231, 31));
        load_file = new QPushButton(file_viewer);
        load_file->setObjectName(QStringLiteral("load_file"));
        load_file->setGeometry(QRect(10, 70, 91, 22));
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

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", Q_NULLPTR));
        lut_table->setTitle(QApplication::translate("MainWindow", "Lut Table", Q_NULLPTR));
        add_lut_btn->setText(QApplication::translate("MainWindow", "Add", Q_NULLPTR));
        rem_lut_btn->setText(QApplication::translate("MainWindow", "Remove", Q_NULLPTR));
        lut_item_box->clear();
        lut_item_box->insertItems(0, QStringList()
         << QApplication::translate("MainWindow", "Green", Q_NULLPTR)
         << QApplication::translate("MainWindow", "White", Q_NULLPTR)
         << QApplication::translate("MainWindow", "Black", Q_NULLPTR)
         << QApplication::translate("MainWindow", "Other", Q_NULLPTR)
        );
        save_lut_btn->setText(QApplication::translate("MainWindow", "Save", Q_NULLPTR));
        load_lut_btn->setText(QApplication::translate("MainWindow", "Load", Q_NULLPTR));
        lutview_check->setText(QApplication::translate("MainWindow", "View LUT", Q_NULLPTR));
        lut_browse_btn->setText(QApplication::translate("MainWindow", "Browse", Q_NULLPTR));
        log->setTitle(QApplication::translate("MainWindow", "Log Messages", Q_NULLPTR));
        file_viewer->setTitle(QApplication::translate("MainWindow", "File Viewer", Q_NULLPTR));
        update_image_btn->setText(QApplication::translate("MainWindow", "Update Image", Q_NULLPTR));
        browse_btn->setText(QApplication::translate("MainWindow", "Browse", Q_NULLPTR));
        load_file->setText(QApplication::translate("MainWindow", "Load", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_GUI_H
