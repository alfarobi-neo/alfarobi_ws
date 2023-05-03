; Auto-generated. Do not edit!


(cl:in-package team_communication-msg)


;//! \htmlinclude robot_data.msg.html

(cl:defclass <robot_data> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:fixnum
    :initform 0)
   (robot_pos
    :reader robot_pos
    :initarg :robot_pos
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (ball_local
    :reader ball_local
    :initarg :ball_local
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (robot_status
    :reader robot_status
    :initarg :robot_status
    :type cl:fixnum
    :initform 0)
   (ball_status
    :reader ball_status
    :initarg :ball_status
    :type cl:fixnum
    :initform 0)
   (is_moving
    :reader is_moving
    :initarg :is_moving
    :type cl:fixnum
    :initform 0))
)

(cl:defclass robot_data (<robot_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name team_communication-msg:<robot_data> is deprecated: use team_communication-msg:robot_data instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <robot_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:header-val is deprecated.  Use team_communication-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <robot_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:robot_name-val is deprecated.  Use team_communication-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <robot_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:robot_id-val is deprecated.  Use team_communication-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'robot_pos-val :lambda-list '(m))
(cl:defmethod robot_pos-val ((m <robot_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:robot_pos-val is deprecated.  Use team_communication-msg:robot_pos instead.")
  (robot_pos m))

(cl:ensure-generic-function 'ball_local-val :lambda-list '(m))
(cl:defmethod ball_local-val ((m <robot_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:ball_local-val is deprecated.  Use team_communication-msg:ball_local instead.")
  (ball_local m))

(cl:ensure-generic-function 'robot_status-val :lambda-list '(m))
(cl:defmethod robot_status-val ((m <robot_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:robot_status-val is deprecated.  Use team_communication-msg:robot_status instead.")
  (robot_status m))

(cl:ensure-generic-function 'ball_status-val :lambda-list '(m))
(cl:defmethod ball_status-val ((m <robot_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:ball_status-val is deprecated.  Use team_communication-msg:ball_status instead.")
  (ball_status m))

(cl:ensure-generic-function 'is_moving-val :lambda-list '(m))
(cl:defmethod is_moving-val ((m <robot_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:is_moving-val is deprecated.  Use team_communication-msg:is_moving instead.")
  (is_moving m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_data>) ostream)
  "Serializes a message object of type '<robot_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball_local) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ball_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_moving)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_data>) istream)
  "Deserializes a message object of type '<robot_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball_local) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ball_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_moving)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_data>)))
  "Returns string type for a message object of type '<robot_data>"
  "team_communication/robot_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_data)))
  "Returns string type for a message object of type 'robot_data"
  "team_communication/robot_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_data>)))
  "Returns md5sum for a message object of type '<robot_data>"
  "4661b4bc875594f135e9f8677fd086cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_data)))
  "Returns md5sum for a message object of type 'robot_data"
  "4661b4bc875594f135e9f8677fd086cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_data>)))
  "Returns full string definition for message of type '<robot_data>"
  (cl:format cl:nil "Header header~%string robot_name~%int8 robot_id~%geometry_msgs/Pose2D robot_pos~%geometry_msgs/Point ball_local~%uint8 robot_status~%uint8 ball_status~%uint8 is_moving~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_data)))
  "Returns full string definition for message of type 'robot_data"
  (cl:format cl:nil "Header header~%string robot_name~%int8 robot_id~%geometry_msgs/Pose2D robot_pos~%geometry_msgs/Point ball_local~%uint8 robot_status~%uint8 ball_status~%uint8 is_moving~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_name))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball_local))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_data>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_data
    (cl:cons ':header (header msg))
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':robot_pos (robot_pos msg))
    (cl:cons ':ball_local (ball_local msg))
    (cl:cons ':robot_status (robot_status msg))
    (cl:cons ':ball_status (ball_status msg))
    (cl:cons ':is_moving (is_moving msg))
))
