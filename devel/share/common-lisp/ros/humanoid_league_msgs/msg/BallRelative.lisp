; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude BallRelative.msg.html

(cl:defclass <BallRelative> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ball_relative
    :reader ball_relative
    :initarg :ball_relative
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass BallRelative (<BallRelative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallRelative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallRelative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<BallRelative> is deprecated: use humanoid_league_msgs-msg:BallRelative instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BallRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ball_relative-val :lambda-list '(m))
(cl:defmethod ball_relative-val ((m <BallRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:ball_relative-val is deprecated.  Use humanoid_league_msgs-msg:ball_relative instead.")
  (ball_relative m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <BallRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallRelative>) ostream)
  "Serializes a message object of type '<BallRelative>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball_relative) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallRelative>) istream)
  "Deserializes a message object of type '<BallRelative>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball_relative) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallRelative>)))
  "Returns string type for a message object of type '<BallRelative>"
  "humanoid_league_msgs/BallRelative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallRelative)))
  "Returns string type for a message object of type 'BallRelative"
  "humanoid_league_msgs/BallRelative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallRelative>)))
  "Returns md5sum for a message object of type '<BallRelative>"
  "d02a2a10c86c18c5449caf060c21d4c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallRelative)))
  "Returns md5sum for a message object of type 'BallRelative"
  "d02a2a10c86c18c5449caf060c21d4c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallRelative>)))
  "Returns full string definition for message of type '<BallRelative>"
  (cl:format cl:nil "# Provides the relative position of the ball~%~%# The header is included to get the time stamp~%std_msgs/Header header~%~%# x to front~%# y to left~%# z height (should normally be 0, if ball was not high kicked)~%# Everything is measured in meters~%geometry_msgs/Point ball_relative~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no ball was found~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallRelative)))
  "Returns full string definition for message of type 'BallRelative"
  (cl:format cl:nil "# Provides the relative position of the ball~%~%# The header is included to get the time stamp~%std_msgs/Header header~%~%# x to front~%# y to left~%# z height (should normally be 0, if ball was not high kicked)~%# Everything is measured in meters~%geometry_msgs/Point ball_relative~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no ball was found~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallRelative>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball_relative))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallRelative>))
  "Converts a ROS message object to a list"
  (cl:list 'BallRelative
    (cl:cons ':header (header msg))
    (cl:cons ':ball_relative (ball_relative msg))
    (cl:cons ':confidence (confidence msg))
))
