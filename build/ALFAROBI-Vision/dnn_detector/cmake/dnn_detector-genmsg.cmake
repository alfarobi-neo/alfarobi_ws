# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dnn_detector: 2 messages, 2 services")

set(MSG_I_FLAGS "-Idnn_detector:/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dnn_detector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv" NAME_WE)
add_custom_target(_dnn_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dnn_detector" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv" "dnn_detector/DnnDetectorParams"
)

get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg" NAME_WE)
add_custom_target(_dnn_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dnn_detector" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg" NAME_WE)
add_custom_target(_dnn_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dnn_detector" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg" ""
)

get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv" NAME_WE)
add_custom_target(_dnn_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dnn_detector" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv" "dnn_detector/DnnDetectorParams"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dnn_detector
)
_generate_msg_cpp(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dnn_detector
)

### Generating Services
_generate_srv_cpp(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dnn_detector
)
_generate_srv_cpp(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dnn_detector
)

### Generating Module File
_generate_module_cpp(dnn_detector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dnn_detector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dnn_detector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dnn_detector_generate_messages dnn_detector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_cpp _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_cpp _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_cpp _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_cpp _dnn_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dnn_detector_gencpp)
add_dependencies(dnn_detector_gencpp dnn_detector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dnn_detector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dnn_detector
)
_generate_msg_eus(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dnn_detector
)

### Generating Services
_generate_srv_eus(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dnn_detector
)
_generate_srv_eus(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dnn_detector
)

### Generating Module File
_generate_module_eus(dnn_detector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dnn_detector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dnn_detector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dnn_detector_generate_messages dnn_detector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_eus _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_eus _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_eus _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_eus _dnn_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dnn_detector_geneus)
add_dependencies(dnn_detector_geneus dnn_detector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dnn_detector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dnn_detector
)
_generate_msg_lisp(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dnn_detector
)

### Generating Services
_generate_srv_lisp(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dnn_detector
)
_generate_srv_lisp(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dnn_detector
)

### Generating Module File
_generate_module_lisp(dnn_detector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dnn_detector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dnn_detector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dnn_detector_generate_messages dnn_detector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_lisp _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_lisp _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_lisp _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_lisp _dnn_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dnn_detector_genlisp)
add_dependencies(dnn_detector_genlisp dnn_detector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dnn_detector_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dnn_detector
)
_generate_msg_nodejs(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dnn_detector
)

### Generating Services
_generate_srv_nodejs(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dnn_detector
)
_generate_srv_nodejs(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dnn_detector
)

### Generating Module File
_generate_module_nodejs(dnn_detector
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dnn_detector
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dnn_detector_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dnn_detector_generate_messages dnn_detector_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_nodejs _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_nodejs _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_nodejs _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_nodejs _dnn_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dnn_detector_gennodejs)
add_dependencies(dnn_detector_gennodejs dnn_detector_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dnn_detector_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dnn_detector
)
_generate_msg_py(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dnn_detector
)

### Generating Services
_generate_srv_py(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dnn_detector
)
_generate_srv_py(dnn_detector
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dnn_detector
)

### Generating Module File
_generate_module_py(dnn_detector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dnn_detector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dnn_detector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dnn_detector_generate_messages dnn_detector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/GetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_py _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/CircleStamped.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_py _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg/DnnDetectorParams.msg" NAME_WE)
add_dependencies(dnn_detector_generate_messages_py _dnn_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/srv/SetParameters.srv" NAME_WE)
add_dependencies(dnn_detector_generate_messages_py _dnn_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dnn_detector_genpy)
add_dependencies(dnn_detector_genpy dnn_detector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dnn_detector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dnn_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dnn_detector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dnn_detector_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dnn_detector_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dnn_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dnn_detector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dnn_detector_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dnn_detector_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dnn_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dnn_detector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dnn_detector_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dnn_detector_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dnn_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dnn_detector
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dnn_detector_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dnn_detector_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dnn_detector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dnn_detector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dnn_detector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dnn_detector_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dnn_detector_generate_messages_py geometry_msgs_generate_messages_py)
endif()
