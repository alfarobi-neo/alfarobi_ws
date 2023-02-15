cmake_minimum_required(VERSION 2.8.3)
project(mcl_viewer)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)

find_package(catkin REQUIRED roscpp mcl_localization vision_simple std_msgs)

set(Qt5_DIR "/opt/qt59/lib/cmake/Qt5")

find_package(Qt5 REQUIRED COMPONENTS Gui Widgets)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#    INCLUDE_DIRS include
#      LIBRARIES mvl_viewer
#      CATKIN_DEPENDS roscpp mcl_localization vision_simple
    #  DEPENDS system_lib
    )

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
    ${catkin_INCLUDE_DIRS}
    )

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide

#qt5_wrap_cpp(QT_MOC_HPP mainwindow.h node.h)
#qt5_wrap_ui(QT_WRAP_UI mainwindow.ui)

add_executable(${PROJECT_NAME}_node mcl_viewer.cpp mainwindow.cpp node.cpp
    mainwindow.ui
    )

add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
target_link_libraries(${PROJECT_NAME}_node
    ${catkin_LIBRARIES}
    Qt5::Gui
    Qt5::Core
    Qt5::Widgets
    )
