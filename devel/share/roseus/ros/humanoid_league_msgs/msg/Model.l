;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::Model)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'Model (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::MODEL")
  (make-package "HUMANOID_LEAGUE_MSGS::MODEL"))

(in-package "ROS")
;;//! \htmlinclude Model.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass humanoid_league_msgs::Model
  :super ros::object
  :slots (_ball _obstacles _position ))

(defmethod humanoid_league_msgs::Model
  (:init
   (&key
    ((:ball __ball) (instance humanoid_league_msgs::BallRelative :init))
    ((:obstacles __obstacles) (instance humanoid_league_msgs::ObstaclesRelative :init))
    ((:position __position) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _ball __ball)
   (setq _obstacles __obstacles)
   (setq _position __position)
   self)
  (:ball
   (&rest __ball)
   (if (keywordp (car __ball))
       (send* _ball __ball)
     (progn
       (if __ball (setq _ball (car __ball)))
       _ball)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; humanoid_league_msgs/BallRelative _ball
    (send _ball :serialization-length)
    ;; humanoid_league_msgs/ObstaclesRelative _obstacles
    (send _obstacles :serialization-length)
    ;; geometry_msgs/PoseWithCovarianceStamped _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; humanoid_league_msgs/BallRelative _ball
       (send _ball :serialize s)
     ;; humanoid_league_msgs/ObstaclesRelative _obstacles
       (send _obstacles :serialize s)
     ;; geometry_msgs/PoseWithCovarianceStamped _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; humanoid_league_msgs/BallRelative _ball
     (send _ball :deserialize buf ptr-) (incf ptr- (send _ball :serialization-length))
   ;; humanoid_league_msgs/ObstaclesRelative _obstacles
     (send _obstacles :deserialize buf ptr-) (incf ptr- (send _obstacles :serialization-length))
   ;; geometry_msgs/PoseWithCovarianceStamped _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::Model :md5sum-) "55f7ee25e88a6845f62dc23a8bccd993")
(setf (get humanoid_league_msgs::Model :datatype-) "humanoid_league_msgs/Model")
(setf (get humanoid_league_msgs::Model :definition-)
      "# The model message contains all information from the object recognition after filtering

BallRelative ball
ObstaclesRelative obstacles
geometry_msgs/PoseWithCovarianceStamped position
================================================================================
MSG: humanoid_league_msgs/BallRelative
# Provides the relative position of the ball

# The header is included to get the time stamp
std_msgs/Header header

# x to front
# y to left
# z height (should normally be 0, if ball was not high kicked)
# Everything is measured in meters
geometry_msgs/Point ball_relative

# A certainty rating between 0 and 1, where 1 is the surest.
# 0 means no ball was found
float32 confidence
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: humanoid_league_msgs/ObstaclesRelative
# The header is included to get the time stamp for later use in tf
std_msgs/Header header

ObstacleRelative[] obstacles
================================================================================
MSG: humanoid_league_msgs/ObstacleRelative
# An obstacle relative to the robot

# Main color of the obstacle, to differentiate between robots and other things like human legs
# Something we cant classify
uint8 UNDEFINED = 0
# robot without known color
uint8 ROBOT_UNDEFINED = 1
uint8 ROBOT_MAGENTA = 2
uint8 ROBOT_CYAN = 3
# A human legs, e.g. from the referee
uint8 HUMAN = 4
# Black poles which are normally used for technical challenges
uint8 POLE = 5
uint8 color

# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known
uint8 playerNumber

# Position (in meters)
geometry_msgs/Point position

# Educated guess of the width and height (in meters)
float32 width
float32 height

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :humanoid_league_msgs/Model "55f7ee25e88a6845f62dc23a8bccd993")


