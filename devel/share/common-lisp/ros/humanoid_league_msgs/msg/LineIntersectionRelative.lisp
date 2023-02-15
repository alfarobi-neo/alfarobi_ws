; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude LineIntersectionRelative.msg.html

(cl:defclass <LineIntersectionRelative> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (segments
    :reader segments
    :initarg :segments
    :type humanoid_league_msgs-msg:LineSegmentRelative
    :initform (cl:make-instance 'humanoid_league_msgs-msg:LineSegmentRelative))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass LineIntersectionRelative (<LineIntersectionRelative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineIntersectionRelative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineIntersectionRelative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<LineIntersectionRelative> is deprecated: use humanoid_league_msgs-msg:LineIntersectionRelative instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LineIntersectionRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:type-val is deprecated.  Use humanoid_league_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <LineIntersectionRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:segments-val is deprecated.  Use humanoid_league_msgs-msg:segments instead.")
  (segments m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LineIntersectionRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LineIntersectionRelative>)))
    "Constants for message type '<LineIntersectionRelative>"
  '((:UNDEFINED . 0)
    (:L . 1)
    (:T . 2)
    (:X . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LineIntersectionRelative)))
    "Constants for message type 'LineIntersectionRelative"
  '((:UNDEFINED . 0)
    (:L . 1)
    (:T . 2)
    (:X . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineIntersectionRelative>) ostream)
  "Serializes a message object of type '<LineIntersectionRelative>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segments) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineIntersectionRelative>) istream)
  "Deserializes a message object of type '<LineIntersectionRelative>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segments) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineIntersectionRelative>)))
  "Returns string type for a message object of type '<LineIntersectionRelative>"
  "humanoid_league_msgs/LineIntersectionRelative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineIntersectionRelative)))
  "Returns string type for a message object of type 'LineIntersectionRelative"
  "humanoid_league_msgs/LineIntersectionRelative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineIntersectionRelative>)))
  "Returns md5sum for a message object of type '<LineIntersectionRelative>"
  "8392212b950b9d1b4d55e78d2094a2cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineIntersectionRelative)))
  "Returns md5sum for a message object of type 'LineIntersectionRelative"
  "8392212b950b9d1b4d55e78d2094a2cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineIntersectionRelative>)))
  "Returns full string definition for message of type '<LineIntersectionRelative>"
  (cl:format cl:nil "# Information about a special line feature on the field~%~%# The type defines which kind of intersection is present~%uint8 UNDEFINED=0~%uint8 L=1~%uint8 T=2~%uint8 X=3~%uint8 type~%~%# The line segments related to this crossing~%humanoid_league_msgs/LineSegmentRelative segments~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: humanoid_league_msgs/LineSegmentRelative~%# A line segment relative to the robot~%~%# Start and end position of the line~%# x in front of the robot~%# y to the left~%# z should be 0~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineIntersectionRelative)))
  "Returns full string definition for message of type 'LineIntersectionRelative"
  (cl:format cl:nil "# Information about a special line feature on the field~%~%# The type defines which kind of intersection is present~%uint8 UNDEFINED=0~%uint8 L=1~%uint8 T=2~%uint8 X=3~%uint8 type~%~%# The line segments related to this crossing~%humanoid_league_msgs/LineSegmentRelative segments~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: humanoid_league_msgs/LineSegmentRelative~%# A line segment relative to the robot~%~%# Start and end position of the line~%# x in front of the robot~%# y to the left~%# z should be 0~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineIntersectionRelative>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segments))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineIntersectionRelative>))
  "Converts a ROS message object to a list"
  (cl:list 'LineIntersectionRelative
    (cl:cons ':type (type msg))
    (cl:cons ':segments (segments msg))
    (cl:cons ':confidence (confidence msg))
))
