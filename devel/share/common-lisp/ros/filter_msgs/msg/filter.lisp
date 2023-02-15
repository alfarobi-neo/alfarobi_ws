; Auto-generated. Do not edit!


(cl:in-package filter_msgs-msg)


;//! \htmlinclude filter.msg.html

(cl:defclass <filter> (roslisp-msg-protocol:ros-message)
  ((fltr_sesudah
    :reader fltr_sesudah
    :initarg :fltr_sesudah
    :type cl:float
    :initform 0.0)
   (fltr_sebelum
    :reader fltr_sebelum
    :initarg :fltr_sebelum
    :type cl:float
    :initform 0.0)
   (fltr_sesudah_EMAV2
    :reader fltr_sesudah_EMAV2
    :initarg :fltr_sesudah_EMAV2
    :type cl:float
    :initform 0.0))
)

(cl:defclass filter (<filter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <filter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'filter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name filter_msgs-msg:<filter> is deprecated: use filter_msgs-msg:filter instead.")))

(cl:ensure-generic-function 'fltr_sesudah-val :lambda-list '(m))
(cl:defmethod fltr_sesudah-val ((m <filter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader filter_msgs-msg:fltr_sesudah-val is deprecated.  Use filter_msgs-msg:fltr_sesudah instead.")
  (fltr_sesudah m))

(cl:ensure-generic-function 'fltr_sebelum-val :lambda-list '(m))
(cl:defmethod fltr_sebelum-val ((m <filter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader filter_msgs-msg:fltr_sebelum-val is deprecated.  Use filter_msgs-msg:fltr_sebelum instead.")
  (fltr_sebelum m))

(cl:ensure-generic-function 'fltr_sesudah_EMAV2-val :lambda-list '(m))
(cl:defmethod fltr_sesudah_EMAV2-val ((m <filter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader filter_msgs-msg:fltr_sesudah_EMAV2-val is deprecated.  Use filter_msgs-msg:fltr_sesudah_EMAV2 instead.")
  (fltr_sesudah_EMAV2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <filter>) ostream)
  "Serializes a message object of type '<filter>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fltr_sesudah))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fltr_sebelum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fltr_sesudah_EMAV2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <filter>) istream)
  "Deserializes a message object of type '<filter>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fltr_sesudah) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fltr_sebelum) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fltr_sesudah_EMAV2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<filter>)))
  "Returns string type for a message object of type '<filter>"
  "filter_msgs/filter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'filter)))
  "Returns string type for a message object of type 'filter"
  "filter_msgs/filter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<filter>)))
  "Returns md5sum for a message object of type '<filter>"
  "ce602acead3a15d0f2986f47f81ff818")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'filter)))
  "Returns md5sum for a message object of type 'filter"
  "ce602acead3a15d0f2986f47f81ff818")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<filter>)))
  "Returns full string definition for message of type '<filter>"
  (cl:format cl:nil "float32 fltr_sesudah~%float32 fltr_sebelum~%float32 fltr_sesudah_EMAV2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'filter)))
  "Returns full string definition for message of type 'filter"
  (cl:format cl:nil "float32 fltr_sesudah~%float32 fltr_sebelum~%float32 fltr_sesudah_EMAV2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <filter>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <filter>))
  "Converts a ROS message object to a list"
  (cl:list 'filter
    (cl:cons ':fltr_sesudah (fltr_sesudah msg))
    (cl:cons ':fltr_sebelum (fltr_sebelum msg))
    (cl:cons ':fltr_sesudah_EMAV2 (fltr_sesudah_EMAV2 msg))
))
