;; Auto-generated. Do not edit!


(when (boundp 'team_communication::robot_data)
  (if (not (find-package "TEAM_COMMUNICATION"))
    (make-package "TEAM_COMMUNICATION"))
  (shadow 'robot_data (find-package "TEAM_COMMUNICATION")))
(unless (find-package "TEAM_COMMUNICATION::ROBOT_DATA")
  (make-package "TEAM_COMMUNICATION::ROBOT_DATA"))

(in-package "ROS")
;;//! \htmlinclude robot_data.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass team_communication::robot_data
  :super ros::object
  :slots (_header _robot_name _robot_id _robot_pos _ball_local _robot_status _ball_status _is_moving ))

(defmethod team_communication::robot_data
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_name __robot_name) "")
    ((:robot_id __robot_id) 0)
    ((:robot_pos __robot_pos) (instance geometry_msgs::Pose2D :init))
    ((:ball_local __ball_local) (instance geometry_msgs::Point :init))
    ((:robot_status __robot_status) 0)
    ((:ball_status __ball_status) 0)
    ((:is_moving __is_moving) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_name (string __robot_name))
   (setq _robot_id (round __robot_id))
   (setq _robot_pos __robot_pos)
   (setq _ball_local __ball_local)
   (setq _robot_status (round __robot_status))
   (setq _ball_status (round __ball_status))
   (setq _is_moving (round __is_moving))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:robot_pos
   (&rest __robot_pos)
   (if (keywordp (car __robot_pos))
       (send* _robot_pos __robot_pos)
     (progn
       (if __robot_pos (setq _robot_pos (car __robot_pos)))
       _robot_pos)))
  (:ball_local
   (&rest __ball_local)
   (if (keywordp (car __ball_local))
       (send* _ball_local __ball_local)
     (progn
       (if __ball_local (setq _ball_local (car __ball_local)))
       _ball_local)))
  (:robot_status
   (&optional __robot_status)
   (if __robot_status (setq _robot_status __robot_status)) _robot_status)
  (:ball_status
   (&optional __ball_status)
   (if __ball_status (setq _ball_status __ball_status)) _ball_status)
  (:is_moving
   (&optional __is_moving)
   (if __is_moving (setq _is_moving __is_moving)) _is_moving)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_name
    4 (length _robot_name)
    ;; int8 _robot_id
    1
    ;; geometry_msgs/Pose2D _robot_pos
    (send _robot_pos :serialization-length)
    ;; geometry_msgs/Point _ball_local
    (send _ball_local :serialization-length)
    ;; uint8 _robot_status
    1
    ;; uint8 _ball_status
    1
    ;; uint8 _is_moving
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; int8 _robot_id
       (write-byte _robot_id s)
     ;; geometry_msgs/Pose2D _robot_pos
       (send _robot_pos :serialize s)
     ;; geometry_msgs/Point _ball_local
       (send _ball_local :serialize s)
     ;; uint8 _robot_status
       (write-byte _robot_status s)
     ;; uint8 _ball_status
       (write-byte _ball_status s)
     ;; uint8 _is_moving
       (write-byte _is_moving s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _robot_id
     (setq _robot_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_id 127) (setq _robot_id (- _robot_id 256)))
   ;; geometry_msgs/Pose2D _robot_pos
     (send _robot_pos :deserialize buf ptr-) (incf ptr- (send _robot_pos :serialization-length))
   ;; geometry_msgs/Point _ball_local
     (send _ball_local :deserialize buf ptr-) (incf ptr- (send _ball_local :serialization-length))
   ;; uint8 _robot_status
     (setq _robot_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ball_status
     (setq _ball_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _is_moving
     (setq _is_moving (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get team_communication::robot_data :md5sum-) "4661b4bc875594f135e9f8677fd086cf")
(setf (get team_communication::robot_data :datatype-) "team_communication/robot_data")
(setf (get team_communication::robot_data :definition-)
      "Header header
string robot_name
int8 robot_id
geometry_msgs/Pose2D robot_pos
geometry_msgs/Point ball_local
uint8 robot_status
uint8 ball_status
uint8 is_moving

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :team_communication/robot_data "4661b4bc875594f135e9f8677fd086cf")


