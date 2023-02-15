;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::ObstacleInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'ObstacleInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude ObstacleInImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*UNDEFINED*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(shadow '*UNDEFINED* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(defconstant humanoid_league_msgs::ObstacleInImage::*UNDEFINED* 0)
(intern "*ROBOT_UNDEFINED*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(shadow '*ROBOT_UNDEFINED* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(defconstant humanoid_league_msgs::ObstacleInImage::*ROBOT_UNDEFINED* 1)
(intern "*ROBOT_MAGENTA*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(shadow '*ROBOT_MAGENTA* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(defconstant humanoid_league_msgs::ObstacleInImage::*ROBOT_MAGENTA* 2)
(intern "*ROBOT_CYAN*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(shadow '*ROBOT_CYAN* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(defconstant humanoid_league_msgs::ObstacleInImage::*ROBOT_CYAN* 3)
(intern "*HUMAN*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(shadow '*HUMAN* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(defconstant humanoid_league_msgs::ObstacleInImage::*HUMAN* 4)
(intern "*POLE*" (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(shadow '*POLE* (find-package "HUMANOID_LEAGUE_MSGS::OBSTACLEINIMAGE"))
(defconstant humanoid_league_msgs::ObstacleInImage::*POLE* 5)
(defclass humanoid_league_msgs::ObstacleInImage
  :super ros::object
  :slots (_color _playerNumber _top_left _height _width _confidence ))

(defmethod humanoid_league_msgs::ObstacleInImage
  (:init
   (&key
    ((:color __color) 0)
    ((:playerNumber __playerNumber) 0)
    ((:top_left __top_left) (instance geometry_msgs::Point :init))
    ((:height __height) 0)
    ((:width __width) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _playerNumber (round __playerNumber))
   (setq _top_left __top_left)
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _confidence (float __confidence))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:playerNumber
   (&optional __playerNumber)
   (if __playerNumber (setq _playerNumber __playerNumber)) _playerNumber)
  (:top_left
   (&rest __top_left)
   (if (keywordp (car __top_left))
       (send* _top_left __top_left)
     (progn
       (if __top_left (setq _top_left (car __top_left)))
       _top_left)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
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
    ;; geometry_msgs/Point _top_left
    (send _top_left :serialization-length)
    ;; uint8 _height
    1
    ;; uint8 _width
    1
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
     ;; geometry_msgs/Point _top_left
       (send _top_left :serialize s)
     ;; uint8 _height
       (write-byte _height s)
     ;; uint8 _width
       (write-byte _width s)
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
   ;; geometry_msgs/Point _top_left
     (send _top_left :deserialize buf ptr-) (incf ptr- (send _top_left :serialization-length))
   ;; uint8 _height
     (setq _height (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _width
     (setq _width (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::ObstacleInImage :md5sum-) "5e334321d63927966a578660e9c5fd06")
(setf (get humanoid_league_msgs::ObstacleInImage :datatype-) "humanoid_league_msgs/ObstacleInImage")
(setf (get humanoid_league_msgs::ObstacleInImage :definition-)
      "# An obstacle in the image, which can be a robot, a human or something else

# Main color of the obstacle, to differentiate between robots and other things like human legs
# Something we cant classify
uint8 UNDEFINED = 0
# Robot without known color
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

# The corresponding section in the image
geometry_msgs/Point top_left
uint8 height
uint8 width

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/ObstacleInImage "5e334321d63927966a578660e9c5fd06")


