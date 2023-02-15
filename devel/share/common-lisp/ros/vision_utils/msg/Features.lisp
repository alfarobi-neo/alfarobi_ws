; Auto-generated. Do not edit!


(cl:in-package vision_utils-msg)


;//! \htmlinclude Features.msg.html

(cl:defclass <Features> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (feature
    :reader feature
    :initarg :feature
    :type (cl:vector vision_utils-msg:Feature)
   :initform (cl:make-array 0 :element-type 'vision_utils-msg:Feature :initial-element (cl:make-instance 'vision_utils-msg:Feature))))
)

(cl:defclass Features (<Features>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Features>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Features)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_utils-msg:<Features> is deprecated: use vision_utils-msg:Features instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Features>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:header-val is deprecated.  Use vision_utils-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'feature-val :lambda-list '(m))
(cl:defmethod feature-val ((m <Features>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:feature-val is deprecated.  Use vision_utils-msg:feature instead.")
  (feature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Features>) ostream)
  "Serializes a message object of type '<Features>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'feature))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Features>) istream)
  "Deserializes a message object of type '<Features>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vision_utils-msg:Feature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Features>)))
  "Returns string type for a message object of type '<Features>"
  "vision_utils/Features")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Features)))
  "Returns string type for a message object of type 'Features"
  "vision_utils/Features")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Features>)))
  "Returns md5sum for a message object of type '<Features>"
  "15096f959d80418cba64684bbae546db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Features)))
  "Returns md5sum for a message object of type 'Features"
  "15096f959d80418cba64684bbae546db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Features>)))
  "Returns full string definition for message of type '<Features>"
  (cl:format cl:nil "Header header~%vision_utils/Feature[] feature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vision_utils/Feature~%float32 param1~%float32 param2~%float32 param3~%float32 param4~%float32 orientation~%float32 feature_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Features)))
  "Returns full string definition for message of type 'Features"
  (cl:format cl:nil "Header header~%vision_utils/Feature[] feature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vision_utils/Feature~%float32 param1~%float32 param2~%float32 param3~%float32 param4~%float32 orientation~%float32 feature_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Features>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Features>))
  "Converts a ROS message object to a list"
  (cl:list 'Features
    (cl:cons ':header (header msg))
    (cl:cons ':feature (feature msg))
))
