; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude LineCircleInImage.msg.html

(cl:defclass <LineCircleInImage> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (middle
    :reader middle
    :initarg :middle
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (right
    :reader right
    :initarg :right
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass LineCircleInImage (<LineCircleInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineCircleInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineCircleInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<LineCircleInImage> is deprecated: use humanoid_league_msgs-msg:LineCircleInImage instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <LineCircleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:left-val is deprecated.  Use humanoid_league_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'middle-val :lambda-list '(m))
(cl:defmethod middle-val ((m <LineCircleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:middle-val is deprecated.  Use humanoid_league_msgs-msg:middle instead.")
  (middle m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <LineCircleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:right-val is deprecated.  Use humanoid_league_msgs-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineCircleInImage>) ostream)
  "Serializes a message object of type '<LineCircleInImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'middle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineCircleInImage>) istream)
  "Deserializes a message object of type '<LineCircleInImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'middle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineCircleInImage>)))
  "Returns string type for a message object of type '<LineCircleInImage>"
  "humanoid_league_msgs/LineCircleInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineCircleInImage)))
  "Returns string type for a message object of type 'LineCircleInImage"
  "humanoid_league_msgs/LineCircleInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineCircleInImage>)))
  "Returns md5sum for a message object of type '<LineCircleInImage>"
  "a308f4836d6e1ddc7fdb4aef3d3e8a62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineCircleInImage)))
  "Returns md5sum for a message object of type 'LineCircleInImage"
  "a308f4836d6e1ddc7fdb4aef3d3e8a62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineCircleInImage>)))
  "Returns full string definition for message of type '<LineCircleInImage>"
  (cl:format cl:nil "# Defines a line circle in image space, i.e. the center circle~%~%# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius~%geometry_msgs/Point left~%geometry_msgs/Point middle~%geometry_msgs/Point right~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineCircleInImage)))
  "Returns full string definition for message of type 'LineCircleInImage"
  (cl:format cl:nil "# Defines a line circle in image space, i.e. the center circle~%~%# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius~%geometry_msgs/Point left~%geometry_msgs/Point middle~%geometry_msgs/Point right~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineCircleInImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'middle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineCircleInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'LineCircleInImage
    (cl:cons ':left (left msg))
    (cl:cons ':middle (middle msg))
    (cl:cons ':right (right msg))
))
