; Auto-generated. Do not edit!


(cl:in-package dnn_detector-msg)


;//! \htmlinclude DnnDetectorParams.msg.html

(cl:defclass <DnnDetectorParams> (roslisp-msg-protocol:ros-message)
  ((scaling
    :reader scaling
    :initarg :scaling
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (mean_val
    :reader mean_val
    :initarg :mean_val
    :type cl:float
    :initform 0.0))
)

(cl:defclass DnnDetectorParams (<DnnDetectorParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DnnDetectorParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DnnDetectorParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnn_detector-msg:<DnnDetectorParams> is deprecated: use dnn_detector-msg:DnnDetectorParams instead.")))

(cl:ensure-generic-function 'scaling-val :lambda-list '(m))
(cl:defmethod scaling-val ((m <DnnDetectorParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_detector-msg:scaling-val is deprecated.  Use dnn_detector-msg:scaling instead.")
  (scaling m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <DnnDetectorParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_detector-msg:confidence-val is deprecated.  Use dnn_detector-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'mean_val-val :lambda-list '(m))
(cl:defmethod mean_val-val ((m <DnnDetectorParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_detector-msg:mean_val-val is deprecated.  Use dnn_detector-msg:mean_val instead.")
  (mean_val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DnnDetectorParams>) ostream)
  "Serializes a message object of type '<DnnDetectorParams>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scaling)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'scaling)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'scaling)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'scaling)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mean_val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DnnDetectorParams>) istream)
  "Deserializes a message object of type '<DnnDetectorParams>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scaling)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'scaling)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'scaling)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'scaling)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mean_val) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DnnDetectorParams>)))
  "Returns string type for a message object of type '<DnnDetectorParams>"
  "dnn_detector/DnnDetectorParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DnnDetectorParams)))
  "Returns string type for a message object of type 'DnnDetectorParams"
  "dnn_detector/DnnDetectorParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DnnDetectorParams>)))
  "Returns md5sum for a message object of type '<DnnDetectorParams>"
  "d7ac01d16dc32137fc1567bc7287ecf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DnnDetectorParams)))
  "Returns md5sum for a message object of type 'DnnDetectorParams"
  "d7ac01d16dc32137fc1567bc7287ecf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DnnDetectorParams>)))
  "Returns full string definition for message of type '<DnnDetectorParams>"
  (cl:format cl:nil "# This represents the parameters of ball_detector~%~%uint32  scaling~%float32 confidence~%float32 mean_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DnnDetectorParams)))
  "Returns full string definition for message of type 'DnnDetectorParams"
  (cl:format cl:nil "# This represents the parameters of ball_detector~%~%uint32  scaling~%float32 confidence~%float32 mean_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DnnDetectorParams>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DnnDetectorParams>))
  "Converts a ROS message object to a list"
  (cl:list 'DnnDetectorParams
    (cl:cons ':scaling (scaling msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':mean_val (mean_val msg))
))
