; Auto-generated. Do not edit!


(cl:in-package vision_utils-msg)


;//! \htmlinclude MonitorUtils.msg.html

(cl:defclass <MonitorUtils> (roslisp-msg-protocol:ros-message)
  ((line_models
    :reader line_models
    :initarg :line_models
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (particles
    :reader particles
    :initarg :particles
    :type (cl:vector geometry_msgs-msg:Quaternion)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Quaternion :initial-element (cl:make-instance 'geometry_msgs-msg:Quaternion))))
)

(cl:defclass MonitorUtils (<MonitorUtils>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorUtils>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorUtils)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_utils-msg:<MonitorUtils> is deprecated: use vision_utils-msg:MonitorUtils instead.")))

(cl:ensure-generic-function 'line_models-val :lambda-list '(m))
(cl:defmethod line_models-val ((m <MonitorUtils>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:line_models-val is deprecated.  Use vision_utils-msg:line_models instead.")
  (line_models m))

(cl:ensure-generic-function 'particles-val :lambda-list '(m))
(cl:defmethod particles-val ((m <MonitorUtils>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:particles-val is deprecated.  Use vision_utils-msg:particles instead.")
  (particles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorUtils>) ostream)
  "Serializes a message object of type '<MonitorUtils>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_models))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_models))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'particles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'particles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorUtils>) istream)
  "Deserializes a message object of type '<MonitorUtils>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'line_models) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'line_models)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'particles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'particles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Quaternion))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorUtils>)))
  "Returns string type for a message object of type '<MonitorUtils>"
  "vision_utils/MonitorUtils")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorUtils)))
  "Returns string type for a message object of type 'MonitorUtils"
  "vision_utils/MonitorUtils")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorUtils>)))
  "Returns md5sum for a message object of type '<MonitorUtils>"
  "849debddb0d7bc3d689fc3c60819829e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorUtils)))
  "Returns md5sum for a message object of type 'MonitorUtils"
  "849debddb0d7bc3d689fc3c60819829e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorUtils>)))
  "Returns full string definition for message of type '<MonitorUtils>"
  (cl:format cl:nil "geometry_msgs/Vector3[] line_models~%geometry_msgs/Quaternion[] particles~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorUtils)))
  "Returns full string definition for message of type 'MonitorUtils"
  (cl:format cl:nil "geometry_msgs/Vector3[] line_models~%geometry_msgs/Quaternion[] particles~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorUtils>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_models) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'particles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorUtils>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorUtils
    (cl:cons ':line_models (line_models msg))
    (cl:cons ':particles (particles msg))
))
