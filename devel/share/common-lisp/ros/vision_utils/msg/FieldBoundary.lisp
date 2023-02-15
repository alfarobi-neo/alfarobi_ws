; Auto-generated. Do not edit!


(cl:in-package vision_utils-msg)


;//! \htmlinclude FieldBoundary.msg.html

(cl:defclass <FieldBoundary> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bound1
    :reader bound1
    :initarg :bound1
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (bound2
    :reader bound2
    :initarg :bound2
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3))))
)

(cl:defclass FieldBoundary (<FieldBoundary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FieldBoundary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FieldBoundary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_utils-msg:<FieldBoundary> is deprecated: use vision_utils-msg:FieldBoundary instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FieldBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:header-val is deprecated.  Use vision_utils-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bound1-val :lambda-list '(m))
(cl:defmethod bound1-val ((m <FieldBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:bound1-val is deprecated.  Use vision_utils-msg:bound1 instead.")
  (bound1 m))

(cl:ensure-generic-function 'bound2-val :lambda-list '(m))
(cl:defmethod bound2-val ((m <FieldBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:bound2-val is deprecated.  Use vision_utils-msg:bound2 instead.")
  (bound2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FieldBoundary>) ostream)
  "Serializes a message object of type '<FieldBoundary>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bound1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bound1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bound2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bound2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FieldBoundary>) istream)
  "Deserializes a message object of type '<FieldBoundary>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bound1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bound1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bound2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bound2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FieldBoundary>)))
  "Returns string type for a message object of type '<FieldBoundary>"
  "vision_utils/FieldBoundary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FieldBoundary)))
  "Returns string type for a message object of type 'FieldBoundary"
  "vision_utils/FieldBoundary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FieldBoundary>)))
  "Returns md5sum for a message object of type '<FieldBoundary>"
  "6fbaae514a52711da5011ab63728a939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FieldBoundary)))
  "Returns md5sum for a message object of type 'FieldBoundary"
  "6fbaae514a52711da5011ab63728a939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FieldBoundary>)))
  "Returns full string definition for message of type '<FieldBoundary>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3[] bound1~%geometry_msgs/Vector3[] bound2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FieldBoundary)))
  "Returns full string definition for message of type 'FieldBoundary"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3[] bound1~%geometry_msgs/Vector3[] bound2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FieldBoundary>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bound1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bound2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FieldBoundary>))
  "Converts a ROS message object to a list"
  (cl:list 'FieldBoundary
    (cl:cons ':header (header msg))
    (cl:cons ':bound1 (bound1 msg))
    (cl:cons ':bound2 (bound2 msg))
))
