# Install script for directory: /home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_utils/msg" TYPE FILE FILES
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg/Feature.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg/Features.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg/FieldBoundary.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg/LineTip.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg/LUT.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg/MonitorUtils.msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg/Particles.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_utils/cmake" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_utils/catkin_generated/installspace/vision_utils-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/include/vision_utils")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/roseus/ros/vision_utils")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/common-lisp/ros/vision_utils")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/share/gennodejs/ros/vision_utils")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/alfarobi/alfarobi_ws/devel/lib/python2.7/dist-packages/vision_utils")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/alfarobi/alfarobi_ws/devel/lib/python2.7/dist-packages/vision_utils")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_utils/catkin_generated/installspace/vision_utils.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_utils/cmake" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_utils/catkin_generated/installspace/vision_utils-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_utils/cmake" TYPE FILE FILES
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_utils/catkin_generated/installspace/vision_utilsConfig.cmake"
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_utils/catkin_generated/installspace/vision_utilsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_utils" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/package.xml")
endif()

