# Install script for directory: /home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/quintic_walk_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quintic_walk_msgs/msg" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/quintic_walk_msgs/msg/WalkingParam.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quintic_walk_msgs/srv" TYPE FILE FILES
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/quintic_walk_msgs/srv/GetWalkingParam.srv"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/quintic_walk_msgs/srv/SetWalkingParam.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quintic_walk_msgs/cmake" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Msgs/quintic_walk_msgs/catkin_generated/installspace/quintic_walk_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/include/quintic_walk_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/roseus/ros/quintic_walk_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/common-lisp/ros/quintic_walk_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/gennodejs/ros/quintic_walk_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/alfarobi/alfarobi_ws/devel/lib/python2.7/dist-packages/quintic_walk_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/lib/python2.7/dist-packages/quintic_walk_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Msgs/quintic_walk_msgs/catkin_generated/installspace/quintic_walk_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quintic_walk_msgs/cmake" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Msgs/quintic_walk_msgs/catkin_generated/installspace/quintic_walk_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quintic_walk_msgs/cmake" TYPE FILE FILES
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Msgs/quintic_walk_msgs/catkin_generated/installspace/quintic_walk_msgsConfig.cmake"
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Msgs/quintic_walk_msgs/catkin_generated/installspace/quintic_walk_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quintic_walk_msgs" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/quintic_walk_msgs/package.xml")
endif()

