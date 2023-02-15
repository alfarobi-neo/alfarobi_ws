; Auto-generated. Do not edit!


(cl:in-package vision_utils-msg)


;//! \htmlinclude LUT.msg.html

(cl:defclass <LUT> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (color_class
    :reader color_class
    :initarg :color_class
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass LUT (<LUT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LUT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LUT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_utils-msg:<LUT> is deprecated: use vision_utils-msg:LUT instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <LUT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:color-val is deprecated.  Use vision_utils-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'color_class-val :lambda-list '(m))
(cl:defmethod color_class-val ((m <LUT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_utils-msg:color_class-val is deprecated.  Use vision_utils-msg:color_class instead.")
  (color_class m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LUT>) ostream)
  "Serializes a message object of type '<LUT>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'color))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color_class) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LUT>) istream)
  "Deserializes a message object of type '<LUT>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'color) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'color)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color_class) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LUT>)))
  "Returns string type for a message object of type '<LUT>"
  "vision_utils/LUT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LUT)))
  "Returns string type for a message object of type 'LUT"
  "vision_utils/LUT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LUT>)))
  "Returns md5sum for a message object of type '<LUT>"
  "09c8474bb4193e600be4dc7c15b023c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LUT)))
  "Returns md5sum for a message object of type 'LUT"
  "09c8474bb4193e600be4dc7c15b023c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LUT>)))
  "Returns full string definition for message of type '<LUT>"
  (cl:format cl:nil "geometry_msgs/Point[] color~%std_msgs/UInt8 color_class~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LUT)))
  "Returns full string definition for message of type 'LUT"
  (cl:format cl:nil "geometry_msgs/Point[] color~%std_msgs/UInt8 color_class~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LUT>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'color) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color_class))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LUT>))
  "Converts a ROS message object to a list"
  (cl:list 'LUT
    (cl:cons ':color (color msg))
    (cl:cons ':color_class (color_class msg))
))
