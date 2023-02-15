; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude BallInImage.msg.html

(cl:defclass <BallInImage> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (diameter
    :reader diameter
    :initarg :diameter
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass BallInImage (<BallInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<BallInImage> is deprecated: use humanoid_league_msgs-msg:BallInImage instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <BallInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:center-val is deprecated.  Use humanoid_league_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'diameter-val :lambda-list '(m))
(cl:defmethod diameter-val ((m <BallInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:diameter-val is deprecated.  Use humanoid_league_msgs-msg:diameter instead.")
  (diameter m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <BallInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallInImage>) ostream)
  "Serializes a message object of type '<BallInImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'diameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallInImage>) istream)
  "Deserializes a message object of type '<BallInImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diameter) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallInImage>)))
  "Returns string type for a message object of type '<BallInImage>"
  "humanoid_league_msgs/BallInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallInImage)))
  "Returns string type for a message object of type 'BallInImage"
  "humanoid_league_msgs/BallInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallInImage>)))
  "Returns md5sum for a message object of type '<BallInImage>"
  "90e95ed5b7c4ae20cbc638453cf31bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallInImage)))
  "Returns md5sum for a message object of type 'BallInImage"
  "90e95ed5b7c4ae20cbc638453cf31bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallInImage>)))
  "Returns full string definition for message of type '<BallInImage>"
  (cl:format cl:nil "# Providing a (possible) ball in the image~%~%# Center point of the ball, the z-axis should be ignored (in pixel)~%geometry_msgs/Point center~%# Diameter of the ball (in pixel)~%float64 diameter~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no ball was found~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallInImage)))
  "Returns full string definition for message of type 'BallInImage"
  (cl:format cl:nil "# Providing a (possible) ball in the image~%~%# Center point of the ball, the z-axis should be ignored (in pixel)~%geometry_msgs/Point center~%# Diameter of the ball (in pixel)~%float64 diameter~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no ball was found~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallInImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'BallInImage
    (cl:cons ':center (center msg))
    (cl:cons ':diameter (diameter msg))
    (cl:cons ':confidence (confidence msg))
))
