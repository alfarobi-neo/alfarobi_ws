# Install script for directory: /home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/alfarobi/alfarobi_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/humanoid_league_msgs/msg" TYPE FILE FILES
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Animation.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/HeadMode.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallRelative.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BallsInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalRelative.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineCircleRelative.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineIntersectionRelative.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineSegmentRelative.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/LineInformationRelative.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Model.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstacleRelative.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/ObstaclesRelative.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/PostInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GoalPartsInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/AdditionalServoData.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/GameState.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/RobotControlState.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Speak.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/TeamData.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Strategy.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/VisualCompassRotation.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/BarInImage.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg/Position2D.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/humanoid_league_msgs/cmake" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Communication/humanoid_league_msgs/catkin_generated/installspace/humanoid_league_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/include/humanoid_league_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/roseus/ros/humanoid_league_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/common-lisp/ros/humanoid_league_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/gennodejs/ros/humanoid_league_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/alfarobi/alfarobi_ws/devel/lib/python2.7/dist-packages/humanoid_league_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/lib/python2.7/dist-packages/humanoid_league_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Communication/humanoid_league_msgs/catkin_generated/installspace/humanoid_league_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/humanoid_league_msgs/cmake" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Communication/humanoid_league_msgs/catkin_generated/installspace/humanoid_league_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/humanoid_league_msgs/cmake" TYPE FILE FILES
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Communication/humanoid_league_msgs/catkin_generated/installspace/humanoid_league_msgsConfig.cmake"
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Communication/humanoid_league_msgs/catkin_generated/installspace/humanoid_league_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/humanoid_league_msgs" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/package.xml")
endif()

