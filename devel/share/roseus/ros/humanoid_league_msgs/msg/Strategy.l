;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::Strategy)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'Strategy (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY")
  (make-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))

(in-package "ROS")
;;//! \htmlinclude Strategy.msg.html


(intern "*ROLE_IDLING*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ROLE_IDLING* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ROLE_IDLING* 0)
(intern "*ROLE_OTHER*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ROLE_OTHER* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ROLE_OTHER* 1)
(intern "*ROLE_STRIKER*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ROLE_STRIKER* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ROLE_STRIKER* 2)
(intern "*ROLE_SUPPORTER*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ROLE_SUPPORTER* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ROLE_SUPPORTER* 3)
(intern "*ROLE_DEFENDER*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ROLE_DEFENDER* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ROLE_DEFENDER* 4)
(intern "*ROLE_GOALIE*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ROLE_GOALIE* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ROLE_GOALIE* 5)
(intern "*ACTION_UNDEFINED*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ACTION_UNDEFINED* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ACTION_UNDEFINED* 0)
(intern "*ACTION_POSITIONING*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ACTION_POSITIONING* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ACTION_POSITIONING* 1)
(intern "*ACTION_GOING_TO_BALL*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ACTION_GOING_TO_BALL* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ACTION_GOING_TO_BALL* 2)
(intern "*ACTION_TRYING_TO_SCORE*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ACTION_TRYING_TO_SCORE* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ACTION_TRYING_TO_SCORE* 3)
(intern "*ACTION_WAITING*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*ACTION_WAITING* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*ACTION_WAITING* 4)
(intern "*SIDE_LEFT*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*SIDE_LEFT* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*SIDE_LEFT* 0)
(intern "*SIDE_MIDDLE*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*SIDE_MIDDLE* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*SIDE_MIDDLE* 1)
(intern "*SIDE_RIGHT*" (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(shadow '*SIDE_RIGHT* (find-package "HUMANOID_LEAGUE_MSGS::STRATEGY"))
(defconstant humanoid_league_msgs::Strategy::*SIDE_RIGHT* 2)
(defclass humanoid_league_msgs::Strategy
  :super ros::object
  :slots (_role _action _offensive_side ))

(defmethod humanoid_league_msgs::Strategy
  (:init
   (&key
    ((:role __role) 0)
    ((:action __action) 0)
    ((:offensive_side __offensive_side) 0)
    )
   (send-super :init)
   (setq _role (round __role))
   (setq _action (round __action))
   (setq _offensive_side (round __offensive_side))
   self)
  (:role
   (&optional __role)
   (if __role (setq _role __role)) _role)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:offensive_side
   (&optional __offensive_side)
   (if __offensive_side (setq _offensive_side __offensive_side)) _offensive_side)
  (:serialization-length
   ()
   (+
    ;; uint8 _role
    1
    ;; uint8 _action
    1
    ;; uint8 _offensive_side
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _role
       (write-byte _role s)
     ;; uint8 _action
       (write-byte _action s)
     ;; uint8 _offensive_side
       (write-byte _offensive_side s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _role
     (setq _role (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _offensive_side
     (setq _offensive_side (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::Strategy :md5sum-) "73b1522777cf7f264eedf954da4c5819")
(setf (get humanoid_league_msgs::Strategy :datatype-) "humanoid_league_msgs/Strategy")
(setf (get humanoid_league_msgs::Strategy :definition-)
      "# This message provides information about the current strategy of the robot to the team communication so that it can be
# shared with other team robots

# Which role the robot has currently
uint8 ROLE_IDLING=0
uint8 ROLE_OTHER=1
uint8 ROLE_STRIKER=2
uint8 ROLE_SUPPORTER=3
uint8 ROLE_DEFENDER=4
uint8 ROLE_GOALIE=5
uint8 role

# The current action of the robot
uint8 ACTION_UNDEFINED=0
uint8 ACTION_POSITIONING=1
uint8 ACTION_GOING_TO_BALL=2
uint8 ACTION_TRYING_TO_SCORE=3
uint8 ACTION_WAITING=4
uint8 action

# Offensive strategy
uint8 SIDE_LEFT = 0
uint8 SIDE_MIDDLE = 1
uint8 SIDE_RIGHT = 2
uint8 offensive_side
")



(provide :humanoid_league_msgs/Strategy "73b1522777cf7f264eedf954da4c5819")


