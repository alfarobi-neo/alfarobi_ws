# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "capture_step_module_msgs: 1 messages, 2 services")

set(MSG_I_FLAGS "-Icapture_step_module_msgs:/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(capture_step_module_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv" NAME_WE)
add_custom_target(_capture_step_module_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "capture_step_module_msgs" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv" "capture_step_module_msgs/WalkingParam"
)

get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg" NAME_WE)
add_custom_target(_capture_step_module_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "capture_step_module_msgs" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg" ""
)

get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv" NAME_WE)
add_custom_target(_capture_step_module_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "capture_step_module_msgs" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv" "capture_step_module_msgs/WalkingParam"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Services
_generate_srv_cpp(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capture_step_module_msgs
)
_generate_srv_cpp(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Module File
_generate_module_cpp(capture_step_module_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capture_step_module_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(capture_step_module_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(capture_step_module_msgs_generate_messages capture_step_module_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_cpp _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_cpp _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_cpp _capture_step_module_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capture_step_module_msgs_gencpp)
add_dependencies(capture_step_module_msgs_gencpp capture_step_module_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capture_step_module_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Services
_generate_srv_eus(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capture_step_module_msgs
)
_generate_srv_eus(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Module File
_generate_module_eus(capture_step_module_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capture_step_module_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(capture_step_module_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(capture_step_module_msgs_generate_messages capture_step_module_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_eus _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_eus _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_eus _capture_step_module_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capture_step_module_msgs_geneus)
add_dependencies(capture_step_module_msgs_geneus capture_step_module_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capture_step_module_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Services
_generate_srv_lisp(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capture_step_module_msgs
)
_generate_srv_lisp(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Module File
_generate_module_lisp(capture_step_module_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capture_step_module_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(capture_step_module_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(capture_step_module_msgs_generate_messages capture_step_module_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_lisp _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_lisp _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_lisp _capture_step_module_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capture_step_module_msgs_genlisp)
add_dependencies(capture_step_module_msgs_genlisp capture_step_module_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capture_step_module_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Services
_generate_srv_nodejs(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capture_step_module_msgs
)
_generate_srv_nodejs(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Module File
_generate_module_nodejs(capture_step_module_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capture_step_module_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(capture_step_module_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(capture_step_module_msgs_generate_messages capture_step_module_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_nodejs _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_nodejs _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_nodejs _capture_step_module_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capture_step_module_msgs_gennodejs)
add_dependencies(capture_step_module_msgs_gennodejs capture_step_module_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capture_step_module_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Services
_generate_srv_py(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capture_step_module_msgs
)
_generate_srv_py(capture_step_module_msgs
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capture_step_module_msgs
)

### Generating Module File
_generate_module_py(capture_step_module_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capture_step_module_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(capture_step_module_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(capture_step_module_msgs_generate_messages capture_step_module_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_py _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg/WalkingParam.msg" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_py _capture_step_module_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(capture_step_module_msgs_generate_messages_py _capture_step_module_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capture_step_module_msgs_genpy)
add_dependencies(capture_step_module_msgs_genpy capture_step_module_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capture_step_module_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capture_step_module_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capture_step_module_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(capture_step_module_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capture_step_module_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capture_step_module_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(capture_step_module_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capture_step_module_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capture_step_module_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(capture_step_module_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capture_step_module_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capture_step_module_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(capture_step_module_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capture_step_module_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capture_step_module_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capture_step_module_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(capture_step_module_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
