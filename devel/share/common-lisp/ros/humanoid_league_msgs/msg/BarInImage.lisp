; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude BarInImage.msg.html

(cl:defclass <BarInImage> (roslisp-msg-protocol:ros-message)
  ((left_point
    :reader left_point
    :initarg :left_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (right_point
    :reader right_point
    :initarg :right_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass BarInImage (<BarInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BarInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BarInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<BarInImage> is deprecated: use humanoid_league_msgs-msg:BarInImage instead.")))

(cl:ensure-generic-function 'left_point-val :lambda-list '(m))
(cl:defmethod left_point-val ((m <BarInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:left_point-val is deprecated.  Use humanoid_league_msgs-msg:left_point instead.")
  (left_point m))

(cl:ensure-generic-function 'right_point-val :lambda-list '(m))
(cl:defmethod right_point-val ((m <BarInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:right_point-val is deprecated.  Use humanoid_league_msgs-msg:right_point instead.")
  (right_point m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <BarInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:width-val is deprecated.  Use humanoid_league_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <BarInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BarInImage>) ostream)
  "Serializes a message object of type '<BarInImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BarInImage>) istream)
  "Deserializes a message object of type '<BarInImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BarInImage>)))
  "Returns string type for a message object of type '<BarInImage>"
  "humanoid_league_msgs/BarInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BarInImage)))
  "Returns string type for a message object of type 'BarInImage"
  "humanoid_league_msgs/BarInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BarInImage>)))
  "Returns md5sum for a message object of type '<BarInImage>"
  "fc2e062fdbea58061f1e4bcb7510db2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BarInImage)))
  "Returns md5sum for a message object of type 'BarInImage"
  "fc2e062fdbea58061f1e4bcb7510db2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BarInImage>)))
  "Returns full string definition for message of type '<BarInImage>"
  (cl:format cl:nil "# A (possible) goal bar in the image. It is defined by the two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point left_point~%geometry_msgs/Point right_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BarInImage)))
  "Returns full string definition for message of type 'BarInImage"
  (cl:format cl:nil "# A (possible) goal bar in the image. It is defined by the two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point left_point~%geometry_msgs/Point right_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BarInImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_point))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BarInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'BarInImage
    (cl:cons ':left_point (left_point msg))
    (cl:cons ':right_point (right_point msg))
    (cl:cons ':width (width msg))
    (cl:cons ':confidence (confidence msg))
))
