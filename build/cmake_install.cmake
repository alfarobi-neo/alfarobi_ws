# Install script for directory: /home/ajus/alfarobi_ws/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ajus/alfarobi_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ajus/alfarobi_ws/install" TYPE PROGRAM FILES "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ajus/alfarobi_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ajus/alfarobi_ws/install" TYPE PROGRAM FILES "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ajus/alfarobi_ws/install/setup.bash;/home/ajus/alfarobi_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ajus/alfarobi_ws/install" TYPE FILE FILES
    "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/setup.bash"
    "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ajus/alfarobi_ws/install/setup.sh;/home/ajus/alfarobi_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ajus/alfarobi_ws/install" TYPE FILE FILES
    "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/setup.sh"
    "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ajus/alfarobi_ws/install/setup.zsh;/home/ajus/alfarobi_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ajus/alfarobi_ws/install" TYPE FILE FILES
    "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ajus/alfarobi_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ajus/alfarobi_ws/install" TYPE FILE FILES "/home/ajus/alfarobi_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ajus/alfarobi_ws/build/gtest/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Common/alfarobi_description/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Configuration/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/op3_web_setting_tool/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_framework/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/robotis_op3/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/robotis_op3_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/robotis_op3_tools/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Math/rot_conv/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/feedback_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/data_log_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/densis_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/kicking_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_action_module_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_offset_tuner_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_tuning_module_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/op3_walking_module_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/quintic_walk_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/analyze_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Communication/base_station_monitor/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/capture_step_module_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/DynamixelSDK/c++/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/filter_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Service/main_service/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/model_based_control/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_framework_common/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Math/robotis_math/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/op3_kinematics_dynamics/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/rosbag_to_csv/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/op3_offset_tuner_client/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/op3_tuner_client/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Communication/team_communication/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/team_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/op3_camera_setting_tool/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Communication/humanoid_league_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/odom_monitor/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/robotis_controller_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/action_module/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/base_module/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/head_control_module/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_controller/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/op3_action_editor/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/op3_offset_tuner_server/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/arduino_controller/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Math/rc_utils/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/capture_step_module/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/robot_state_module/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/quintic_walk/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Common/robot_gazebo/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/kicking/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/skripsi_kicking/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/vision_calibration/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Msgs/zmp_walking_module_msgs/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/odometry/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Tools/op3_gui_demo/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/walk_zmp/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Main/alfarobi/cmake_install.cmake")
  include("/home/ajus/alfarobi_ws/build/ALFAROBI-Motion/op3_manager/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ajus/alfarobi_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
