##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.0)
project(op3_offset_tuner_client)

##############################################################################
# Catkin
##############################################################################

find_package(catkin REQUIRED COMPONENTS
  rqt_gui
  rqt_gui_cpp
  roscpp
  roslib
  op3_offset_tuner_msgs
)


find_package(yaml-cpp REQUIRED)

find_package(Eigen3 REQUIRED)


if("${qt_gui_cpp_USE_QT_MAJOR_VERSION} " STREQUAL "5 ")
  find_package(Qt5Widgets REQUIRED)
else()
  find_package(Qt4 COMPONENTS QtCore QtGui REQUIRED)
  include(${QT_USE_FILE})
endif()

set(op3_offset_tuner_client_SRCS
  src/main.cpp
  src/main_window.cpp
  src/qnode.cpp
)

set(op3_offset_tuner_client_HDRS
  include/op3_offset_tuner_client/main_window.hpp
  include/op3_offset_tuner_client/qnode.hpp
)

set(op3_offset_tuner_client_UIS
  ui/main_window.ui
)

set(op3_offset_tuner_client_RESOURCES
  resources/images.qrc
)

set(op3_offset_tuner_client_INCLUDE_DIRECTORIES
  include
  include/${PROJECT_NAME}
  "${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}/${PROJECT_NAME}"
)
if(NOT EXISTS "${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}/${PROJECT_NAME}")
  file(MAKE_DIRECTORY "${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}/${PROJECT_NAME}")
endif()

# Use this to define what the package will export (e.g. libs, headers).
# exporting anything. 
catkin_package(
  INCLUDE_DIRS ${op3_offset_tuner_client_INCLUDE_DIRECTORIES}
  LIBRARIES ${PROJECT_NAME}
  CATKIN_DEPENDS  rqt_gui  rqt_gui_cpp  roscpp  roslib  op3_offset_tuner_msgs
)

if("${qt_gui_cpp_USE_QT_MAJOR_VERSION} " STREQUAL "5 ")
  qt5_wrap_cpp(op3_offset_tuner_client_MOCS ${op3_offset_tuner_client_HDRS})
else()
  qt4_wrap_cpp(op3_offset_tuner_client_MOCS ${op3_offset_tuner_client_HDRS})
endif()
# ensure generated header files are being created in the devel space
set(_cmake_current_binary_dir "${CMAKE_CURRENT_BINARY_DIR}")
set(CMAKE_CURRENT_BINARY_DIR "${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}/${PROJECT_NAME}")
if("${qt_gui_cpp_USE_QT_MAJOR_VERSION} " STREQUAL "5 ")
  qt5_wrap_ui(op3_offset_tuner_client_UIS_H ${op3_offset_tuner_client_UIS})
else()
  qt4_wrap_ui(op3_offset_tuner_client_UIS_H ${op3_offset_tuner_client_UIS})
endif()
set(CMAKE_CURRENT_BINARY_DIR "${_cmake_current_binary_dir}")

if("${qt_gui_cpp_USE_QT_MAJOR_VERSION} " STREQUAL "5 ")
  qt5_add_resources(op3_offset_tuner_client_RCC ${op3_offset_tuner_client_RESOURCES})
else()
  qt4_add_resources(op3_offset_tuner_client_RCC ${op3_offset_tuner_client_RESOURCES})
endif()


include_directories(
  ${op3_offset_tuner_client_INCLUDE_DIRECTORIES}
  ${catkin_INCLUDE_DIRS}
  ${Eigen3_INCLUDE_DIRS}
  ${YAML_CPP_INCLUDE_DIR}
)
add_executable(${PROJECT_NAME} ${op3_offset_tuner_client_SRCS} ${op3_offset_tuner_client_MOCS} ${op3_offset_tuner_client_UIS_H} ${op3_offset_tuner_client_RCC})
add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES} ${YAML_CPP_LIBRARIES})
if("${qt_gui_cpp_USE_QT_MAJOR_VERSION} " STREQUAL "5 ")
  target_link_libraries(${PROJECT_NAME} Qt5::Widgets ${YAML_CPP_LIBRARIES})
else()
  target_link_libraries(${PROJECT_NAME} ${QT_QTCORE_LIBRARY} ${QT_QTGUI_LIBRARY} ${YAML_CPP_LIBRARIES})
endif()

find_package(class_loader)
class_loader_hide_library_symbols(${PROJECT_NAME})
install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

