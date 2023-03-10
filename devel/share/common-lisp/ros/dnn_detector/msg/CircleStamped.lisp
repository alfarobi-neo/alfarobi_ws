; Auto-generated. Do not edit!


(cl:in-package dnn_detector-msg)


;//! \htmlinclude CircleStamped.msg.html

(cl:defclass <CircleStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (circles
    :reader circles
    :initarg :circles
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass CircleStamped (<CircleStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CircleStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CircleStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnn_detector-msg:<CircleStamped> is deprecated: use dnn_detector-msg:CircleStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CircleStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_detector-msg:header-val is deprecated.  Use dnn_detector-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'circles-val :lambda-list '(m))
(cl:defmethod circles-val ((m <CircleStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_detector-msg:circles-val is deprecated.  Use dnn_detector-msg:circles instead.")
  (circles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CircleStamped>) ostream)
  "Serializes a message object of type '<CircleStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'circles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'circles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CircleStamped>) istream)
  "Deserializes a message object of type '<CircleStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'circles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'circles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CircleStamped>)))
  "Returns string type for a message object of type '<CircleStamped>"
  "dnn_detector/CircleStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircleStamped)))
  "Returns string type for a message object of type 'CircleStamped"
  "dnn_detector/CircleStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CircleStamped>)))
  "Returns md5sum for a message object of type '<CircleStamped>"
  "a9ed251dbca477265ff458e1e16f7437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CircleStamped)))
  "Returns md5sum for a message object of type 'CircleStamped"
  "a9ed251dbca477265ff458e1e16f7437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CircleStamped>)))
  "Returns full string definition for message of type '<CircleStamped>"
  (cl:format cl:nil "# This represents the set of detected circles~%~%#timestamp and frame id of the image frame~%std_msgs/Header header~%~%#set of detected circles:~%#      (circles[i].x, circles[i].y) is the center point in image coordinates~%#      circles[i].z is the circle radius~%geometry_msgs/Point[] circles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CircleStamped)))
  "Returns full string definition for message of type 'CircleStamped"
  (cl:format cl:nil "# This represents the set of detected circles~%~%#timestamp and frame id of the image frame~%std_msgs/Header header~%~%#set of detected circles:~%#      (circles[i].x, circles[i].y) is the center point in image coordinates~%#      circles[i].z is the circle radius~%geometry_msgs/Point[] circles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CircleStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'circles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CircleStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'CircleStamped
    (cl:cons ':header (header msg))
    (cl:cons ':circles (circles msg))
))
