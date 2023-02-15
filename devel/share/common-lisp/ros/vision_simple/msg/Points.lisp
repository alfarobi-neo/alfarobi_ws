; Auto-generated. Do not edit!


(cl:in-package vision_simple-msg)


;//! \htmlinclude Points.msg.html

(cl:defclass <Points> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (WhitePoints
    :reader WhitePoints
    :initarg :WhitePoints
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (BorderPoints
    :reader BorderPoints
    :initarg :BorderPoints
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass Points (<Points>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Points>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Points)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_simple-msg:<Points> is deprecated: use vision_simple-msg:Points instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Points>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_simple-msg:header-val is deprecated.  Use vision_simple-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'WhitePoints-val :lambda-list '(m))
(cl:defmethod WhitePoints-val ((m <Points>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_simple-msg:WhitePoints-val is deprecated.  Use vision_simple-msg:WhitePoints instead.")
  (WhitePoints m))

(cl:ensure-generic-function 'BorderPoints-val :lambda-list '(m))
(cl:defmethod BorderPoints-val ((m <Points>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_simple-msg:BorderPoints-val is deprecated.  Use vision_simple-msg:BorderPoints instead.")
  (BorderPoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Points>) ostream)
  "Serializes a message object of type '<Points>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'WhitePoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'WhitePoints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'BorderPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'BorderPoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Points>) istream)
  "Deserializes a message object of type '<Points>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'WhitePoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'WhitePoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'BorderPoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'BorderPoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Points>)))
  "Returns string type for a message object of type '<Points>"
  "vision_simple/Points")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Points)))
  "Returns string type for a message object of type 'Points"
  "vision_simple/Points")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Points>)))
  "Returns md5sum for a message object of type '<Points>"
  "e29ced396cf3ffb398380dd0f818d7b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Points)))
  "Returns md5sum for a message object of type 'Points"
  "e29ced396cf3ffb398380dd0f818d7b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Points>)))
  "Returns full string definition for message of type '<Points>"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Point[] WhitePoints~%geometry_msgs/Point[] BorderPoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Points)))
  "Returns full string definition for message of type 'Points"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Point[] WhitePoints~%geometry_msgs/Point[] BorderPoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Points>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'WhitePoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'BorderPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Points>))
  "Converts a ROS message object to a list"
  (cl:list 'Points
    (cl:cons ':header (header msg))
    (cl:cons ':WhitePoints (WhitePoints msg))
    (cl:cons ':BorderPoints (BorderPoints msg))
))
