# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "humanoid_league_msgs: 31 messages, 0 services")

set(MSG_I_FLAGS "-Ihumanoid_league_msgs:/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(humanoid_league_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg" "trajectory_msgs/JointTrajectory:std_msgs/Header:trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg" ""
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg" "std_msgs/Header:geometry_msgs/Point:humanoid_league_msgs/BallInImage"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg" "humanoid_league_msgs/PostInImage:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg" "geometry_msgs/Point:humanoid_league_msgs/LineSegmentInImage"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg" "humanoid_league_msgs/LineSegmentRelative:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg" "std_msgs/Header:humanoid_league_msgs/LineIntersectionInImage:geometry_msgs/Point:humanoid_league_msgs/LineSegmentInImage:humanoid_league_msgs/LineCircleInImage"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg" "std_msgs/Header:geometry_msgs/Point:humanoid_league_msgs/LineSegmentRelative:humanoid_league_msgs/LineCircleRelative:humanoid_league_msgs/LineIntersectionRelative"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg" "std_msgs/Header:humanoid_league_msgs/ObstaclesRelative:geometry_msgs/PoseWithCovariance:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:humanoid_league_msgs/ObstacleRelative:humanoid_league_msgs/BallRelative:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg" "humanoid_league_msgs/ObstacleInImage:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg" "std_msgs/Header:geometry_msgs/Point:humanoid_league_msgs/ObstacleRelative"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg" "humanoid_league_msgs/PostInImage:std_msgs/Header:geometry_msgs/Point:humanoid_league_msgs/BarInImage"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg" "sensor_msgs/Temperature:std_msgs/Header"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg" ""
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg" ""
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg" "geometry_msgs/Pose2D:humanoid_league_msgs/Position2D:std_msgs/Header"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg" ""
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg" ""
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg" NAME_WE)
add_custom_target(_humanoid_league_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "humanoid_league_msgs" "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg" "geometry_msgs/Pose2D:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_cpp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(humanoid_league_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(humanoid_league_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(humanoid_league_msgs_generate_messages humanoid_league_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_cpp _humanoid_league_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(humanoid_league_msgs_gencpp)
add_dependencies(humanoid_league_msgs_gencpp humanoid_league_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS humanoid_league_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_eus(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(humanoid_league_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(humanoid_league_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(humanoid_league_msgs_generate_messages humanoid_league_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_eus _humanoid_league_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(humanoid_league_msgs_geneus)
add_dependencies(humanoid_league_msgs_geneus humanoid_league_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS humanoid_league_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_lisp(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(humanoid_league_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(humanoid_league_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(humanoid_league_msgs_generate_messages humanoid_league_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_lisp _humanoid_league_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(humanoid_league_msgs_genlisp)
add_dependencies(humanoid_league_msgs_genlisp humanoid_league_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS humanoid_league_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_nodejs(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(humanoid_league_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(humanoid_league_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(humanoid_league_msgs_generate_messages humanoid_league_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_nodejs _humanoid_league_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(humanoid_league_msgs_gennodejs)
add_dependencies(humanoid_league_msgs_gennodejs humanoid_league_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS humanoid_league_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg"
  "${MSG_I_FLAGS}"
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)
_generate_msg_py(humanoid_league_msgs
  "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(humanoid_league_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(humanoid_league_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(humanoid_league_msgs_generate_messages humanoid_league_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ajus/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg" NAME_WE)
add_dependencies(humanoid_league_msgs_generate_messages_py _humanoid_league_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(humanoid_league_msgs_genpy)
add_dependencies(humanoid_league_msgs_genpy humanoid_league_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS humanoid_league_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/humanoid_league_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(humanoid_league_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(humanoid_league_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(humanoid_league_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(humanoid_league_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/humanoid_league_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(humanoid_league_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(humanoid_league_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(humanoid_league_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(humanoid_league_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/humanoid_league_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(humanoid_league_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(humanoid_league_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(humanoid_league_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(humanoid_league_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/humanoid_league_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(humanoid_league_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(humanoid_league_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(humanoid_league_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(humanoid_league_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs)
  install(CODE "execute_process(COMMAND \"/home/ajus/anaconda3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/humanoid_league_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(humanoid_league_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(humanoid_league_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(humanoid_league_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(humanoid_league_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
