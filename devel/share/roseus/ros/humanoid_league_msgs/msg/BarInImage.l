;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::BarInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'BarInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::BARINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::BARINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude BarInImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass humanoid_league_msgs::BarInImage
  :super ros::object
  :slots (_left_point _right_point _width _confidence ))

(defmethod humanoid_league_msgs::BarInImage
  (:init
   (&key
    ((:left_point __left_point) (instance geometry_msgs::Point :init))
    ((:right_point __right_point) (instance geometry_msgs::Point :init))
    ((:width __width) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _left_point __left_point)
   (setq _right_point __right_point)
   (setq _width (float __width))
   (setq _confidence (float __confidence))
   self)
  (:left_point
   (&rest __left_point)
   (if (keywordp (car __left_point))
       (send* _left_point __left_point)
     (progn
       (if __left_point (setq _left_point (car __left_point)))
       _left_point)))
  (:right_point
   (&rest __right_point)
   (if (keywordp (car __right_point))
       (send* _right_point __right_point)
     (progn
       (if __right_point (setq _right_point (car __right_point)))
       _right_point)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _left_point
    (send _left_point :serialization-length)
    ;; geometry_msgs/Point _right_point
    (send _right_point :serialization-length)
    ;; float32 _width
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _left_point
       (send _left_point :serialize s)
     ;; geometry_msgs/Point _right_point
       (send _right_point :serialize s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _left_point
     (send _left_point :deserialize buf ptr-) (incf ptr- (send _left_point :serialization-length))
   ;; geometry_msgs/Point _right_point
     (send _right_point :deserialize buf ptr-) (incf ptr- (send _right_point :serialization-length))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::BarInImage :md5sum-) "fc2e062fdbea58061f1e4bcb7510db2f")
(setf (get humanoid_league_msgs::BarInImage :datatype-) "humanoid_league_msgs/BarInImage")
(setf (get humanoid_league_msgs::BarInImage :definition-)
      "# A (possible) goal bar in the image. It is defined by the two end points and a width.

# Two points defining the significant axis of the post
geometry_msgs/Point left_point
geometry_msgs/Point right_point
# Orthogonal to significant vector (in pixel)
float32 width

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/BarInImage "fc2e062fdbea58061f1e4bcb7510db2f")


