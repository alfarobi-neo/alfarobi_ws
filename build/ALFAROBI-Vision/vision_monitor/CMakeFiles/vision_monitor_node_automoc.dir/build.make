# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/alfarobi/alfarobi_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alfarobi/alfarobi_ws/build

# Utility rule file for vision_monitor_node_automoc.

# Include the progress variables for this target.
include ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/progress.make

ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/alfarobi/alfarobi_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic moc and uic for target vision_monitor_node"
	cd /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_monitor && /usr/bin/cmake -E cmake_autogen /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/ ""

vision_monitor_node_automoc: ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc
vision_monitor_node_automoc: ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/build.make

.PHONY : vision_monitor_node_automoc

# Rule to build all files generated by this target.
ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/build: vision_monitor_node_automoc

.PHONY : ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/build

ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/clean:
	cd /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_monitor && $(CMAKE_COMMAND) -P CMakeFiles/vision_monitor_node_automoc.dir/cmake_clean.cmake
.PHONY : ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/clean

ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/depend:
	cd /home/alfarobi/alfarobi_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alfarobi/alfarobi_ws/src /home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_monitor /home/alfarobi/alfarobi_ws/build /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_monitor /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ALFAROBI-Vision/vision_monitor/CMakeFiles/vision_monitor_node_automoc.dir/depend

