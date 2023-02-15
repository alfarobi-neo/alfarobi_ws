; Auto-generated. Do not edit!


(cl:in-package vision_utils-msg)


;//! \htmlinclude Particles.msg.html

(cl:defclass <Particles> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (particle
    :reader particle
    :initarg :particle
    :type (cl:vector geometry_msgs-msg:Quaternion)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Quaternion :initial-element (cl:make-instance 'geometry_msgs-msg:Quaternion))))
)

(cl:defclass Particles (<Particles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Particles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Particles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_utils-msg:<Particles> is deprecated: use vision_utils-msg:Particles instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Particles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:header-val is deprecated.  Use vision_utils-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'particle-val :lambda-list '(m))
(cl:defmethod particle-val ((m <Particles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:particle-val is deprecated.  Use vision_utils-msg:particle instead.")
  (particle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Particles>) ostream)
  "Serializes a message object of type '<Particles>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'particle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'particle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Particles>) istream)
  "Deserializes a message object of type '<Particles>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'particle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'particle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Quaternion))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Particles>)))
  "Returns string type for a message object of type '<Particles>"
  "vision_utils/Particles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Particles)))
  "Returns string type for a message object of type 'Particles"
  "vision_utils/Particles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Particles>)))
  "Returns md5sum for a message object of type '<Particles>"
  "193233b6e6c22c2a199ab3f2b0fde1fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Particles)))
  "Returns md5sum for a message object of type 'Particles"
  "193233b6e6c22c2a199ab3f2b0fde1fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Particles>)))
  "Returns full string definition for message of type '<Particles>"
  (cl:format cl:nil "Header header~%geometry_msgs/Quaternion[] particle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Particles)))
  "Returns full string definition for message of type 'Particles"
  (cl:format cl:nil "Header header~%geometry_msgs/Quaternion[] particle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Particles>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'particle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Particles>))
  "Converts a ROS message object to a list"
  (cl:list 'Particles
    (cl:cons ':header (header msg))
    (cl:cons ':particle (particle msg))
))
