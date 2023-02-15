;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::BallRelative)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'BallRelative (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::BALLRELATIVE")
  (make-package "HUMANOID_LEAGUE_MSGS::BALLRELATIVE"))

(in-package "ROS")
;;//! \htmlinclude BallRelative.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass humanoid_league_msgs::BallRelative
  :super ros::object
  :slots (_header _ball_relative _confidence ))

(defmethod humanoid_league_msgs::BallRelative
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ball_relative __ball_relative) (instance geometry_msgs::Point :init))
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ball_relative __ball_relative)
   (setq _confidence (float __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ball_relative
   (&rest __ball_relative)
   (if (keywordp (car __ball_relative))
       (send* _ball_relative __ball_relative)
     (progn
       (if __ball_relative (setq _ball_relative (car __ball_relative)))
       _ball_relative)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _ball_relative
    (send _ball_relative :serialization-length)
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _ball_relative
       (send _ball_relative :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _ball_relative
     (send _ball_relative :deserialize buf ptr-) (incf ptr- (send _ball_relative :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::BallRelative :md5sum-) "d02a2a10c86c18c5449caf060c21d4c6")
(setf (get humanoid_league_msgs::BallRelative :datatype-) "humanoid_league_msgs/BallRelative")
(setf (get humanoid_league_msgs::BallRelative :definition-)
      "# Provides the relative position of the ball

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/BallRelative "d02a2a10c86c18c5449caf060c21d4c6")


