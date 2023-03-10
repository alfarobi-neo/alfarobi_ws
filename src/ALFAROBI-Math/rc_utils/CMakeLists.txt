cmake_minimum_required(VERSION 2.8.3)
project(rc_utils)

set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS tf cmake_modules)

# Find and include Eigen
find_package(Eigen3 REQUIRED)

###################################################
## Declare things to be passed to other projects ##
###################################################

## INCLUDE_DIRS: include directories of this project that dependent projects also need
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
	INCLUDE_DIRS include
	LIBRARIES rc_utils
)

###########
## Build ##
###########

## Include directories
include_directories(include
	${catkin_INCLUDE_DIRS}
        ${Eigen3_INCLUDE_DIRS}
)

## Build the rc_utils library
add_library(rc_utils
	src/angle_estimator.cpp
	src/attitude_estimator.cpp
	src/conicfit.cpp
	src/planefit.cpp
	src/cyclicwarp.cpp
	src/golay.cpp
	src/kalmanfilter.cpp
)
target_link_libraries(rc_utils
	${catkin_LIBRARIES}
        ${Eigen3_LIBRARIES}
)

################
## Unit tests ##
################

## Attitude estimator test
catkin_add_gtest(test_attitude_estimator
	test/test_attitude_estimator.cpp
)
target_link_libraries(test_attitude_estimator
	rc_utils
	${catkin_LIBRARIES}
	${GTEST_LIBRARIES}
        ${Eigen3_LIBRARIES}

)

## Conic fit test
catkin_add_gtest(test_conicfit
	test/test_conicfit.cpp
)
target_link_libraries(test_conicfit
	rc_utils
	${catkin_LIBRARIES}
	${GTEST_LIBRARIES}
        ${Eigen3_LIBRARIES}

)

## Plane fit test
catkin_add_gtest(test_planefit
	test/test_planefit.cpp
)
target_link_libraries(test_planefit
	rc_utils
	${catkin_LIBRARIES}
	${GTEST_LIBRARIES}
        ${Eigen3_LIBRARIES}

)

## FIR filter test
catkin_add_gtest(test_firfilter
	test/test_firfilter.cpp
)
target_link_libraries(test_firfilter
	rc_utils
	${catkin_LIBRARIES}
	${GTEST_LIBRARIES}
        ${Eigen3_LIBRARIES}

)

## Golay test
catkin_add_gtest(test_golay
	test/test_golay.cpp
)
target_link_libraries(test_golay
	rc_utils
	${catkin_LIBRARIES}
	${GTEST_LIBRARIES}
        ${Eigen3_LIBRARIES}

)

## Test math utilities
catkin_add_gtest(test_math_util
	test/test_math_util.cpp
)
target_link_libraries(test_math_util
	${catkin_LIBRARIES}
	${GTEST_LIBRARIES}
        ${Eigen3_LIBRARIES}

)

## Test miscellaneous utilities
catkin_add_gtest(test_misc_util
	test/test_misc_util.cpp
)
target_link_libraries(test_misc_util
	rc_utils
	${catkin_LIBRARIES}
	${GTEST_LIBRARIES}
        ${Eigen3_LIBRARIES}
)

#############
## Install ##
#############

## Install the generated libraries
install(TARGETS rc_utils
	LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)
# EOF
