; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude VisualCompassRotation.msg.html

(cl:defclass <VisualCompassRotation> (roslisp-msg-protocol:ros-message)
  ((orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass VisualCompassRotation (<VisualCompassRotation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisualCompassRotation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisualCompassRotation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<VisualCompassRotation> is deprecated: use humanoid_league_msgs-msg:VisualCompassRotation instead.")))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <VisualCompassRotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:orientation-val is deprecated.  Use humanoid_league_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <VisualCompassRotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisualCompassRotation>) ostream)
  "Serializes a message object of type '<VisualCompassRotation>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisualCompassRotation>) istream)
  "Deserializes a message object of type '<VisualCompassRotation>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisualCompassRotation>)))
  "Returns string type for a message object of type '<VisualCompassRotation>"
  "humanoid_league_msgs/VisualCompassRotation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisualCompassRotation)))
  "Returns string type for a message object of type 'VisualCompassRotation"
  "humanoid_league_msgs/VisualCompassRotation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisualCompassRotation>)))
  "Returns md5sum for a message object of type '<VisualCompassRotation>"
  "44fdc5544cc3e3cee8f82caccfdf780d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisualCompassRotation)))
  "Returns md5sum for a message object of type 'VisualCompassRotation"
  "44fdc5544cc3e3cee8f82caccfdf780d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisualCompassRotation>)))
  "Returns full string definition for message of type '<VisualCompassRotation>"
  (cl:format cl:nil "# This message is used to specify the orientation of the visual compass in relation to a RoboCup Soccer field~%~%# 0 points to the opponent goal line, 3.14 to the own goal line~%float32 orientation~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisualCompassRotation)))
  "Returns full string definition for message of type 'VisualCompassRotation"
  (cl:format cl:nil "# This message is used to specify the orientation of the visual compass in relation to a RoboCup Soccer field~%~%# 0 points to the opponent goal line, 3.14 to the own goal line~%float32 orientation~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisualCompassRotation>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisualCompassRotation>))
  "Converts a ROS message object to a list"
  (cl:list 'VisualCompassRotation
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':confidence (confidence msg))
))
