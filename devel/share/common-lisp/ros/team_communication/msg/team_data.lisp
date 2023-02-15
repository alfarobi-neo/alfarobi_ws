; Auto-generated. Do not edit!


(cl:in-package team_communication-msg)


;//! \htmlinclude team_data.msg.html

(cl:defclass <team_data> (roslisp-msg-protocol:ros-message)
  ((robots_data
    :reader robots_data
    :initarg :robots_data
    :type (cl:vector team_communication-msg:robot_data)
   :initform (cl:make-array 0 :element-type 'team_communication-msg:robot_data :initial-element (cl:make-instance 'team_communication-msg:robot_data))))
)

(cl:defclass team_data (<team_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <team_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'team_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name team_communication-msg:<team_data> is deprecated: use team_communication-msg:team_data instead.")))

(cl:ensure-generic-function 'robots_data-val :lambda-list '(m))
(cl:defmethod robots_data-val ((m <team_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:robots_data-val is deprecated.  Use team_communication-msg:robots_data instead.")
  (robots_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <team_data>) ostream)
  "Serializes a message object of type '<team_data>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <team_data>) istream)
  "Deserializes a message object of type '<team_data>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'team_communication-msg:robot_data))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<team_data>)))
  "Returns string type for a message object of type '<team_data>"
  "team_communication/team_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'team_data)))
  "Returns string type for a message object of type 'team_data"
  "team_communication/team_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<team_data>)))
  "Returns md5sum for a message object of type '<team_data>"
  "1735ac3c77a7ac8b0eef367c0b7ec6e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'team_data)))
  "Returns md5sum for a message object of type 'team_data"
  "1735ac3c77a7ac8b0eef367c0b7ec6e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<team_data>)))
  "Returns full string definition for message of type '<team_data>"
  (cl:format cl:nil "robot_data[] robots_data~%~%================================================================================~%MSG: team_communication/robot_data~%Header header~%string robot_name~%int8 robot_id~%geometry_msgs/Pose2D robot_pos~%geometry_msgs/Point ball_local~%uint8 robot_status~%uint8 ball_status~%uint8 is_moving~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'team_data)))
  "Returns full string definition for message of type 'team_data"
  (cl:format cl:nil "robot_data[] robots_data~%~%================================================================================~%MSG: team_communication/robot_data~%Header header~%string robot_name~%int8 robot_id~%geometry_msgs/Pose2D robot_pos~%geometry_msgs/Point ball_local~%uint8 robot_status~%uint8 ball_status~%uint8 is_moving~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <team_data>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <team_data>))
  "Converts a ROS message object to a list"
  (cl:list 'team_data
    (cl:cons ':robots_data (robots_data msg))
))
