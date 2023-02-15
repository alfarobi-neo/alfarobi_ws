; Auto-generated. Do not edit!


(cl:in-package game_controller-msg)


;//! \htmlinclude GameState.msg.html

(cl:defclass <GameState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gameState
    :reader gameState
    :initarg :gameState
    :type cl:fixnum
    :initform 0)
   (secondaryState
    :reader secondaryState
    :initarg :secondaryState
    :type cl:fixnum
    :initform 0)
   (secondrayStateTeam
    :reader secondrayStateTeam
    :initarg :secondrayStateTeam
    :type cl:fixnum
    :initform 0)
   (firstHalf
    :reader firstHalf
    :initarg :firstHalf
    :type cl:boolean
    :initform cl:nil)
   (ownScore
    :reader ownScore
    :initarg :ownScore
    :type cl:fixnum
    :initform 0)
   (rivalScore
    :reader rivalScore
    :initarg :rivalScore
    :type cl:fixnum
    :initform 0)
   (secondsRemaining
    :reader secondsRemaining
    :initarg :secondsRemaining
    :type cl:fixnum
    :initform 0)
   (secondary_seconds_remaining
    :reader secondary_seconds_remaining
    :initarg :secondary_seconds_remaining
    :type cl:fixnum
    :initform 0)
   (penalty
    :reader penalty
    :initarg :penalty
    :type cl:fixnum
    :initform 0)
   (hasKickOff
    :reader hasKickOff
    :initarg :hasKickOff
    :type cl:boolean
    :initform cl:nil)
   (penalized
    :reader penalized
    :initarg :penalized
    :type cl:boolean
    :initform cl:nil)
   (secondsTillUnpenalized
    :reader secondsTillUnpenalized
    :initarg :secondsTillUnpenalized
    :type cl:fixnum
    :initform 0)
   (allowedToMove
    :reader allowedToMove
    :initarg :allowedToMove
    :type cl:boolean
    :initform cl:nil)
   (dropInTeam
    :reader dropInTeam
    :initarg :dropInTeam
    :type cl:boolean
    :initform cl:nil)
   (dropInTime
    :reader dropInTime
    :initarg :dropInTime
    :type cl:fixnum
    :initform 0)
   (penaltyShot
    :reader penaltyShot
    :initarg :penaltyShot
    :type cl:fixnum
    :initform 0)
   (singleShots
    :reader singleShots
    :initarg :singleShots
    :type cl:fixnum
    :initform 0)
   (coach_message
    :reader coach_message
    :initarg :coach_message
    :type cl:string
    :initform ""))
)

(cl:defclass GameState (<GameState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name game_controller-msg:<GameState> is deprecated: use game_controller-msg:GameState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:header-val is deprecated.  Use game_controller-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gameState-val :lambda-list '(m))
(cl:defmethod gameState-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:gameState-val is deprecated.  Use game_controller-msg:gameState instead.")
  (gameState m))

(cl:ensure-generic-function 'secondaryState-val :lambda-list '(m))
(cl:defmethod secondaryState-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:secondaryState-val is deprecated.  Use game_controller-msg:secondaryState instead.")
  (secondaryState m))

(cl:ensure-generic-function 'secondrayStateTeam-val :lambda-list '(m))
(cl:defmethod secondrayStateTeam-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:secondrayStateTeam-val is deprecated.  Use game_controller-msg:secondrayStateTeam instead.")
  (secondrayStateTeam m))

(cl:ensure-generic-function 'firstHalf-val :lambda-list '(m))
(cl:defmethod firstHalf-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:firstHalf-val is deprecated.  Use game_controller-msg:firstHalf instead.")
  (firstHalf m))

(cl:ensure-generic-function 'ownScore-val :lambda-list '(m))
(cl:defmethod ownScore-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:ownScore-val is deprecated.  Use game_controller-msg:ownScore instead.")
  (ownScore m))

(cl:ensure-generic-function 'rivalScore-val :lambda-list '(m))
(cl:defmethod rivalScore-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:rivalScore-val is deprecated.  Use game_controller-msg:rivalScore instead.")
  (rivalScore m))

(cl:ensure-generic-function 'secondsRemaining-val :lambda-list '(m))
(cl:defmethod secondsRemaining-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:secondsRemaining-val is deprecated.  Use game_controller-msg:secondsRemaining instead.")
  (secondsRemaining m))

(cl:ensure-generic-function 'secondary_seconds_remaining-val :lambda-list '(m))
(cl:defmethod secondary_seconds_remaining-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:secondary_seconds_remaining-val is deprecated.  Use game_controller-msg:secondary_seconds_remaining instead.")
  (secondary_seconds_remaining m))

(cl:ensure-generic-function 'penalty-val :lambda-list '(m))
(cl:defmethod penalty-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:penalty-val is deprecated.  Use game_controller-msg:penalty instead.")
  (penalty m))

(cl:ensure-generic-function 'hasKickOff-val :lambda-list '(m))
(cl:defmethod hasKickOff-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:hasKickOff-val is deprecated.  Use game_controller-msg:hasKickOff instead.")
  (hasKickOff m))

(cl:ensure-generic-function 'penalized-val :lambda-list '(m))
(cl:defmethod penalized-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:penalized-val is deprecated.  Use game_controller-msg:penalized instead.")
  (penalized m))

(cl:ensure-generic-function 'secondsTillUnpenalized-val :lambda-list '(m))
(cl:defmethod secondsTillUnpenalized-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:secondsTillUnpenalized-val is deprecated.  Use game_controller-msg:secondsTillUnpenalized instead.")
  (secondsTillUnpenalized m))

(cl:ensure-generic-function 'allowedToMove-val :lambda-list '(m))
(cl:defmethod allowedToMove-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:allowedToMove-val is deprecated.  Use game_controller-msg:allowedToMove instead.")
  (allowedToMove m))

(cl:ensure-generic-function 'dropInTeam-val :lambda-list '(m))
(cl:defmethod dropInTeam-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:dropInTeam-val is deprecated.  Use game_controller-msg:dropInTeam instead.")
  (dropInTeam m))

(cl:ensure-generic-function 'dropInTime-val :lambda-list '(m))
(cl:defmethod dropInTime-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:dropInTime-val is deprecated.  Use game_controller-msg:dropInTime instead.")
  (dropInTime m))

(cl:ensure-generic-function 'penaltyShot-val :lambda-list '(m))
(cl:defmethod penaltyShot-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:penaltyShot-val is deprecated.  Use game_controller-msg:penaltyShot instead.")
  (penaltyShot m))

(cl:ensure-generic-function 'singleShots-val :lambda-list '(m))
(cl:defmethod singleShots-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:singleShots-val is deprecated.  Use game_controller-msg:singleShots instead.")
  (singleShots m))

(cl:ensure-generic-function 'coach_message-val :lambda-list '(m))
(cl:defmethod coach_message-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_controller-msg:coach_message-val is deprecated.  Use game_controller-msg:coach_message instead.")
  (coach_message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GameState>)))
    "Constants for message type '<GameState>"
  '((:MANUAL . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GameState)))
    "Constants for message type 'GameState"
  '((:MANUAL . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameState>) ostream)
  "Serializes a message object of type '<GameState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gameState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secondaryState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secondrayStateTeam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'firstHalf) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ownScore)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rivalScore)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'secondsRemaining)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secondary_seconds_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'secondary_seconds_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'penalty)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hasKickOff) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'penalized) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secondsTillUnpenalized)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'secondsTillUnpenalized)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allowedToMove) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dropInTeam) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dropInTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dropInTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'penaltyShot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'singleShots)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'singleShots)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'coach_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'coach_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameState>) istream)
  "Deserializes a message object of type '<GameState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gameState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secondaryState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secondrayStateTeam)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'firstHalf) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ownScore)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rivalScore)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'secondsRemaining) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secondary_seconds_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'secondary_seconds_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'penalty)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hasKickOff) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'penalized) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secondsTillUnpenalized)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'secondsTillUnpenalized)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'allowedToMove) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dropInTeam) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dropInTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dropInTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'penaltyShot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'singleShots)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'singleShots)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'coach_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'coach_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameState>)))
  "Returns string type for a message object of type '<GameState>"
  "game_controller/GameState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameState)))
  "Returns string type for a message object of type 'GameState"
  "game_controller/GameState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameState>)))
  "Returns md5sum for a message object of type '<GameState>"
  "9e87745f53267ba5d95d9900fdc4cf02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameState)))
  "Returns md5sum for a message object of type 'GameState"
  "9e87745f53267ba5d95d9900fdc4cf02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameState>)))
  "Returns full string definition for message of type '<GameState>"
  (cl:format cl:nil "# This message provides all information from the game controller~%# for additional information see documentation of the game controller~%# https://github.com/bhuman/GameController~%~%~%std_msgs/Header header~%~%#uint8 GAMESTATE_INITAL=0~%#uint8 GAMESTATE_READY=1~%#uint8 GAMESTATE_SET=2~%#uint8 GAMESTATE_PLAYING=3~%#uint8 GAMESTATE_FINISHED=4~%uint8 gameState~%~%#uint8 STATE_NORMAL = 0~%#uint8 STATE_PENALTYSHOOT = 1~%#uint8 STATE_OVERTIME = 2~%#uint8 STATE_TIMEOUT = 3~%#uint8 STATE_FREEKICK = 4~%#uint8 STATE_PENALTYKICK = 5~%uint8 secondaryState~%~%# For newest version of game controller~%# Tells which team has the free kick or penalty kick~%uint8 secondrayStateTeam~%~%bool firstHalf~%uint8 ownScore~%uint8 rivalScore~%~%# Seconds remaining for the game half~%int16 secondsRemaining~%# Seconds remaining for things like kickoff~%uint16 secondary_seconds_remaining~%~%#uint8 NONE=0~%#uint8 PENALTY_HL_KID_BALL_MANIPULATION=30~%#uint8 PENALTY_HL_KID_PHYSICAL_CONTACT=31~%#uint8 PENALTY_HL_KID_ILLEGAL_ATTACK=22~%#uint8 PENALTY_HL_KID_ILLEGAL_DEFENSE=4~%#uint8 PENALTY_HL_KID_REQUEST_FOR_PICKUP=34~%#uint8 PENALTY_HL_KID_REQUEST_FOR_SERVICE=35~%uint8 MANUAL=15~%~%uint8 penalty~%bool hasKickOff~%bool penalized~%uint16 secondsTillUnpenalized~%~%# Allowed to move is different from penalized.~%# You can for example be not allowed to move due to the current state of the game~%bool allowedToMove~%~%bool dropInTeam~%uint16 dropInTime~%~%uint8 penaltyShot~%uint16 singleShots~%~%string coach_message~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameState)))
  "Returns full string definition for message of type 'GameState"
  (cl:format cl:nil "# This message provides all information from the game controller~%# for additional information see documentation of the game controller~%# https://github.com/bhuman/GameController~%~%~%std_msgs/Header header~%~%#uint8 GAMESTATE_INITAL=0~%#uint8 GAMESTATE_READY=1~%#uint8 GAMESTATE_SET=2~%#uint8 GAMESTATE_PLAYING=3~%#uint8 GAMESTATE_FINISHED=4~%uint8 gameState~%~%#uint8 STATE_NORMAL = 0~%#uint8 STATE_PENALTYSHOOT = 1~%#uint8 STATE_OVERTIME = 2~%#uint8 STATE_TIMEOUT = 3~%#uint8 STATE_FREEKICK = 4~%#uint8 STATE_PENALTYKICK = 5~%uint8 secondaryState~%~%# For newest version of game controller~%# Tells which team has the free kick or penalty kick~%uint8 secondrayStateTeam~%~%bool firstHalf~%uint8 ownScore~%uint8 rivalScore~%~%# Seconds remaining for the game half~%int16 secondsRemaining~%# Seconds remaining for things like kickoff~%uint16 secondary_seconds_remaining~%~%#uint8 NONE=0~%#uint8 PENALTY_HL_KID_BALL_MANIPULATION=30~%#uint8 PENALTY_HL_KID_PHYSICAL_CONTACT=31~%#uint8 PENALTY_HL_KID_ILLEGAL_ATTACK=22~%#uint8 PENALTY_HL_KID_ILLEGAL_DEFENSE=4~%#uint8 PENALTY_HL_KID_REQUEST_FOR_PICKUP=34~%#uint8 PENALTY_HL_KID_REQUEST_FOR_SERVICE=35~%uint8 MANUAL=15~%~%uint8 penalty~%bool hasKickOff~%bool penalized~%uint16 secondsTillUnpenalized~%~%# Allowed to move is different from penalized.~%# You can for example be not allowed to move due to the current state of the game~%bool allowedToMove~%~%bool dropInTeam~%uint16 dropInTime~%~%uint8 penaltyShot~%uint16 singleShots~%~%string coach_message~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     2
     2
     1
     1
     1
     2
     1
     1
     2
     1
     2
     4 (cl:length (cl:slot-value msg 'coach_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameState>))
  "Converts a ROS message object to a list"
  (cl:list 'GameState
    (cl:cons ':header (header msg))
    (cl:cons ':gameState (gameState msg))
    (cl:cons ':secondaryState (secondaryState msg))
    (cl:cons ':secondrayStateTeam (secondrayStateTeam msg))
    (cl:cons ':firstHalf (firstHalf msg))
    (cl:cons ':ownScore (ownScore msg))
    (cl:cons ':rivalScore (rivalScore msg))
    (cl:cons ':secondsRemaining (secondsRemaining msg))
    (cl:cons ':secondary_seconds_remaining (secondary_seconds_remaining msg))
    (cl:cons ':penalty (penalty msg))
    (cl:cons ':hasKickOff (hasKickOff msg))
    (cl:cons ':penalized (penalized msg))
    (cl:cons ':secondsTillUnpenalized (secondsTillUnpenalized msg))
    (cl:cons ':allowedToMove (allowedToMove msg))
    (cl:cons ':dropInTeam (dropInTeam msg))
    (cl:cons ':dropInTime (dropInTime msg))
    (cl:cons ':penaltyShot (penaltyShot msg))
    (cl:cons ':singleShots (singleShots msg))
    (cl:cons ':coach_message (coach_message msg))
))
