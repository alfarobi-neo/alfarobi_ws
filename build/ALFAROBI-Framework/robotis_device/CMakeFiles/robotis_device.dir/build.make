# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ajus/alfarobi_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ajus/alfarobi_ws/build

# Include any dependencies generated for this target.
include ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/depend.make

# Include the progress variables for this target.
include ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/progress.make

# Include the compile flags for this target's objects.
include ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/flags.make

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.o: ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/flags.make
ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.o: /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/robot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajus/alfarobi_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.o"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.o -c /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/robot.cpp

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.i"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/robot.cpp > CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.i

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.s"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/robot.cpp -o CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.s

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.o: ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/flags.make
ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.o: /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/sensor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajus/alfarobi_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.o"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.o -c /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/sensor.cpp

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.i"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/sensor.cpp > CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.i

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.s"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/sensor.cpp -o CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.s

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.o: ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/flags.make
ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.o: /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/dynamixel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajus/alfarobi_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.o"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.o -c /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/dynamixel.cpp

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.i"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/dynamixel.cpp > CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.i

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.s"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device/src/robotis_device/dynamixel.cpp -o CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.s

# Object files for target robotis_device
robotis_device_OBJECTS = \
"CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.o" \
"CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.o" \
"CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.o"

# External object files for target robotis_device
robotis_device_EXTERNAL_OBJECTS =

/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/robot.cpp.o
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/sensor.cpp.o
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/src/robotis_device/dynamixel.cpp.o
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/build.make
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/libroscpp.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/librosconsole.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/librostime.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/libcpp_common.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /home/ajus/alfarobi_ws/devel/lib/libdynamixel_sdk.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/libroscpp.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/librosconsole.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/librostime.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /opt/ros/noetic/lib/libcpp_common.so
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ajus/alfarobi_ws/devel/lib/librobotis_device.so: ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ajus/alfarobi_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/ajus/alfarobi_ws/devel/lib/librobotis_device.so"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/robotis_device.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/build: /home/ajus/alfarobi_ws/devel/lib/librobotis_device.so

.PHONY : ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/build

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/clean:
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device && $(CMAKE_COMMAND) -P CMakeFiles/robotis_device.dir/cmake_clean.cmake
.PHONY : ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/clean

ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/depend:
	cd /home/ajus/alfarobi_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ajus/alfarobi_ws/src /home/ajus/alfarobi_ws/src/ALFAROBI-Framework/robotis_device /home/ajus/alfarobi_ws/build /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device /home/ajus/alfarobi_ws/build/ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ALFAROBI-Framework/robotis_device/CMakeFiles/robotis_device.dir/depend

