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

# Utility rule file for clean_test_results_cv_bridge.

# Include the progress variables for this target.
include ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/progress.make

ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge:
	cd /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/cv_bridge/test && /usr/bin/python2 /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/alfarobi/alfarobi_ws/build/test_results/cv_bridge

clean_test_results_cv_bridge: ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge
clean_test_results_cv_bridge: ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/build.make

.PHONY : clean_test_results_cv_bridge

# Rule to build all files generated by this target.
ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/build: clean_test_results_cv_bridge

.PHONY : ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/build

ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/clean:
	cd /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/cv_bridge/test && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_cv_bridge.dir/cmake_clean.cmake
.PHONY : ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/clean

ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/depend:
	cd /home/alfarobi/alfarobi_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alfarobi/alfarobi_ws/src /home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/cv_bridge/test /home/alfarobi/alfarobi_ws/build /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/cv_bridge/test /home/alfarobi/alfarobi_ws/build/ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ALFAROBI-Vision/cv_bridge/test/CMakeFiles/clean_test_results_cv_bridge.dir/depend
