; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude ObstacleInImage.msg.html

(cl:defclass <ObstacleInImage> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0)
   (playerNumber
    :reader playerNumber
    :initarg :playerNumber
    :type cl:fixnum
    :initform 0)
   (top_left
    :reader top_left
    :initarg :top_left
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (height
    :reader height
    :initarg :height
    :type cl:fixnum
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:fixnum
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObstacleInImage (<ObstacleInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<ObstacleInImage> is deprecated: use humanoid_league_msgs-msg:ObstacleInImage instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ObstacleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:color-val is deprecated.  Use humanoid_league_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'playerNumber-val :lambda-list '(m))
(cl:defmethod playerNumber-val ((m <ObstacleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:playerNumber-val is deprecated.  Use humanoid_league_msgs-msg:playerNumber instead.")
  (playerNumber m))

(cl:ensure-generic-function 'top_left-val :lambda-list '(m))
(cl:defmethod top_left-val ((m <ObstacleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:top_left-val is deprecated.  Use humanoid_league_msgs-msg:top_left instead.")
  (top_left m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <ObstacleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:height-val is deprecated.  Use humanoid_league_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <ObstacleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:width-val is deprecated.  Use humanoid_league_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ObstacleInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObstacleInImage>)))
    "Constants for message type '<ObstacleInImage>"
  '((:UNDEFINED . 0)
    (:ROBOT_UNDEFINED . 1)
    (:ROBOT_MAGENTA . 2)
    (:ROBOT_CYAN . 3)
    (:HUMAN . 4)
    (:POLE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObstacleInImage)))
    "Constants for message type 'ObstacleInImage"
  '((:UNDEFINED . 0)
    (:ROBOT_UNDEFINED . 1)
    (:ROBOT_MAGENTA . 2)
    (:ROBOT_CYAN . 3)
    (:HUMAN . 4)
    (:POLE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleInImage>) ostream)
  "Serializes a message object of type '<ObstacleInImage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'playerNumber)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'top_left) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleInImage>) istream)
  "Deserializes a message object of type '<ObstacleInImage>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'playerNumber)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'top_left) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleInImage>)))
  "Returns string type for a message object of type '<ObstacleInImage>"
  "humanoid_league_msgs/ObstacleInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleInImage)))
  "Returns string type for a message object of type 'ObstacleInImage"
  "humanoid_league_msgs/ObstacleInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleInImage>)))
  "Returns md5sum for a message object of type '<ObstacleInImage>"
  "5e334321d63927966a578660e9c5fd06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleInImage)))
  "Returns md5sum for a message object of type 'ObstacleInImage"
  "5e334321d63927966a578660e9c5fd06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleInImage>)))
  "Returns full string definition for message of type '<ObstacleInImage>"
  (cl:format cl:nil "# An obstacle in the image, which can be a robot, a human or something else~%~%# Main color of the obstacle, to differentiate between robots and other things like human legs~%# Something we cant classify~%uint8 UNDEFINED = 0~%# Robot without known color~%uint8 ROBOT_UNDEFINED = 1~%uint8 ROBOT_MAGENTA = 2~%uint8 ROBOT_CYAN = 3~%# A human legs, e.g. from the referee~%uint8 HUMAN = 4~%# Black poles which are normally used for technical challenges~%uint8 POLE = 5~%uint8 color~%~%# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known~%uint8 playerNumber~%~%# The corresponding section in the image~%geometry_msgs/Point top_left~%uint8 height~%uint8 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleInImage)))
  "Returns full string definition for message of type 'ObstacleInImage"
  (cl:format cl:nil "# An obstacle in the image, which can be a robot, a human or something else~%~%# Main color of the obstacle, to differentiate between robots and other things like human legs~%# Something we cant classify~%uint8 UNDEFINED = 0~%# Robot without known color~%uint8 ROBOT_UNDEFINED = 1~%uint8 ROBOT_MAGENTA = 2~%uint8 ROBOT_CYAN = 3~%# A human legs, e.g. from the referee~%uint8 HUMAN = 4~%# Black poles which are normally used for technical challenges~%uint8 POLE = 5~%uint8 color~%~%# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known~%uint8 playerNumber~%~%# The corresponding section in the image~%geometry_msgs/Point top_left~%uint8 height~%uint8 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleInImage>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'top_left))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleInImage
    (cl:cons ':color (color msg))
    (cl:cons ':playerNumber (playerNumber msg))
    (cl:cons ':top_left (top_left msg))
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
    (cl:cons ':confidence (confidence msg))
))
