# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "team_communication: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iteam_communication:/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(team_communication_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg" NAME_WE)
add_custom_target(_team_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "team_communication" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg" NAME_WE)
add_custom_target(_team_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "team_communication" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg" "geometry_msgs/Pose2D:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg" NAME_WE)
add_custom_target(_team_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "team_communication" "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg" "team_communication/robot_data:geometry_msgs/Pose2D:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/team_communication
)
_generate_msg_cpp(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/team_communication
)
_generate_msg_cpp(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/team_communication
)

### Generating Services

### Generating Module File
_generate_module_cpp(team_communication
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/team_communication
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(team_communication_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(team_communication_generate_messages team_communication_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_cpp _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_cpp _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_cpp _team_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(team_communication_gencpp)
add_dependencies(team_communication_gencpp team_communication_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS team_communication_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/team_communication
)
_generate_msg_eus(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/team_communication
)
_generate_msg_eus(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/team_communication
)

### Generating Services

### Generating Module File
_generate_module_eus(team_communication
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/team_communication
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(team_communication_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(team_communication_generate_messages team_communication_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_eus _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_eus _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_eus _team_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(team_communication_geneus)
add_dependencies(team_communication_geneus team_communication_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS team_communication_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/team_communication
)
_generate_msg_lisp(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/team_communication
)
_generate_msg_lisp(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/team_communication
)

### Generating Services

### Generating Module File
_generate_module_lisp(team_communication
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/team_communication
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(team_communication_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(team_communication_generate_messages team_communication_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_lisp _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_lisp _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_lisp _team_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(team_communication_genlisp)
add_dependencies(team_communication_genlisp team_communication_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS team_communication_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/team_communication
)
_generate_msg_nodejs(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/team_communication
)
_generate_msg_nodejs(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/team_communication
)

### Generating Services

### Generating Module File
_generate_module_nodejs(team_communication
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/team_communication
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(team_communication_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(team_communication_generate_messages team_communication_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_nodejs _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_nodejs _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_nodejs _team_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(team_communication_gennodejs)
add_dependencies(team_communication_gennodejs team_communication_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS team_communication_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/team_communication
)
_generate_msg_py(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/team_communication
)
_generate_msg_py(team_communication
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg"
  "${MSG_I_FLAGS}"
  "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/team_communication
)

### Generating Services

### Generating Module File
_generate_module_py(team_communication
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/team_communication
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(team_communication_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(team_communication_generate_messages team_communication_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_comm.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_py _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/robot_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_py _team_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg/team_data.msg" NAME_WE)
add_dependencies(team_communication_generate_messages_py _team_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(team_communication_genpy)
add_dependencies(team_communication_genpy team_communication_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS team_communication_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/team_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/team_communication
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(team_communication_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(team_communication_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/team_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/team_communication
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(team_communication_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(team_communication_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/team_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/team_communication
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(team_communication_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(team_communication_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/team_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/team_communication
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(team_communication_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(team_communication_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/team_communication)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/team_communication\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/team_communication
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(team_communication_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(team_communication_generate_messages_py geometry_msgs_generate_messages_py)
endif()
