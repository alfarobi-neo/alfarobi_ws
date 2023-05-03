;; Auto-generated. Do not edit!


(when (boundp 'team_communication::team_data)
  (if (not (find-package "TEAM_COMMUNICATION"))
    (make-package "TEAM_COMMUNICATION"))
  (shadow 'team_data (find-package "TEAM_COMMUNICATION")))
(unless (find-package "TEAM_COMMUNICATION::TEAM_DATA")
  (make-package "TEAM_COMMUNICATION::TEAM_DATA"))

(in-package "ROS")
;;//! \htmlinclude team_data.msg.html


(defclass team_communication::team_data
  :super ros::object
  :slots (_robots_data ))

(defmethod team_communication::team_data
  (:init
   (&key
    ((:robots_data __robots_data) ())
    )
   (send-super :init)
   (setq _robots_data __robots_data)
   self)
  (:robots_data
   (&rest __robots_data)
   (if (keywordp (car __robots_data))
       (send* _robots_data __robots_data)
     (progn
       (if __robots_data (setq _robots_data (car __robots_data)))
       _robots_data)))
  (:serialization-length
   ()
   (+
    ;; team_communication/robot_data[] _robots_data
    (apply #'+ (send-all _robots_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; team_communication/robot_data[] _robots_data
     (write-long (length _robots_data) s)
     (dolist (elem _robots_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; team_communication/robot_data[] _robots_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots_data (let (r) (dotimes (i n) (push (instance team_communication::robot_data :init) r)) r))
     (dolist (elem- _robots_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get team_communication::team_data :md5sum-) "1735ac3c77a7ac8b0eef367c0b7ec6e5")
(setf (get team_communication::team_data :datatype-) "team_communication/team_data")
(setf (get team_communication::team_data :definition-)
      "robot_data[] robots_data

================================================================================
MSG: team_communication/robot_data
Header header
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



(provide :team_communication/team_data "1735ac3c77a7ac8b0eef367c0b7ec6e5")


