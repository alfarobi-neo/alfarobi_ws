# Install script for directory: /home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/hline_square_detector

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/hline_square_detector/catkin_generated/installspace/hline_square_detector.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hline_square_detector/cmake" TYPE FILE FILES
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/hline_square_detector/catkin_generated/installspace/hline_square_detectorConfig.cmake"
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/hline_square_detector/catkin_generated/installspace/hline_square_detectorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hline_square_detector" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/hline_square_detector/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/hline_square_detector/catkin_generated/installspace/hline_square_detector.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hline_square_detector/cmake" TYPE FILE FILES
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/hline_square_detector/catkin_generated/installspace/hline_square_detectorConfig.cmake"
    "/home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/hline_square_detector/catkin_generated/installspace/hline_square_detectorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hline_square_detector" TYPE FILE FILES "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/hline_square_detector/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hline_square_detector" TYPE DIRECTORY FILES
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/hline_square_detector/launch"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/hline_square_detector/msg"
    "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/hline_square_detector/srv"
    )
endif()

