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
include ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/depend.make

# Include the progress variables for this target.
include ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/progress.make

# Include the compile flags for this target's objects.
include ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/flags.make

ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller.cpp.o: ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/flags.make
ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller.cpp.o: /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller/src/game_controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajus/alfarobi_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller.cpp.o"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/game_controller.dir/src/game_controller.cpp.o -c /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller/src/game_controller.cpp

ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game_controller.dir/src/game_controller.cpp.i"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller/src/game_controller.cpp > CMakeFiles/game_controller.dir/src/game_controller.cpp.i

ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game_controller.dir/src/game_controller.cpp.s"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller/src/game_controller.cpp -o CMakeFiles/game_controller.dir/src/game_controller.cpp.s

ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.o: ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/flags.make
ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.o: /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller/src/game_controller_client_t.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajus/alfarobi_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.o"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.o -c /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller/src/game_controller_client_t.cpp

ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.i"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller/src/game_controller_client_t.cpp > CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.i

ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.s"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller/src/game_controller_client_t.cpp -o CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.s

# Object files for target game_controller
game_controller_OBJECTS = \
"CMakeFiles/game_controller.dir/src/game_controller.cpp.o" \
"CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.o"

# External object files for target game_controller
game_controller_EXTERNAL_OBJECTS =

/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller.cpp.o
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/src/game_controller_client_t.cpp.o
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/build.make
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/libroscpp.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/librosconsole.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/librostime.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/libcpp_common.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/libroslib.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /opt/ros/noetic/lib/librospack.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: /usr/lib/x86_64-linux-gnu/libyaml-cpp.so.0.6.2
/home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller: ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ajus/alfarobi_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller"
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/game_controller.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/build: /home/ajus/alfarobi_ws/devel/lib/game_controller/game_controller

.PHONY : ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/build

ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/clean:
	cd /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller && $(CMAKE_COMMAND) -P CMakeFiles/game_controller.dir/cmake_clean.cmake
.PHONY : ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/clean

ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/depend:
	cd /home/ajus/alfarobi_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ajus/alfarobi_ws/src /home/ajus/alfarobi_ws/src/ALFAROBI-Communication/game_controller /home/ajus/alfarobi_ws/build /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller /home/ajus/alfarobi_ws/build/ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ALFAROBI-Communication/game_controller/CMakeFiles/game_controller.dir/depend

