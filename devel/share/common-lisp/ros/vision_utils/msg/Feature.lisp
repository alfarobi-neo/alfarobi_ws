; Auto-generated. Do not edit!


(cl:in-package vision_utils-msg)


;//! \htmlinclude Feature.msg.html

(cl:defclass <Feature> (roslisp-msg-protocol:ros-message)
  ((param1
    :reader param1
    :initarg :param1
    :type cl:float
    :initform 0.0)
   (param2
    :reader param2
    :initarg :param2
    :type cl:float
    :initform 0.0)
   (param3
    :reader param3
    :initarg :param3
    :type cl:float
    :initform 0.0)
   (param4
    :reader param4
    :initarg :param4
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0)
   (feature_type
    :reader feature_type
    :initarg :feature_type
    :type cl:float
    :initform 0.0))
)

(cl:defclass Feature (<Feature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Feature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Feature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_utils-msg:<Feature> is deprecated: use vision_utils-msg:Feature instead.")))

(cl:ensure-generic-function 'param1-val :lambda-list '(m))
(cl:defmethod param1-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:param1-val is deprecated.  Use vision_utils-msg:param1 instead.")
  (param1 m))

(cl:ensure-generic-function 'param2-val :lambda-list '(m))
(cl:defmethod param2-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:param2-val is deprecated.  Use vision_utils-msg:param2 instead.")
  (param2 m))

(cl:ensure-generic-function 'param3-val :lambda-list '(m))
(cl:defmethod param3-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:param3-val is deprecated.  Use vision_utils-msg:param3 instead.")
  (param3 m))

(cl:ensure-generic-function 'param4-val :lambda-list '(m))
(cl:defmethod param4-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:param4-val is deprecated.  Use vision_utils-msg:param4 instead.")
  (param4 m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:orientation-val is deprecated.  Use vision_utils-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'feature_type-val :lambda-list '(m))
(cl:defmethod feature_type-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:feature_type-val is deprecated.  Use vision_utils-msg:feature_type instead.")
  (feature_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Feature>) ostream)
  "Serializes a message object of type '<Feature>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'feature_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Feature>) istream)
  "Deserializes a message object of type '<Feature>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param4) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'feature_type) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Feature>)))
  "Returns string type for a message object of type '<Feature>"
  "vision_utils/Feature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Feature)))
  "Returns string type for a message object of type 'Feature"
  "vision_utils/Feature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Feature>)))
  "Returns md5sum for a message object of type '<Feature>"
  "82dbffcabd327fa650f6e5b36592a1a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Feature)))
  "Returns md5sum for a message object of type 'Feature"
  "82dbffcabd327fa650f6e5b36592a1a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Feature>)))
  "Returns full string definition for message of type '<Feature>"
  (cl:format cl:nil "float32 param1~%float32 param2~%float32 param3~%float32 param4~%float32 orientation~%float32 feature_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Feature)))
  "Returns full string definition for message of type 'Feature"
  (cl:format cl:nil "float32 param1~%float32 param2~%float32 param3~%float32 param4~%float32 orientation~%float32 feature_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Feature>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Feature>))
  "Converts a ROS message object to a list"
  (cl:list 'Feature
    (cl:cons ':param1 (param1 msg))
    (cl:cons ':param2 (param2 msg))
    (cl:cons ':param3 (param3 msg))
    (cl:cons ':param4 (param4 msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':feature_type (feature_type msg))
))
