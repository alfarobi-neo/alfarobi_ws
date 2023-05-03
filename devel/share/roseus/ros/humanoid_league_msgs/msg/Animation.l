;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::Animation)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'Animation (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::ANIMATION")
  (make-package "HUMANOID_LEAGUE_MSGS::ANIMATION"))

(in-package "ROS")
;;//! \htmlinclude Animation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass humanoid_league_msgs::Animation
  :super ros::object
  :slots (_header _request _first _last _hcm _position ))

(defmethod humanoid_league_msgs::Animation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request __request) nil)
    ((:first __first) nil)
    ((:last __last) nil)
    ((:hcm __hcm) nil)
    ((:position __position) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _request __request)
   (setq _first __first)
   (setq _last __last)
   (setq _hcm __hcm)
   (setq _position __position)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request
   (&optional (__request :null))
   (if (not (eq __request :null)) (setq _request __request)) _request)
  (:first
   (&optional (__first :null))
   (if (not (eq __first :null)) (setq _first __first)) _first)
  (:last
   (&optional (__last :null))
   (if (not (eq __last :null)) (setq _last __last)) _last)
  (:hcm
   (&optional (__hcm :null))
   (if (not (eq __hcm :null)) (setq _hcm __hcm)) _hcm)
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _request
    1
    ;; bool _first
    1
    ;; bool _last
    1
    ;; bool _hcm
    1
    ;; trajectory_msgs/JointTrajectory _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _request
       (if _request (write-byte -1 s) (write-byte 0 s))
     ;; bool _first
       (if _first (write-byte -1 s) (write-byte 0 s))
     ;; bool _last
       (if _last (write-byte -1 s) (write-byte 0 s))
     ;; bool _hcm
       (if _hcm (write-byte -1 s) (write-byte 0 s))
     ;; trajectory_msgs/JointTrajectory _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _request
     (setq _request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _first
     (setq _first (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _last
     (setq _last (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _hcm
     (setq _hcm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; trajectory_msgs/JointTrajectory _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::Animation :md5sum-) "dca54c410ac9021185fa92160c24c438")
(setf (get humanoid_league_msgs::Animation :datatype-) "humanoid_league_msgs/Animation")
(setf (get humanoid_league_msgs::Animation :definition-)
      "Header header

# This is a request to make HCM controllable, e.g. stop walking
bool request

# First message of this animation
bool first

# Last message of this animation
bool last

# Is this animation comming from the hardware control manager
bool hcm

# Joint goals
trajectory_msgs/JointTrajectory position

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
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

")



(provide :humanoid_league_msgs/Animation "dca54c410ac9021185fa92160c24c438")


