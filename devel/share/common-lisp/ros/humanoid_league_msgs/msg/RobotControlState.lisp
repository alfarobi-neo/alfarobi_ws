; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude RobotControlState.msg.html

(cl:defclass <RobotControlState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotControlState (<RobotControlState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotControlState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotControlState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<RobotControlState> is deprecated: use humanoid_league_msgs-msg:RobotControlState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RobotControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:state-val is deprecated.  Use humanoid_league_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotControlState>)))
    "Constants for message type '<RobotControlState>"
  '((:CONTROLABLE . 0)
    (:FALLING . 1)
    (:FALLEN . 2)
    (:GETTING_UP . 3)
    (:ANIMATION_RUNNING . 4)
    (:STARTUP . 5)
    (:SHUTDOWN . 6)
    (:PENALTY . 7)
    (:PENALTY_ANIMANTION . 8)
    (:RECORD . 9)
    (:WALKING . 10)
    (:MOTOR_OFF . 11)
    (:HCM_OFF . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotControlState)))
    "Constants for message type 'RobotControlState"
  '((:CONTROLABLE . 0)
    (:FALLING . 1)
    (:FALLEN . 2)
    (:GETTING_UP . 3)
    (:ANIMATION_RUNNING . 4)
    (:STARTUP . 5)
    (:SHUTDOWN . 6)
    (:PENALTY . 7)
    (:PENALTY_ANIMANTION . 8)
    (:RECORD . 9)
    (:WALKING . 10)
    (:MOTOR_OFF . 11)
    (:HCM_OFF . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotControlState>) ostream)
  "Serializes a message object of type '<RobotControlState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotControlState>) istream)
  "Deserializes a message object of type '<RobotControlState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotControlState>)))
  "Returns string type for a message object of type '<RobotControlState>"
  "humanoid_league_msgs/RobotControlState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotControlState)))
  "Returns string type for a message object of type 'RobotControlState"
  "humanoid_league_msgs/RobotControlState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotControlState>)))
  "Returns md5sum for a message object of type '<RobotControlState>"
  "2328f6cdab1397e392c2b1404b1c4d3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotControlState)))
  "Returns md5sum for a message object of type 'RobotControlState"
  "2328f6cdab1397e392c2b1404b1c4d3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotControlState>)))
  "Returns full string definition for message of type '<RobotControlState>"
  (cl:format cl:nil "# This message provides the current state of the hardware control manager (HCM), which is handling falling, standing up and the decision~%# between playing animations and walking~%~%# Robot can be controlled from a higher level~%uint8 CONTROLABLE=0~%# Robot is currently falling~%# it can not be controlled and should go to a position that minimizes the damage during a fall~%uint8 FALLING=1~%# Robot is lying on the floor~%# maybe reset your world model, as the state should be unsure now~%uint8 FALLEN=2~%# Robot is currently trying to get up again~%uint8 GETTING_UP=3~%# An animation is running~%# no walking or further animations possible~%# Falling detection is deactivated~%uint8 ANIMATION_RUNNING=4~%# The hardware control manager is booting~%uint8 STARTUP=5~%# The hardware control manager is shutting down~%uint8 SHUTDOWN=6~%# The robot is in penalty position~%# It can not be controlled~%uint8 PENALTY=7~%# The robot is getting in or out of penalty position~%uint8 PENALTY_ANIMANTION=8~%# The robot is used for recording animations~%# Reserved all controling to a recording process~%# No falling detection is processed and no stand ups will be done~%uint8 RECORD=9~%# The robot is walking~%uint8 WALKING=10~%# A state where the motors are turned off, but the hardware control manager is still waiting for commandos and turns the motors on,~%# if a move commando comes~%uint8 MOTOR_OFF=11~%# Last status send by the hardware control manager after shutting down~%uint8 HCM_OFF=12~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotControlState)))
  "Returns full string definition for message of type 'RobotControlState"
  (cl:format cl:nil "# This message provides the current state of the hardware control manager (HCM), which is handling falling, standing up and the decision~%# between playing animations and walking~%~%# Robot can be controlled from a higher level~%uint8 CONTROLABLE=0~%# Robot is currently falling~%# it can not be controlled and should go to a position that minimizes the damage during a fall~%uint8 FALLING=1~%# Robot is lying on the floor~%# maybe reset your world model, as the state should be unsure now~%uint8 FALLEN=2~%# Robot is currently trying to get up again~%uint8 GETTING_UP=3~%# An animation is running~%# no walking or further animations possible~%# Falling detection is deactivated~%uint8 ANIMATION_RUNNING=4~%# The hardware control manager is booting~%uint8 STARTUP=5~%# The hardware control manager is shutting down~%uint8 SHUTDOWN=6~%# The robot is in penalty position~%# It can not be controlled~%uint8 PENALTY=7~%# The robot is getting in or out of penalty position~%uint8 PENALTY_ANIMANTION=8~%# The robot is used for recording animations~%# Reserved all controling to a recording process~%# No falling detection is processed and no stand ups will be done~%uint8 RECORD=9~%# The robot is walking~%uint8 WALKING=10~%# A state where the motors are turned off, but the hardware control manager is still waiting for commandos and turns the motors on,~%# if a move commando comes~%uint8 MOTOR_OFF=11~%# Last status send by the hardware control manager after shutting down~%uint8 HCM_OFF=12~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotControlState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotControlState>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotControlState
    (cl:cons ':state (state msg))
))
