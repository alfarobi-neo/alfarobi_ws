# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "game_controller: 1 messages, 0 services")

set(MSG_I_FLAGS "-Igame_controller:/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(game_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg" NAME_WE)
add_custom_target(_game_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "game_controller" "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(game_controller
  "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/game_controller
)

### Generating Services

### Generating Module File
_generate_module_cpp(game_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/game_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(game_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(game_controller_generate_messages game_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg" NAME_WE)
add_dependencies(game_controller_generate_messages_cpp _game_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(game_controller_gencpp)
add_dependencies(game_controller_gencpp game_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS game_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(game_controller
  "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/game_controller
)

### Generating Services

### Generating Module File
_generate_module_eus(game_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/game_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(game_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(game_controller_generate_messages game_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg" NAME_WE)
add_dependencies(game_controller_generate_messages_eus _game_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(game_controller_geneus)
add_dependencies(game_controller_geneus game_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS game_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(game_controller
  "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/game_controller
)

### Generating Services

### Generating Module File
_generate_module_lisp(game_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/game_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(game_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(game_controller_generate_messages game_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg" NAME_WE)
add_dependencies(game_controller_generate_messages_lisp _game_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(game_controller_genlisp)
add_dependencies(game_controller_genlisp game_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS game_controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(game_controller
  "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/game_controller
)

### Generating Services

### Generating Module File
_generate_module_nodejs(game_controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/game_controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(game_controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(game_controller_generate_messages game_controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg" NAME_WE)
add_dependencies(game_controller_generate_messages_nodejs _game_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(game_controller_gennodejs)
add_dependencies(game_controller_gennodejs game_controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS game_controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(game_controller
  "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/game_controller
)

### Generating Services

### Generating Module File
_generate_module_py(game_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/game_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(game_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(game_controller_generate_messages game_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fariz/Desktop/alfarobi_ws/src/ALFAROBI-Communication/game_controller/msg/GameState.msg" NAME_WE)
add_dependencies(game_controller_generate_messages_py _game_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(game_controller_genpy)
add_dependencies(game_controller_genpy game_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS game_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/game_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/game_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(game_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/game_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/game_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(game_controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/game_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/game_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(game_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/game_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/game_controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(game_controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/game_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/game_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/game_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(game_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
