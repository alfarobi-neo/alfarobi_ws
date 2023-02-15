; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude ObstacleRelative.msg.html

(cl:defclass <ObstacleRelative> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObstacleRelative (<ObstacleRelative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleRelative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleRelative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<ObstacleRelative> is deprecated: use humanoid_league_msgs-msg:ObstacleRelative instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ObstacleRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:color-val is deprecated.  Use humanoid_league_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'playerNumber-val :lambda-list '(m))
(cl:defmethod playerNumber-val ((m <ObstacleRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:playerNumber-val is deprecated.  Use humanoid_league_msgs-msg:playerNumber instead.")
  (playerNumber m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ObstacleRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:position-val is deprecated.  Use humanoid_league_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <ObstacleRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:width-val is deprecated.  Use humanoid_league_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <ObstacleRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:height-val is deprecated.  Use humanoid_league_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ObstacleRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObstacleRelative>)))
    "Constants for message type '<ObstacleRelative>"
  '((:UNDEFINED . 0)
    (:ROBOT_UNDEFINED . 1)
    (:ROBOT_MAGENTA . 2)
    (:ROBOT_CYAN . 3)
    (:HUMAN . 4)
    (:POLE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObstacleRelative)))
    "Constants for message type 'ObstacleRelative"
  '((:UNDEFINED . 0)
    (:ROBOT_UNDEFINED . 1)
    (:ROBOT_MAGENTA . 2)
    (:ROBOT_CYAN . 3)
    (:HUMAN . 4)
    (:POLE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleRelative>) ostream)
  "Serializes a message object of type '<ObstacleRelative>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'playerNumber)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleRelative>) istream)
  "Deserializes a message object of type '<ObstacleRelative>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'playerNumber)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleRelative>)))
  "Returns string type for a message object of type '<ObstacleRelative>"
  "humanoid_league_msgs/ObstacleRelative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleRelative)))
  "Returns string type for a message object of type 'ObstacleRelative"
  "humanoid_league_msgs/ObstacleRelative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleRelative>)))
  "Returns md5sum for a message object of type '<ObstacleRelative>"
  "96164c833f5cfca473add6b66611366a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleRelative)))
  "Returns md5sum for a message object of type 'ObstacleRelative"
  "96164c833f5cfca473add6b66611366a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleRelative>)))
  "Returns full string definition for message of type '<ObstacleRelative>"
  (cl:format cl:nil "# An obstacle relative to the robot~%~%# Main color of the obstacle, to differentiate between robots and other things like human legs~%# Something we cant classify~%uint8 UNDEFINED = 0~%# robot without known color~%uint8 ROBOT_UNDEFINED = 1~%uint8 ROBOT_MAGENTA = 2~%uint8 ROBOT_CYAN = 3~%# A human legs, e.g. from the referee~%uint8 HUMAN = 4~%# Black poles which are normally used for technical challenges~%uint8 POLE = 5~%uint8 color~%~%# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known~%uint8 playerNumber~%~%# Position (in meters)~%geometry_msgs/Point position~%~%# Educated guess of the width and height (in meters)~%float32 width~%float32 height~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleRelative)))
  "Returns full string definition for message of type 'ObstacleRelative"
  (cl:format cl:nil "# An obstacle relative to the robot~%~%# Main color of the obstacle, to differentiate between robots and other things like human legs~%# Something we cant classify~%uint8 UNDEFINED = 0~%# robot without known color~%uint8 ROBOT_UNDEFINED = 1~%uint8 ROBOT_MAGENTA = 2~%uint8 ROBOT_CYAN = 3~%# A human legs, e.g. from the referee~%uint8 HUMAN = 4~%# Black poles which are normally used for technical challenges~%uint8 POLE = 5~%uint8 color~%~%# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known~%uint8 playerNumber~%~%# Position (in meters)~%geometry_msgs/Point position~%~%# Educated guess of the width and height (in meters)~%float32 width~%float32 height~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleRelative>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleRelative>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleRelative
    (cl:cons ':color (color msg))
    (cl:cons ':playerNumber (playerNumber msg))
    (cl:cons ':position (position msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':confidence (confidence msg))
))
