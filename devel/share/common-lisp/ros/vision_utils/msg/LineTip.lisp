; Auto-generated. Do not edit!


(cl:in-package vision_utils-msg)


;//! \htmlinclude LineTip.msg.html

(cl:defclass <LineTip> (roslisp-msg-protocol:ros-message)
  ((tip1
    :reader tip1
    :initarg :tip1
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (tip2
    :reader tip2
    :initarg :tip2
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass LineTip (<LineTip>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineTip>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineTip)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_utils-msg:<LineTip> is deprecated: use vision_utils-msg:LineTip instead.")))

(cl:ensure-generic-function 'tip1-val :lambda-list '(m))
(cl:defmethod tip1-val ((m <LineTip>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:tip1-val is deprecated.  Use vision_utils-msg:tip1 instead.")
  (tip1 m))

(cl:ensure-generic-function 'tip2-val :lambda-list '(m))
(cl:defmethod tip2-val ((m <LineTip>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:tip2-val is deprecated.  Use vision_utils-msg:tip2 instead.")
  (tip2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineTip>) ostream)
  "Serializes a message object of type '<LineTip>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tip1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tip1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tip2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tip2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineTip>) istream)
  "Deserializes a message object of type '<LineTip>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tip1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tip1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tip2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tip2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineTip>)))
  "Returns string type for a message object of type '<LineTip>"
  "vision_utils/LineTip")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineTip)))
  "Returns string type for a message object of type 'LineTip"
  "vision_utils/LineTip")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineTip>)))
  "Returns md5sum for a message object of type '<LineTip>"
  "bf211aecfc01db9117c923c714f7014d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineTip)))
  "Returns md5sum for a message object of type 'LineTip"
  "bf211aecfc01db9117c923c714f7014d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineTip>)))
  "Returns full string definition for message of type '<LineTip>"
  (cl:format cl:nil "geometry_msgs/Point[] tip1~%geometry_msgs/Point[] tip2~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineTip)))
  "Returns full string definition for message of type 'LineTip"
  (cl:format cl:nil "geometry_msgs/Point[] tip1~%geometry_msgs/Point[] tip2~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineTip>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tip1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tip2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineTip>))
  "Converts a ROS message object to a list"
  (cl:list 'LineTip
    (cl:cons ':tip1 (tip1 msg))
    (cl:cons ':tip2 (tip2 msg))
))
