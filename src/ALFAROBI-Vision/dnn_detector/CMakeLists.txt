cmake_minimum_required(VERSION 2.8.3)
project(dnn_detector)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
    roscpp
    roslib
    std_msgs
    sensor_msgs
    geometry_msgs
    dynamic_reconfigure
    cv_bridge
    image_transport
    message_generation
    )

## System dependencies are found with CMake's conventions
find_package(Boost REQUIRED COMPONENTS thread)

set(OpenCV_DIR "/usr/local/share/OpenCV/")
find_package(OpenCV 3.4 REQUIRED)
set(yaml-cpp_DIR "/usr/local/lib/cmake/yaml-cpp")
find_package(yaml-cpp REQUIRED)

################################################################################
# Declare ROS messages, services and actions
################################################################################
add_message_files(
    FILES
    CircleStamped.msg
    DnnDetectorParams.msg
    )

add_service_files(
    FILES
    GetParameters.srv
    SetParameters.srv
    )

generate_messages(
    DEPENDENCIES
    std_msgs
    geometry_msgs
    )

################################################################################
# Declare ROS dynamic reconfigure parameters
################################################################################
generate_dynamic_reconfigure_options(
    cfg/DnnParams.cfg
    )

################################################################################
# Declare catkin specific configuration to be passed to dependent projects
##################################################################################
catkin_package(
    INCLUDE_DIRS include
    CATKIN_DEPENDS
    roscpp
    roslib
    std_msgs
    sensor_msgs
    geometry_msgs
    dynamic_reconfigure
    cv_bridge
    image_transport
    message_runtime
    DEPENDS Boost OpenCV
    )

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
    include
    ${OpenCV_INCLUDE_DIRS}
    ${catkin_INCLUDE_DIRS}
    ${Boost_INCLUDE_DIRS}
    ${YAML_CPP_INCLUDE_DIR}
    )

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
add_executable(${PROJECT_NAME}_node dnn_detector_node.cpp
    src/dnn_detector.cpp
    src/FieldDetector.cpp
    src/line_detector.cpp
    )

## Add cmake target dependencies of the executable
## same as for the library above
add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS} dnn_detector_generate_messages_cpp)

## Specify libraries to link a library or executable target against
target_link_libraries(${PROJECT_NAME}_node
    ${catkin_LIBRARIES}
    ${OpenCV_LIBS}
    ${Boost_LIBRARIES}
    ${YAML_CPP_LIBRARIES}
    )
