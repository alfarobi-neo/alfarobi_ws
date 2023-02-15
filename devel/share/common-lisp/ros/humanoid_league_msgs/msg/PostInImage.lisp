; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude PostInImage.msg.html

(cl:defclass <PostInImage> (roslisp-msg-protocol:ros-message)
  ((foot_point
    :reader foot_point
    :initarg :foot_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (top_point
    :reader top_point
    :initarg :top_point
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

(cl:defclass PostInImage (<PostInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PostInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PostInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<PostInImage> is deprecated: use humanoid_league_msgs-msg:PostInImage instead.")))

(cl:ensure-generic-function 'foot_point-val :lambda-list '(m))
(cl:defmethod foot_point-val ((m <PostInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:foot_point-val is deprecated.  Use humanoid_league_msgs-msg:foot_point instead.")
  (foot_point m))

(cl:ensure-generic-function 'top_point-val :lambda-list '(m))
(cl:defmethod top_point-val ((m <PostInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:top_point-val is deprecated.  Use humanoid_league_msgs-msg:top_point instead.")
  (top_point m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <PostInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:width-val is deprecated.  Use humanoid_league_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <PostInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PostInImage>) ostream)
  "Serializes a message object of type '<PostInImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'foot_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'top_point) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PostInImage>) istream)
  "Deserializes a message object of type '<PostInImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'foot_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'top_point) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PostInImage>)))
  "Returns string type for a message object of type '<PostInImage>"
  "humanoid_league_msgs/PostInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PostInImage)))
  "Returns string type for a message object of type 'PostInImage"
  "humanoid_league_msgs/PostInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PostInImage>)))
  "Returns md5sum for a message object of type '<PostInImage>"
  "69845e64be888b8b5f14fec4a8bcc64e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PostInImage)))
  "Returns md5sum for a message object of type 'PostInImage"
  "69845e64be888b8b5f14fec4a8bcc64e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PostInImage>)))
  "Returns full string definition for message of type '<PostInImage>"
  (cl:format cl:nil "# A (possible) goal post in the image. It is defined by two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point foot_point~%geometry_msgs/Point top_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PostInImage)))
  "Returns full string definition for message of type 'PostInImage"
  (cl:format cl:nil "# A (possible) goal post in the image. It is defined by two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point foot_point~%geometry_msgs/Point top_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PostInImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'foot_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'top_point))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PostInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'PostInImage
    (cl:cons ':foot_point (foot_point msg))
    (cl:cons ':top_point (top_point msg))
    (cl:cons ':width (width msg))
    (cl:cons ':confidence (confidence msg))
))
