; Auto-generated. Do not edit!


(cl:in-package analyze_msgs-msg)


;//! \htmlinclude Fuzzy.msg.html

(cl:defclass <Fuzzy> (roslisp-msg-protocol:ros-message)
  ((Cond
    :reader Cond
    :initarg :Cond
    :type cl:integer
    :initform 0)
   (Out
    :reader Out
    :initarg :Out
    :type cl:float
    :initform 0.0)
   (Ori
    :reader Ori
    :initarg :Ori
    :type cl:float
    :initform 0.0)
   (Gyr
    :reader Gyr
    :initarg :Gyr
    :type cl:float
    :initform 0.0))
)

(cl:defclass Fuzzy (<Fuzzy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fuzzy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fuzzy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name analyze_msgs-msg:<Fuzzy> is deprecated: use analyze_msgs-msg:Fuzzy instead.")))

(cl:ensure-generic-function 'Cond-val :lambda-list '(m))
(cl:defmethod Cond-val ((m <Fuzzy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader analyze_msgs-msg:Cond-val is deprecated.  Use analyze_msgs-msg:Cond instead.")
  (Cond m))

(cl:ensure-generic-function 'Out-val :lambda-list '(m))
(cl:defmethod Out-val ((m <Fuzzy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader analyze_msgs-msg:Out-val is deprecated.  Use analyze_msgs-msg:Out instead.")
  (Out m))

(cl:ensure-generic-function 'Ori-val :lambda-list '(m))
(cl:defmethod Ori-val ((m <Fuzzy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader analyze_msgs-msg:Ori-val is deprecated.  Use analyze_msgs-msg:Ori instead.")
  (Ori m))

(cl:ensure-generic-function 'Gyr-val :lambda-list '(m))
(cl:defmethod Gyr-val ((m <Fuzzy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader analyze_msgs-msg:Gyr-val is deprecated.  Use analyze_msgs-msg:Gyr instead.")
  (Gyr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fuzzy>) ostream)
  "Serializes a message object of type '<Fuzzy>"
  (cl:let* ((signed (cl:slot-value msg 'Cond)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Ori))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gyr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fuzzy>) istream)
  "Deserializes a message object of type '<Fuzzy>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cond) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Out) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ori) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gyr) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fuzzy>)))
  "Returns string type for a message object of type '<Fuzzy>"
  "analyze_msgs/Fuzzy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fuzzy)))
  "Returns string type for a message object of type 'Fuzzy"
  "analyze_msgs/Fuzzy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fuzzy>)))
  "Returns md5sum for a message object of type '<Fuzzy>"
  "0dbe4ca5345b8d8e12609086d919c0bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fuzzy)))
  "Returns md5sum for a message object of type 'Fuzzy"
  "0dbe4ca5345b8d8e12609086d919c0bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fuzzy>)))
  "Returns full string definition for message of type '<Fuzzy>"
  (cl:format cl:nil "int32 Cond~%float32 Out~%float32 Ori~%float32 Gyr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fuzzy)))
  "Returns full string definition for message of type 'Fuzzy"
  (cl:format cl:nil "int32 Cond~%float32 Out~%float32 Ori~%float32 Gyr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fuzzy>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fuzzy>))
  "Converts a ROS message object to a list"
  (cl:list 'Fuzzy
    (cl:cons ':Cond (Cond msg))
    (cl:cons ':Out (Out msg))
    (cl:cons ':Ori (Ori msg))
    (cl:cons ':Gyr (Gyr msg))
))
