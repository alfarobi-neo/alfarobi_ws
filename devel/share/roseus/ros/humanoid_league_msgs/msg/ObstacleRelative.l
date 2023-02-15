;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::ObstacleRelative)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'ObstacleRelative (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE")
  (make-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))

(in-package "ROS")
;;//! \htmlinclude ObstacleRelative.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*UNDEFINED*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(shadow '*UNDEFINED* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(defconstant humanoid_league_msgs::ObstacleRelative::*UNDEFINED* 0)
(intern "*ROBOT_UNDEFINED*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(shadow '*ROBOT_UNDEFINED* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(defconstant humanoid_league_msgs::ObstacleRelative::*ROBOT_UNDEFINED* 1)
(intern "*ROBOT_MAGENTA*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(shadow '*ROBOT_MAGENTA* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(defconstant humanoid_league_msgs::ObstacleRelative::*ROBOT_MAGENTA* 2)
(intern "*ROBOT_CYAN*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(shadow '*ROBOT_CYAN* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(defconstant humanoid_league_msgs::ObstacleRelative::*ROBOT_CYAN* 3)
(intern "*HUMAN*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(shadow '*HUMAN* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(defconstant humanoid_league_msgs::ObstacleRelative::*HUMAN* 4)
(intern "*POLE*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(shadow '*POLE* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLERELATIVE"))
(defconstant humanoid_league_msgs::ObstacleRelative::*POLE* 5)
(defclass humanoid_league_msgs::ObstacleRelative
  :super ros::object
  :slots (_color _playerNumber _position _width _height _confidence ))

(defmethod humanoid_league_msgs::ObstacleRelative
  (:init
   (&key
    ((:color __color) 0)
    ((:playerNumber __playerNumber) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _playerNumber (round __playerNumber))
   (setq _position __position)
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _confidence (float __confidence))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:playerNumber
   (&optional __playerNumber)
   (if __playerNumber (setq _playerNumber __playerNumber)) _playerNumber)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; uint8 _color
    1
    ;; uint8 _playerNumber
    1
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _color
       (write-byte _color s)
     ;; uint8 _playerNumber
       (write-byte _playerNumber s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _playerNumber
     (setq _playerNumber (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::ObstacleRelative :md5sum-) "96164c833f5cfca473add6b66611366a")
(setf (get humanoid_league_msgs::ObstacleRelative :datatype-) "humanoid_league_msgs/ObstacleRelative")
(setf (get humanoid_league_msgs::ObstacleRelative :definition-)
      "# An obstacle relative to the robot

# Main color of the obstacle, to differentiate between robots and other things like human legs
# Something we cant classify
uint8 UNDEFINED = 0
# robot without known color
uint8 ROBOT_UNDEFINED = 1
uint8 ROBOT_MAGENTA = 2
uint8 ROBOT_CYAN = 3
# A human legs, e.g. from the referee
uint8 HUMAN = 4
# Black poles which are normally used for technical challenges
uint8 POLE = 5
uint8 color

# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known
uint8 playerNumber

# Position (in meters)
geometry_msgs/Point position

# Educated guess of the width and height (in meters)
float32 width
float32 height

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/ObstacleRelative "96164c833f5cfca473add6b66611366a")


