; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude Strategy.msg.html

(cl:defclass <Strategy> (roslisp-msg-protocol:ros-message)
  ((role
    :reader role
    :initarg :role
    :type cl:fixnum
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (offensive_side
    :reader offensive_side
    :initarg :offensive_side
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Strategy (<Strategy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Strategy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Strategy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<Strategy> is deprecated: use humanoid_league_msgs-msg:Strategy instead.")))

(cl:ensure-generic-function 'role-val :lambda-list '(m))
(cl:defmethod role-val ((m <Strategy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:role-val is deprecated.  Use humanoid_league_msgs-msg:role instead.")
  (role m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Strategy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:action-val is deprecated.  Use humanoid_league_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'offensive_side-val :lambda-list '(m))
(cl:defmethod offensive_side-val ((m <Strategy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:offensive_side-val is deprecated.  Use humanoid_league_msgs-msg:offensive_side instead.")
  (offensive_side m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Strategy>)))
    "Constants for message type '<Strategy>"
  '((:ROLE_IDLING . 0)
    (:ROLE_OTHER . 1)
    (:ROLE_STRIKER . 2)
    (:ROLE_SUPPORTER . 3)
    (:ROLE_DEFENDER . 4)
    (:ROLE_GOALIE . 5)
    (:ACTION_UNDEFINED . 0)
    (:ACTION_POSITIONING . 1)
    (:ACTION_GOING_TO_BALL . 2)
    (:ACTION_TRYING_TO_SCORE . 3)
    (:ACTION_WAITING . 4)
    (:SIDE_LEFT . 0)
    (:SIDE_MIDDLE . 1)
    (:SIDE_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Strategy)))
    "Constants for message type 'Strategy"
  '((:ROLE_IDLING . 0)
    (:ROLE_OTHER . 1)
    (:ROLE_STRIKER . 2)
    (:ROLE_SUPPORTER . 3)
    (:ROLE_DEFENDER . 4)
    (:ROLE_GOALIE . 5)
    (:ACTION_UNDEFINED . 0)
    (:ACTION_POSITIONING . 1)
    (:ACTION_GOING_TO_BALL . 2)
    (:ACTION_TRYING_TO_SCORE . 3)
    (:ACTION_WAITING . 4)
    (:SIDE_LEFT . 0)
    (:SIDE_MIDDLE . 1)
    (:SIDE_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Strategy>) ostream)
  "Serializes a message object of type '<Strategy>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'role)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offensive_side)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Strategy>) istream)
  "Deserializes a message object of type '<Strategy>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'role)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offensive_side)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Strategy>)))
  "Returns string type for a message object of type '<Strategy>"
  "humanoid_league_msgs/Strategy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Strategy)))
  "Returns string type for a message object of type 'Strategy"
  "humanoid_league_msgs/Strategy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Strategy>)))
  "Returns md5sum for a message object of type '<Strategy>"
  "73b1522777cf7f264eedf954da4c5819")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Strategy)))
  "Returns md5sum for a message object of type 'Strategy"
  "73b1522777cf7f264eedf954da4c5819")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Strategy>)))
  "Returns full string definition for message of type '<Strategy>"
  (cl:format cl:nil "# This message provides information about the current strategy of the robot to the team communication so that it can be~%# shared with other team robots~%~%# Which role the robot has currently~%uint8 ROLE_IDLING=0~%uint8 ROLE_OTHER=1~%uint8 ROLE_STRIKER=2~%uint8 ROLE_SUPPORTER=3~%uint8 ROLE_DEFENDER=4~%uint8 ROLE_GOALIE=5~%uint8 role~%~%# The current action of the robot~%uint8 ACTION_UNDEFINED=0~%uint8 ACTION_POSITIONING=1~%uint8 ACTION_GOING_TO_BALL=2~%uint8 ACTION_TRYING_TO_SCORE=3~%uint8 ACTION_WAITING=4~%uint8 action~%~%# Offensive strategy~%uint8 SIDE_LEFT = 0~%uint8 SIDE_MIDDLE = 1~%uint8 SIDE_RIGHT = 2~%uint8 offensive_side~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Strategy)))
  "Returns full string definition for message of type 'Strategy"
  (cl:format cl:nil "# This message provides information about the current strategy of the robot to the team communication so that it can be~%# shared with other team robots~%~%# Which role the robot has currently~%uint8 ROLE_IDLING=0~%uint8 ROLE_OTHER=1~%uint8 ROLE_STRIKER=2~%uint8 ROLE_SUPPORTER=3~%uint8 ROLE_DEFENDER=4~%uint8 ROLE_GOALIE=5~%uint8 role~%~%# The current action of the robot~%uint8 ACTION_UNDEFINED=0~%uint8 ACTION_POSITIONING=1~%uint8 ACTION_GOING_TO_BALL=2~%uint8 ACTION_TRYING_TO_SCORE=3~%uint8 ACTION_WAITING=4~%uint8 action~%~%# Offensive strategy~%uint8 SIDE_LEFT = 0~%uint8 SIDE_MIDDLE = 1~%uint8 SIDE_RIGHT = 2~%uint8 offensive_side~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Strategy>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Strategy>))
  "Converts a ROS message object to a list"
  (cl:list 'Strategy
    (cl:cons ':role (role msg))
    (cl:cons ':action (action msg))
    (cl:cons ':offensive_side (offensive_side msg))
))
