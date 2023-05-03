;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::ObstaclesRelative)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'ObstaclesRelative (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLESRELATIVE")
  (make-package "HUMANOID_LEAGUE_MSGS::OBSTACLESRELATIVE"))

(in-package "ROS")
;;//! \htmlinclude ObstaclesRelative.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass humanoid_league_msgs::ObstaclesRelative
  :super ros::object
  :slots (_header _obstacles ))

(defmethod humanoid_league_msgs::ObstaclesRelative
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacles __obstacles) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacles __obstacles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; humanoid_league_msgs/ObstacleRelative[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; humanoid_league_msgs/ObstacleRelative[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; humanoid_league_msgs/ObstacleRelative[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::ObstacleRelative :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::ObstaclesRelative :md5sum-) "5f2aaa3a12aada8dcc308c0682249316")
(setf (get humanoid_league_msgs::ObstaclesRelative :datatype-) "humanoid_league_msgs/ObstaclesRelative")
(setf (get humanoid_league_msgs::ObstaclesRelative :definition-)
      "# The header is included to get the time stamp for later use in tf
std_msgs/Header header

ObstacleRelative[] obstacles
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/ObstaclesRelative "5f2aaa3a12aada8dcc308c0682249316")


