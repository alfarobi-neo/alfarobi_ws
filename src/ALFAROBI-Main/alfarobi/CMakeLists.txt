################################################################################
# CMake
################################################################################
cmake_minimum_required(VERSION 2.8.3)
project(alfarobi)

add_compile_options(-std=c++11)

################################################################################
# Packages
################################################################################
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  roslib
  sensor_msgs
  op3_ball_detector
  op3_walking_module_msgs
  robotis_controller_msgs
  walk_zmp
  zmp_walking_module_msgs
  op3_action_module_msgs
  quintic_walk_msgs
  cmake_modules
  robotis_math
  dnn_detector
  game_controller
  config
)

find_package(Eigen3 REQUIRED)
set(yaml-cpp_DIR "/usr/local/lib/cmake/yaml-cpp")
find_package(yaml-cpp REQUIRED)

################################################################################
# Declare ROS messages, services and actions
################################################################################

################################################################################
# Declare ROS dynamic reconfigure parameters
################################################################################

################################################################################
# Catkin specific configuration
################################################################################
catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS roscpp sensor_msgs
)

################################################################################
# Build
################################################################################
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Eigen3_INCLUDE_DIRS}
  ${YAML_CPP_INCLUDE_DIR}
)

add_executable(alfarobi_node
  src/alfarobi_node.cpp
  src/soccer/soccer.cpp
  src/soccer/kepeer.cpp
  src/soccer/strategycontroller.cpp
  src/soccer/ball_tracker.cpp 
  src/soccer/goalpost_tracker.cpp  
  src/soccer/pillar_tracker.cpp
  src/soccer/square_tracker.cpp
  src/soccer/messagehandler.cpp
  src/soccer/behavioral.cpp
  src/olympic/runner.cpp
  src/olympic/dribbler.cpp
  src/olympic/passer.cpp
  src/soccer/cat2_tracker.cpp
  src/olympic/penalty_manual.cpp
)

add_dependencies(alfarobi_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(alfarobi_node
  ${catkin_LIBRARIES}
  ${YAML_CPP_LIBRARIES}
)
