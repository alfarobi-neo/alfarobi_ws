# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "op3_base_module;roscpp;std_msgs;op3_offset_tuner_msgs;dynamixel_sdk;robotis_controller".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lop3_offset_tuner_server".split(';') if "-lop3_offset_tuner_server" != "" else []
PROJECT_NAME = "op3_offset_tuner_server"
PROJECT_SPACE_DIR = "/home/fariz/Desktop/alfarobi_ws/install"
PROJECT_VERSION = "0.2.2"
