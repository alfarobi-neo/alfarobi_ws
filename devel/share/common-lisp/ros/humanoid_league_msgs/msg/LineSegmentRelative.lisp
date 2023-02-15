; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude LineSegmentRelative.msg.html

(cl:defclass <LineSegmentRelative> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (end
    :reader end
    :initarg :end
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass LineSegmentRelative (<LineSegmentRelative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineSegmentRelative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineSegmentRelative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<LineSegmentRelative> is deprecated: use humanoid_league_msgs-msg:LineSegmentRelative instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <LineSegmentRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:start-val is deprecated.  Use humanoid_league_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <LineSegmentRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:end-val is deprecated.  Use humanoid_league_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LineSegmentRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineSegmentRelative>) ostream)
  "Serializes a message object of type '<LineSegmentRelative>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineSegmentRelative>) istream)
  "Deserializes a message object of type '<LineSegmentRelative>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineSegmentRelative>)))
  "Returns string type for a message object of type '<LineSegmentRelative>"
  "humanoid_league_msgs/LineSegmentRelative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineSegmentRelative)))
  "Returns string type for a message object of type 'LineSegmentRelative"
  "humanoid_league_msgs/LineSegmentRelative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineSegmentRelative>)))
  "Returns md5sum for a message object of type '<LineSegmentRelative>"
  "f020ba307526912d5724b855ee3e8f56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineSegmentRelative)))
  "Returns md5sum for a message object of type 'LineSegmentRelative"
  "f020ba307526912d5724b855ee3e8f56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineSegmentRelative>)))
  "Returns full string definition for message of type '<LineSegmentRelative>"
  (cl:format cl:nil "# A line segment relative to the robot~%~%# Start and end position of the line~%# x in front of the robot~%# y to the left~%# z should be 0~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineSegmentRelative)))
  "Returns full string definition for message of type 'LineSegmentRelative"
  (cl:format cl:nil "# A line segment relative to the robot~%~%# Start and end position of the line~%# x in front of the robot~%# y to the left~%# z should be 0~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineSegmentRelative>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineSegmentRelative>))
  "Converts a ROS message object to a list"
  (cl:list 'LineSegmentRelative
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':confidence (confidence msg))
))
