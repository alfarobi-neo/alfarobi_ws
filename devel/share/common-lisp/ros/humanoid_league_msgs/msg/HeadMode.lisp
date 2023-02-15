; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude HeadMode.msg.html

(cl:defclass <HeadMode> (roslisp-msg-protocol:ros-message)
  ((headMode
    :reader headMode
    :initarg :headMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HeadMode (<HeadMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<HeadMode> is deprecated: use humanoid_league_msgs-msg:HeadMode instead.")))

(cl:ensure-generic-function 'headMode-val :lambda-list '(m))
(cl:defmethod headMode-val ((m <HeadMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:headMode-val is deprecated.  Use humanoid_league_msgs-msg:headMode instead.")
  (headMode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeadMode>)))
    "Constants for message type '<HeadMode>"
  '((:BALL_MODE . 0)
    (:POST_MODE . 1)
    (:BALL_GOAL_TRACKING . 2)
    (:FIELD_FEATURES . 3)
    (:NON_FIELD_FEATURES . 4)
    (:LOOK_DOWN . 5)
    (:LOOK_FORWARD . 7)
    (:DONT_MOVE . 8)
    (:LOOK_UP . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeadMode)))
    "Constants for message type 'HeadMode"
  '((:BALL_MODE . 0)
    (:POST_MODE . 1)
    (:BALL_GOAL_TRACKING . 2)
    (:FIELD_FEATURES . 3)
    (:NON_FIELD_FEATURES . 4)
    (:LOOK_DOWN . 5)
    (:LOOK_FORWARD . 7)
    (:DONT_MOVE . 8)
    (:LOOK_UP . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadMode>) ostream)
  "Serializes a message object of type '<HeadMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headMode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadMode>) istream)
  "Deserializes a message object of type '<HeadMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headMode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadMode>)))
  "Returns string type for a message object of type '<HeadMode>"
  "humanoid_league_msgs/HeadMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadMode)))
  "Returns string type for a message object of type 'HeadMode"
  "humanoid_league_msgs/HeadMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadMode>)))
  "Returns md5sum for a message object of type '<HeadMode>"
  "eb98960a74192c06acad277ece0eb0d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadMode)))
  "Returns md5sum for a message object of type 'HeadMode"
  "eb98960a74192c06acad277ece0eb0d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadMode>)))
  "Returns full string definition for message of type '<HeadMode>"
  (cl:format cl:nil "# This message is used for communicating between the body behaviour and the head behaviour~%# The body tells the head by this message what it shall do~%~%# Search for Ball and track it if found~%uint8 BALL_MODE=0~%# Search for goal posts, mainly to locate the robot on the field~%uint8 POST_MODE=1~%# Track ball and goal by constantly switching between both~%uint8 BALL_GOAL_TRACKING=2~%# Look generally for all features on the field (ball, goals, corners, center point)~%uint8 FIELD_FEATURES=3~%# Look for features outside of the field (perimeter advertising, walls, etc).~%# Can be used for localization using features on the ceiling.~%uint8 NON_FIELD_FEATURES=4~%# Simply look down to its feet.~%uint8 LOOK_DOWN=5~%# Simply look directly forward~%uint8 LOOK_FORWARD=7~%#Don't move the head~%uint8 DONT_MOVE=8~%# Look to the ceiling, for example for visual compas~%uint8 LOOK_UP=9~%uint8 headMode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadMode)))
  "Returns full string definition for message of type 'HeadMode"
  (cl:format cl:nil "# This message is used for communicating between the body behaviour and the head behaviour~%# The body tells the head by this message what it shall do~%~%# Search for Ball and track it if found~%uint8 BALL_MODE=0~%# Search for goal posts, mainly to locate the robot on the field~%uint8 POST_MODE=1~%# Track ball and goal by constantly switching between both~%uint8 BALL_GOAL_TRACKING=2~%# Look generally for all features on the field (ball, goals, corners, center point)~%uint8 FIELD_FEATURES=3~%# Look for features outside of the field (perimeter advertising, walls, etc).~%# Can be used for localization using features on the ceiling.~%uint8 NON_FIELD_FEATURES=4~%# Simply look down to its feet.~%uint8 LOOK_DOWN=5~%# Simply look directly forward~%uint8 LOOK_FORWARD=7~%#Don't move the head~%uint8 DONT_MOVE=8~%# Look to the ceiling, for example for visual compas~%uint8 LOOK_UP=9~%uint8 headMode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadMode>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadMode
    (cl:cons ':headMode (headMode msg))
))
