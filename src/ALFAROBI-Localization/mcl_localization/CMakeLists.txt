cmake_minimum_required(VERSION 2.8.3)
project(mcl_localization)
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    vision_simple
    tf
    eigen_conversions
    kdl_conversions
    robotis_math
    geometry_msgs
    sensor_msgs
    std_msgs
    zmp_walking_module_msgs
    message_generation
    )

set(CMAKE_AUTOMOC ON)
# Create code from a list of Qt designer ui files
set(CMAKE_AUTOUIC ON)

set(Qt5_DIR "/opt/qt59/lib/cmake/Qt5")
set(Qt5Widgets_DIR "/opt/qt59/lib/cmake/Qt5Widgets")
set(Qt5Gui_DIR "/opt/qt59/lib/cmake/Qt5Gui")
set(Qt5SerialPort_DIR "/opt/qt59/lib/cmake/Qt5SerialPort")


find_package(Qt5 REQUIRED COMPONENTS Gui)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5Gui REQUIRED)
find_package(Qt5SerialPort REQUIRED)

find_package(Eigen3 REQUIRED)
set(yaml-cpp_DIR "/usr/local/lib/cmake/yaml-cpp")
find_package(yaml-cpp REQUIRED)

add_message_files(DIRECTORY msgs FILES
    localization.msg
    localization_param.msg
    )

add_service_files(
  FILES
  GetLocParam.srv
  SetLocParam.srv
)

generate_messages(
  DEPENDENCIES
  geometry_msgs
)

catkin_package(
    CATKIN_DEPENDS
    roscpp
    vision_simple
    eigen_conversions
    kdl_conversions
    robotis_math
    geometry_msgs
    sensor_msgs
    message_generation
    message_runtime
    )

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
    include
    ${catkin_INCLUDE_DIRS}
    ${Eigen3_INCLUDE_DIRS}
    ${orocos_kdl_INCLUDE_DIRS}
    ${YAML_CPP_INCLUDE_DIR}
    )

add_executable(${PROJECT_NAME}_node
    src/mcl_localization_node.cpp
    src/mcl_localization.cpp
    )

add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(${PROJECT_NAME}_node
    ${catkin_LIBRARIES}
    ${YAML_CPP_LIBRARIES}
    Qt5::Gui Qt5::Core Qt5::SerialPort Qt5::Widgets
    )
