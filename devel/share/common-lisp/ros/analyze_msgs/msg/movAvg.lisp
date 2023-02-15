; Auto-generated. Do not edit!


(cl:in-package analyze_msgs-msg)


;//! \htmlinclude movAvg.msg.html

(cl:defclass <movAvg> (roslisp-msg-protocol:ros-message)
  ((Kp
    :reader Kp
    :initarg :Kp
    :type cl:float
    :initform 0.0)
   (Kd
    :reader Kd
    :initarg :Kd
    :type cl:float
    :initform 0.0)
   (Ankle
    :reader Ankle
    :initarg :Ankle
    :type cl:float
    :initform 0.0)
   (gyr_y_aft
    :reader gyr_y_aft
    :initarg :gyr_y_aft
    :type cl:float
    :initform 0.0))
)

(cl:defclass movAvg (<movAvg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <movAvg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'movAvg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name analyze_msgs-msg:<movAvg> is deprecated: use analyze_msgs-msg:movAvg instead.")))

(cl:ensure-generic-function 'Kp-val :lambda-list '(m))
(cl:defmethod Kp-val ((m <movAvg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader analyze_msgs-msg:Kp-val is deprecated.  Use analyze_msgs-msg:Kp instead.")
  (Kp m))

(cl:ensure-generic-function 'Kd-val :lambda-list '(m))
(cl:defmethod Kd-val ((m <movAvg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader analyze_msgs-msg:Kd-val is deprecated.  Use analyze_msgs-msg:Kd instead.")
  (Kd m))

(cl:ensure-generic-function 'Ankle-val :lambda-list '(m))
(cl:defmethod Ankle-val ((m <movAvg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader analyze_msgs-msg:Ankle-val is deprecated.  Use analyze_msgs-msg:Ankle instead.")
  (Ankle m))

(cl:ensure-generic-function 'gyr_y_aft-val :lambda-list '(m))
(cl:defmethod gyr_y_aft-val ((m <movAvg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader analyze_msgs-msg:gyr_y_aft-val is deprecated.  Use analyze_msgs-msg:gyr_y_aft instead.")
  (gyr_y_aft m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <movAvg>) ostream)
  "Serializes a message object of type '<movAvg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Ankle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyr_y_aft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <movAvg>) istream)
  "Deserializes a message object of type '<movAvg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ankle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyr_y_aft) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<movAvg>)))
  "Returns string type for a message object of type '<movAvg>"
  "analyze_msgs/movAvg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'movAvg)))
  "Returns string type for a message object of type 'movAvg"
  "analyze_msgs/movAvg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<movAvg>)))
  "Returns md5sum for a message object of type '<movAvg>"
  "b26380dcaf44460c112d4bf22253d83e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'movAvg)))
  "Returns md5sum for a message object of type 'movAvg"
  "b26380dcaf44460c112d4bf22253d83e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<movAvg>)))
  "Returns full string definition for message of type '<movAvg>"
  (cl:format cl:nil "float32 Kp~%float32 Kd~%float32 Ankle~%float32 gyr_y_aft~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'movAvg)))
  "Returns full string definition for message of type 'movAvg"
  (cl:format cl:nil "float32 Kp~%float32 Kd~%float32 Ankle~%float32 gyr_y_aft~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <movAvg>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <movAvg>))
  "Converts a ROS message object to a list"
  (cl:list 'movAvg
    (cl:cons ':Kp (Kp msg))
    (cl:cons ':Kd (Kd msg))
    (cl:cons ':Ankle (Ankle msg))
    (cl:cons ':gyr_y_aft (gyr_y_aft msg))
))
