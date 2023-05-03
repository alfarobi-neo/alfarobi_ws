; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude Position2D.msg.html

(cl:defclass <Position2D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Position2D (<Position2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<Position2D> is deprecated: use humanoid_league_msgs-msg:Position2D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Position2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Position2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:pose-val is deprecated.  Use humanoid_league_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Position2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position2D>) ostream)
  "Serializes a message object of type '<Position2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position2D>) istream)
  "Deserializes a message object of type '<Position2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position2D>)))
  "Returns string type for a message object of type '<Position2D>"
  "humanoid_league_msgs/Position2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position2D)))
  "Returns string type for a message object of type 'Position2D"
  "humanoid_league_msgs/Position2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position2D>)))
  "Returns md5sum for a message object of type '<Position2D>"
  "d607bce13bd2c94613a4183be419f227")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position2D)))
  "Returns md5sum for a message object of type 'Position2D"
  "d607bce13bd2c94613a4183be419f227")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position2D>)))
  "Returns full string definition for message of type '<Position2D>"
  (cl:format cl:nil "# The position system is the same as mitecom. The following part is taken from the mitecom documentation:~%# https://github.com/fumanoids/mitecom~%# The origin of the absolute coordinate center is the center of the middle~%# circle (center of field). The x axis points towards the opponent goal, the~%# y axis to the left.~%#~%#      y~%#      ^       ______________________~%#      |    M  |          |          |  O~%#      |    Y  |_ -x, y   |   x, y  _|  P~%#      |    G  | |        |        | |  P~%# 0    +    O  | |       ( )       | |  G~%#      |    A  |_|        |        |_|  O~%#      |    L  |  -x,-y   |   x,-y   |  A~%#      |       |__________|__________|  L~%#      |~%#      +------------------+--------------> x~%#                         0~%#~%# The 0 value of the orientation is pointing to the opponent side (right side in the image).~%# The value increases counter clockwise~%# Everything in meters (because it is the ROS standard)~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%geometry_msgs/Pose2D pose~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position2D)))
  "Returns full string definition for message of type 'Position2D"
  (cl:format cl:nil "# The position system is the same as mitecom. The following part is taken from the mitecom documentation:~%# https://github.com/fumanoids/mitecom~%# The origin of the absolute coordinate center is the center of the middle~%# circle (center of field). The x axis points towards the opponent goal, the~%# y axis to the left.~%#~%#      y~%#      ^       ______________________~%#      |    M  |          |          |  O~%#      |    Y  |_ -x, y   |   x, y  _|  P~%#      |    G  | |        |        | |  P~%# 0    +    O  | |       ( )       | |  G~%#      |    A  |_|        |        |_|  O~%#      |    L  |  -x,-y   |   x,-y   |  A~%#      |       |__________|__________|  L~%#      |~%#      +------------------+--------------> x~%#                         0~%#~%# The 0 value of the orientation is pointing to the opponent side (right side in the image).~%# The value increases counter clockwise~%# Everything in meters (because it is the ROS standard)~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%geometry_msgs/Pose2D pose~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Position2D
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':confidence (confidence msg))
))
