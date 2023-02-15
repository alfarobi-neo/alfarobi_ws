;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::HeadMode)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'HeadMode (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE")
  (make-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))

(in-package "ROS")
;;//! \htmlinclude HeadMode.msg.html


(intern "*BALL_MODE*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*BALL_MODE* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*BALL_MODE* 0)
(intern "*POST_MODE*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*POST_MODE* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*POST_MODE* 1)
(intern "*BALL_GOAL_TRACKING*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*BALL_GOAL_TRACKING* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*BALL_GOAL_TRACKING* 2)
(intern "*FIELD_FEATURES*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*FIELD_FEATURES* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*FIELD_FEATURES* 3)
(intern "*NON_FIELD_FEATURES*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*NON_FIELD_FEATURES* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*NON_FIELD_FEATURES* 4)
(intern "*LOOK_DOWN*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*LOOK_DOWN* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*LOOK_DOWN* 5)
(intern "*LOOK_FORWARD*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*LOOK_FORWARD* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*LOOK_FORWARD* 7)
(intern "*DONT_MOVE*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*DONT_MOVE* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*DONT_MOVE* 8)
(intern "*LOOK_UP*" (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(shadow '*LOOK_UP* (find-package "HUMANOID_LEAGUE_MSGS::HEADMODE"))
(defconstant humanoid_league_msgs::HeadMode::*LOOK_UP* 9)
(defclass humanoid_league_msgs::HeadMode
  :super ros::object
  :slots (_headMode ))

(defmethod humanoid_league_msgs::HeadMode
  (:init
   (&key
    ((:headMode __headMode) 0)
    )
   (send-super :init)
   (setq _headMode (round __headMode))
   self)
  (:headMode
   (&optional __headMode)
   (if __headMode (setq _headMode __headMode)) _headMode)
  (:serialization-length
   ()
   (+
    ;; uint8 _headMode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _headMode
       (write-byte _headMode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _headMode
     (setq _headMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::HeadMode :md5sum-) "eb98960a74192c06acad277ece0eb0d1")
(setf (get humanoid_league_msgs::HeadMode :datatype-) "humanoid_league_msgs/HeadMode")
(setf (get humanoid_league_msgs::HeadMode :definition-)
      "# This message is used for communicating between the body behaviour and the head behaviour
# The body tells the head by this message what it shall do

# Search for Ball and track it if found
uint8 BALL_MODE=0
# Search for goal posts, mainly to locate the robot on the field
uint8 POST_MODE=1
# Track ball and goal by constantly switching between both
uint8 BALL_GOAL_TRACKING=2
# Look generally for all features on the field (ball, goals, corners, center point)
uint8 FIELD_FEATURES=3
# Look for features outside of the field (perimeter advertising, walls, etc).
# Can be used for localization using features on the ceiling.
uint8 NON_FIELD_FEATURES=4
# Simply look down to its feet.
uint8 LOOK_DOWN=5
# Simply look directly forward
uint8 LOOK_FORWARD=7
#Don't move the head
uint8 DONT_MOVE=8
# Look to the ceiling, for example for visual compas
uint8 LOOK_UP=9
uint8 headMode
")



(provide :humanoid_league_msgs/HeadMode "eb98960a74192c06acad277ece0eb0d1")


