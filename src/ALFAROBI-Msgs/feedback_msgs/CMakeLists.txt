cmake_minimum_required(VERSION 2.8.3)
project(feedback_msgs)

################################################################################
# Packages
################################################################################
find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
)

################################################################################
# Declare ROS messages, services and actions
################################################################################
add_message_files(
  FILES
  FeedbackParam.msg
)

add_service_files(
  FILES
  GetFeedbackParam.srv
  SetFeedbackParam.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

################################################################################
# Declare ROS dynamic reconfigure parameters
################################################################################

################################################################################
# Catkin specific configuration
################################################################################
catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs
)

################################################################################
# Build
################################################################################

################################################################################
# Install
################################################################################

################################################################################
# Test
################################################################################
