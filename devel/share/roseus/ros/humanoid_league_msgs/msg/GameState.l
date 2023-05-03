;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::GameState)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'GameState (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE")
  (make-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))

(in-package "ROS")
;;//! \htmlinclude GameState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*GAMESTATE_INITAL*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*GAMESTATE_INITAL* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*GAMESTATE_INITAL* 0)
(intern "*GAMESTATE_READY*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*GAMESTATE_READY* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*GAMESTATE_READY* 1)
(intern "*GAMESTATE_SET*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*GAMESTATE_SET* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*GAMESTATE_SET* 2)
(intern "*GAMESTATE_PLAYING*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*GAMESTATE_PLAYING* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*GAMESTATE_PLAYING* 3)
(intern "*GAMESTATE_FINISHED*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*GAMESTATE_FINISHED* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*GAMESTATE_FINISHED* 4)
(intern "*STATE_NORMAL*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*STATE_NORMAL* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*STATE_NORMAL* 0)
(intern "*STATE_PENALTYSHOOT*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*STATE_PENALTYSHOOT* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*STATE_PENALTYSHOOT* 1)
(intern "*STATE_OVERTIME*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*STATE_OVERTIME* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*STATE_OVERTIME* 2)
(intern "*STATE_TIMEOUT*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*STATE_TIMEOUT* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*STATE_TIMEOUT* 3)
(intern "*STATE_FREEKICK*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*STATE_FREEKICK* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*STATE_FREEKICK* 4)
(intern "*STATE_PENALTYKICK*" (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(shadow '*STATE_PENALTYKICK* (find-package "HUMANOID_LEAGUE_MSGS::GAMESTATE"))
(defconstant humanoid_league_msgs::GameState::*STATE_PENALTYKICK* 5)

(defun humanoid_league_msgs::GameState-to-symbol (const)
  (cond
        ((= const 0) 'humanoid_league_msgs::GameState::*GAMESTATE_INITAL*)
        ((= const 1) 'humanoid_league_msgs::GameState::*GAMESTATE_READY*)
        ((= const 2) 'humanoid_league_msgs::GameState::*GAMESTATE_SET*)
        ((= const 3) 'humanoid_league_msgs::GameState::*GAMESTATE_PLAYING*)
        ((= const 4) 'humanoid_league_msgs::GameState::*GAMESTATE_FINISHED*)
        ((= const 0) 'humanoid_league_msgs::GameState::*STATE_NORMAL*)
        ((= const 1) 'humanoid_league_msgs::GameState::*STATE_PENALTYSHOOT*)
        ((= const 2) 'humanoid_league_msgs::GameState::*STATE_OVERTIME*)
        ((= const 3) 'humanoid_league_msgs::GameState::*STATE_TIMEOUT*)
        ((= const 4) 'humanoid_league_msgs::GameState::*STATE_FREEKICK*)
        ((= const 5) 'humanoid_league_msgs::GameState::*STATE_PENALTYKICK*)
        (t nil)))

(defclass humanoid_league_msgs::GameState
  :super ros::object
  :slots (_header _gameState _secondaryState _secondrayStateTeam _firstHalf _ownScore _rivalScore _secondsRemaining _secondary_seconds_remaining _hasKickOff _penalized _secondsTillUnpenalized _allowedToMove _dropInTeam _dropInTime _penaltyShot _singleShots _coach_message ))

(defmethod humanoid_league_msgs::GameState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gameState __gameState) 0)
    ((:secondaryState __secondaryState) 0)
    ((:secondrayStateTeam __secondrayStateTeam) 0)
    ((:firstHalf __firstHalf) nil)
    ((:ownScore __ownScore) 0)
    ((:rivalScore __rivalScore) 0)
    ((:secondsRemaining __secondsRemaining) 0)
    ((:secondary_seconds_remaining __secondary_seconds_remaining) 0)
    ((:hasKickOff __hasKickOff) nil)
    ((:penalized __penalized) nil)
    ((:secondsTillUnpenalized __secondsTillUnpenalized) 0)
    ((:allowedToMove __allowedToMove) nil)
    ((:dropInTeam __dropInTeam) nil)
    ((:dropInTime __dropInTime) 0)
    ((:penaltyShot __penaltyShot) 0)
    ((:singleShots __singleShots) 0)
    ((:coach_message __coach_message) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _gameState (round __gameState))
   (setq _secondaryState (round __secondaryState))
   (setq _secondrayStateTeam (round __secondrayStateTeam))
   (setq _firstHalf __firstHalf)
   (setq _ownScore (round __ownScore))
   (setq _rivalScore (round __rivalScore))
   (setq _secondsRemaining (round __secondsRemaining))
   (setq _secondary_seconds_remaining (round __secondary_seconds_remaining))
   (setq _hasKickOff __hasKickOff)
   (setq _penalized __penalized)
   (setq _secondsTillUnpenalized (round __secondsTillUnpenalized))
   (setq _allowedToMove __allowedToMove)
   (setq _dropInTeam __dropInTeam)
   (setq _dropInTime (round __dropInTime))
   (setq _penaltyShot (round __penaltyShot))
   (setq _singleShots (round __singleShots))
   (setq _coach_message (string __coach_message))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gameState
   (&optional __gameState)
   (if __gameState (setq _gameState __gameState)) _gameState)
  (:secondaryState
   (&optional __secondaryState)
   (if __secondaryState (setq _secondaryState __secondaryState)) _secondaryState)
  (:secondrayStateTeam
   (&optional __secondrayStateTeam)
   (if __secondrayStateTeam (setq _secondrayStateTeam __secondrayStateTeam)) _secondrayStateTeam)
  (:firstHalf
   (&optional (__firstHalf :null))
   (if (not (eq __firstHalf :null)) (setq _firstHalf __firstHalf)) _firstHalf)
  (:ownScore
   (&optional __ownScore)
   (if __ownScore (setq _ownScore __ownScore)) _ownScore)
  (:rivalScore
   (&optional __rivalScore)
   (if __rivalScore (setq _rivalScore __rivalScore)) _rivalScore)
  (:secondsRemaining
   (&optional __secondsRemaining)
   (if __secondsRemaining (setq _secondsRemaining __secondsRemaining)) _secondsRemaining)
  (:secondary_seconds_remaining
   (&optional __secondary_seconds_remaining)
   (if __secondary_seconds_remaining (setq _secondary_seconds_remaining __secondary_seconds_remaining)) _secondary_seconds_remaining)
  (:hasKickOff
   (&optional (__hasKickOff :null))
   (if (not (eq __hasKickOff :null)) (setq _hasKickOff __hasKickOff)) _hasKickOff)
  (:penalized
   (&optional (__penalized :null))
   (if (not (eq __penalized :null)) (setq _penalized __penalized)) _penalized)
  (:secondsTillUnpenalized
   (&optional __secondsTillUnpenalized)
   (if __secondsTillUnpenalized (setq _secondsTillUnpenalized __secondsTillUnpenalized)) _secondsTillUnpenalized)
  (:allowedToMove
   (&optional (__allowedToMove :null))
   (if (not (eq __allowedToMove :null)) (setq _allowedToMove __allowedToMove)) _allowedToMove)
  (:dropInTeam
   (&optional (__dropInTeam :null))
   (if (not (eq __dropInTeam :null)) (setq _dropInTeam __dropInTeam)) _dropInTeam)
  (:dropInTime
   (&optional __dropInTime)
   (if __dropInTime (setq _dropInTime __dropInTime)) _dropInTime)
  (:penaltyShot
   (&optional __penaltyShot)
   (if __penaltyShot (setq _penaltyShot __penaltyShot)) _penaltyShot)
  (:singleShots
   (&optional __singleShots)
   (if __singleShots (setq _singleShots __singleShots)) _singleShots)
  (:coach_message
   (&optional __coach_message)
   (if __coach_message (setq _coach_message __coach_message)) _coach_message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _gameState
    1
    ;; uint8 _secondaryState
    1
    ;; uint8 _secondrayStateTeam
    1
    ;; bool _firstHalf
    1
    ;; uint8 _ownScore
    1
    ;; uint8 _rivalScore
    1
    ;; int16 _secondsRemaining
    2
    ;; uint16 _secondary_seconds_remaining
    2
    ;; bool _hasKickOff
    1
    ;; bool _penalized
    1
    ;; uint16 _secondsTillUnpenalized
    2
    ;; bool _allowedToMove
    1
    ;; bool _dropInTeam
    1
    ;; uint16 _dropInTime
    2
    ;; uint8 _penaltyShot
    1
    ;; uint16 _singleShots
    2
    ;; string _coach_message
    4 (length _coach_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _gameState
       (write-byte _gameState s)
     ;; uint8 _secondaryState
       (write-byte _secondaryState s)
     ;; uint8 _secondrayStateTeam
       (write-byte _secondrayStateTeam s)
     ;; bool _firstHalf
       (if _firstHalf (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _ownScore
       (write-byte _ownScore s)
     ;; uint8 _rivalScore
       (write-byte _rivalScore s)
     ;; int16 _secondsRemaining
       (write-word _secondsRemaining s)
     ;; uint16 _secondary_seconds_remaining
       (write-word _secondary_seconds_remaining s)
     ;; bool _hasKickOff
       (if _hasKickOff (write-byte -1 s) (write-byte 0 s))
     ;; bool _penalized
       (if _penalized (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _secondsTillUnpenalized
       (write-word _secondsTillUnpenalized s)
     ;; bool _allowedToMove
       (if _allowedToMove (write-byte -1 s) (write-byte 0 s))
     ;; bool _dropInTeam
       (if _dropInTeam (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _dropInTime
       (write-word _dropInTime s)
     ;; uint8 _penaltyShot
       (write-byte _penaltyShot s)
     ;; uint16 _singleShots
       (write-word _singleShots s)
     ;; string _coach_message
       (write-long (length _coach_message) s) (princ _coach_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _gameState
     (setq _gameState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _secondaryState
     (setq _secondaryState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _secondrayStateTeam
     (setq _secondrayStateTeam (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _firstHalf
     (setq _firstHalf (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _ownScore
     (setq _ownScore (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rivalScore
     (setq _rivalScore (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _secondsRemaining
     (setq _secondsRemaining (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _secondary_seconds_remaining
     (setq _secondary_seconds_remaining (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _hasKickOff
     (setq _hasKickOff (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _penalized
     (setq _penalized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _secondsTillUnpenalized
     (setq _secondsTillUnpenalized (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _allowedToMove
     (setq _allowedToMove (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dropInTeam
     (setq _dropInTeam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _dropInTime
     (setq _dropInTime (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _penaltyShot
     (setq _penaltyShot (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _singleShots
     (setq _singleShots (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _coach_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _coach_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::GameState :md5sum-) "36ea982046fabfdd283bc1d352aa9438")
(setf (get humanoid_league_msgs::GameState :datatype-) "humanoid_league_msgs/GameState")
(setf (get humanoid_league_msgs::GameState :definition-)
      "# This message provides all information from the game controller
# for additional information see documentation of the game controller
# https://github.com/bhuman/GameController


std_msgs/Header header

uint8 GAMESTATE_INITAL=0
uint8 GAMESTATE_READY=1
uint8 GAMESTATE_SET=2
uint8 GAMESTATE_PLAYING=3
uint8 GAMESTATE_FINISHED=4
uint8 gameState

uint8 STATE_NORMAL = 0
uint8 STATE_PENALTYSHOOT = 1
uint8 STATE_OVERTIME = 2
uint8 STATE_TIMEOUT = 3
uint8 STATE_FREEKICK = 4
uint8 STATE_PENALTYKICK = 5
uint8 secondaryState

# For newest version of game controller
# Tells which team has the free kick or penalty kick
uint8 secondrayStateTeam

bool firstHalf
uint8 ownScore
uint8 rivalScore

# Seconds remaining for the game half
int16 secondsRemaining
# Seconds remaining for things like kickoff
uint16 secondary_seconds_remaining

bool hasKickOff
bool penalized
uint16 secondsTillUnpenalized
# Allowed to move is different from penalized.
# You can for example be not allowed to move due to the current state of the game
bool allowedToMove

bool dropInTeam
uint16 dropInTime

uint8 penaltyShot
uint16 singleShots

string coach_message

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :humanoid_league_msgs/GameState "36ea982046fabfdd283bc1d352aa9438")


