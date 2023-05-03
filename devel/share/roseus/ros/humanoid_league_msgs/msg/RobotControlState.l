;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::RobotControlState)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'RobotControlState (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE")
  (make-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotControlState.msg.html


(intern "*CONTROLABLE*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*CONTROLABLE* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*CONTROLABLE* 0)
(intern "*FALLING*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*FALLING* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*FALLING* 1)
(intern "*FALLEN*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*FALLEN* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*FALLEN* 2)
(intern "*GETTING_UP*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*GETTING_UP* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*GETTING_UP* 3)
(intern "*ANIMATION_RUNNING*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*ANIMATION_RUNNING* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*ANIMATION_RUNNING* 4)
(intern "*STARTUP*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*STARTUP* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*STARTUP* 5)
(intern "*SHUTDOWN*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*SHUTDOWN* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*SHUTDOWN* 6)
(intern "*PENALTY*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*PENALTY* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*PENALTY* 7)
(intern "*PENALTY_ANIMANTION*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*PENALTY_ANIMANTION* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*PENALTY_ANIMANTION* 8)
(intern "*RECORD*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*RECORD* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*RECORD* 9)
(intern "*WALKING*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*WALKING* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*WALKING* 10)
(intern "*MOTOR_OFF*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*MOTOR_OFF* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*MOTOR_OFF* 11)
(intern "*HCM_OFF*" (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(shadow '*HCM_OFF* (find-package "HUMANOID_LEAGUE_MSGS::ROBOTCONTROLSTATE"))
(defconstant humanoid_league_msgs::RobotControlState::*HCM_OFF* 12)

(defun humanoid_league_msgs::RobotControlState-to-symbol (const)
  (cond
        ((= const 0) 'humanoid_league_msgs::RobotControlState::*CONTROLABLE*)
        ((= const 1) 'humanoid_league_msgs::RobotControlState::*FALLING*)
        ((= const 2) 'humanoid_league_msgs::RobotControlState::*FALLEN*)
        ((= const 3) 'humanoid_league_msgs::RobotControlState::*GETTING_UP*)
        ((= const 4) 'humanoid_league_msgs::RobotControlState::*ANIMATION_RUNNING*)
        ((= const 5) 'humanoid_league_msgs::RobotControlState::*STARTUP*)
        ((= const 6) 'humanoid_league_msgs::RobotControlState::*SHUTDOWN*)
        ((= const 7) 'humanoid_league_msgs::RobotControlState::*PENALTY*)
        ((= const 8) 'humanoid_league_msgs::RobotControlState::*PENALTY_ANIMANTION*)
        ((= const 9) 'humanoid_league_msgs::RobotControlState::*RECORD*)
        ((= const 10) 'humanoid_league_msgs::RobotControlState::*WALKING*)
        ((= const 11) 'humanoid_league_msgs::RobotControlState::*MOTOR_OFF*)
        ((= const 12) 'humanoid_league_msgs::RobotControlState::*HCM_OFF*)
        (t nil)))

(defclass humanoid_league_msgs::RobotControlState
  :super ros::object
  :slots (_state ))

(defmethod humanoid_league_msgs::RobotControlState
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::RobotControlState :md5sum-) "2328f6cdab1397e392c2b1404b1c4d3c")
(setf (get humanoid_league_msgs::RobotControlState :datatype-) "humanoid_league_msgs/RobotControlState")
(setf (get humanoid_league_msgs::RobotControlState :definition-)
      "# This message provides the current state of the hardware control manager (HCM), which is handling falling, standing up and the decision
# between playing animations and walking

# Robot can be controlled from a higher level
uint8 CONTROLABLE=0
# Robot is currently falling
# it can not be controlled and should go to a position that minimizes the damage during a fall
uint8 FALLING=1
# Robot is lying on the floor
# maybe reset your world model, as the state should be unsure now
uint8 FALLEN=2
# Robot is currently trying to get up again
uint8 GETTING_UP=3
# An animation is running
# no walking or further animations possible
# Falling detection is deactivated
uint8 ANIMATION_RUNNING=4
# The hardware control manager is booting
uint8 STARTUP=5
# The hardware control manager is shutting down
uint8 SHUTDOWN=6
# The robot is in penalty position
# It can not be controlled
uint8 PENALTY=7
# The robot is getting in or out of penalty position
uint8 PENALTY_ANIMANTION=8
# The robot is used for recording animations
# Reserved all controling to a recording process
# No falling detection is processed and no stand ups will be done
uint8 RECORD=9
# The robot is walking
uint8 WALKING=10
# A state where the motors are turned off, but the hardware control manager is still waiting for commandos and turns the motors on,
# if a move commando comes
uint8 MOTOR_OFF=11
# Last status send by the hardware control manager after shutting down
uint8 HCM_OFF=12

uint8 state
")



(provide :humanoid_league_msgs/RobotControlState "2328f6cdab1397e392c2b1404b1c4d3c")


