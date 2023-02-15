#include <QApplication>
#include <stdio.h>
#include <ros/ros.h>
#include "mainwindow.h"

int main(int argc, char **argv)
{
  QApplication a(argc, argv);
  MainWindow window(argc, argv);
  window.show();

  return a.exec();
  //    return 0;
}
