# Install script for directory: /home/ajus/alfarobi_ws/src/ALFAROBI-Msgs/op3_offset_tuner_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ajus/alfarobi_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op3_offset_tuner_msgs/msg" TYPE FILE FILES
    "/home/ajus/alfarobi_ws/src/ALFAROBI-Msgs/op3_offset_tuner_msgs/msg/JointOffsetData.msg"
    "/home/ajus/alfarobi_ws/src/ALFAROBI-Msgs/op3_offset_tuner_msgs/msg/JointOffsetPositionData.msg"
    "/home/ajus/alfarobi_ws/src/ALFAROBI-Msgs/op3_offset_tuner_msgs/msg/JointTorqueOnOff.msg"
    "/home/ajus/alfarobi_ws/src/ALFAROBI-Msgs/op3_offset_tuner_msgs/msg/JointTorqueOnOffArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op3_offset_tuner_msgs/srv" TYPE FILE FILES "/home/ajus/alfarobi_ws/src/ALFAROBI-Msgs/op3_offset_tuner_msgs/srv/GetPresentJointOffsetData.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op3_offset_tuner_msgs/cmake" TYPE FILE FILES "/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_offset_tuner_msgs/catkin_generated/installspace/op3_offset_tuner_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ajus/alfarobi_ws/devel/include/op3_offset_tuner_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ajus/alfarobi_ws/devel/share/roseus/ros/op3_offset_tuner_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ajus/alfarobi_ws/devel/share/common-lisp/ros/op3_offset_tuner_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ajus/alfarobi_ws/devel/share/gennodejs/ros/op3_offset_tuner_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/home/ajus/anaconda3/bin/python3" -m compileall "/home/ajus/alfarobi_ws/devel/lib/python3/dist-packages/op3_offset_tuner_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ajus/alfarobi_ws/devel/lib/python3/dist-packages/op3_offset_tuner_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_offset_tuner_msgs/catkin_generated/installspace/op3_offset_tuner_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op3_offset_tuner_msgs/cmake" TYPE FILE FILES "/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_offset_tuner_msgs/catkin_generated/installspace/op3_offset_tuner_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op3_offset_tuner_msgs/cmake" TYPE FILE FILES
    "/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_offset_tuner_msgs/catkin_generated/installspace/op3_offset_tuner_msgsConfig.cmake"
    "/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_offset_tuner_msgs/catkin_generated/installspace/op3_offset_tuner_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op3_offset_tuner_msgs" TYPE FILE FILES "/home/ajus/alfarobi_ws/src/ALFAROBI-Msgs/op3_offset_tuner_msgs/package.xml")
endif()

