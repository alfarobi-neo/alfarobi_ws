;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::PostInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'PostInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::POSTINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::POSTINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude PostInImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass humanoid_league_msgs::PostInImage
  :super ros::object
  :slots (_foot_point _top_point _width _confidence ))

(defmethod humanoid_league_msgs::PostInImage
  (:init
   (&key
    ((:foot_point __foot_point) (instance geometry_msgs::Point :init))
    ((:top_point __top_point) (instance geometry_msgs::Point :init))
    ((:width __width) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _foot_point __foot_point)
   (setq _top_point __top_point)
   (setq _width (float __width))
   (setq _confidence (float __confidence))
   self)
  (:foot_point
   (&rest __foot_point)
   (if (keywordp (car __foot_point))
       (send* _foot_point __foot_point)
     (progn
       (if __foot_point (setq _foot_point (car __foot_point)))
       _foot_point)))
  (:top_point
   (&rest __top_point)
   (if (keywordp (car __top_point))
       (send* _top_point __top_point)
     (progn
       (if __top_point (setq _top_point (car __top_point)))
       _top_point)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _foot_point
    (send _foot_point :serialization-length)
    ;; geometry_msgs/Point _top_point
    (send _top_point :serialization-length)
    ;; float32 _width
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _foot_point
       (send _foot_point :serialize s)
     ;; geometry_msgs/Point _top_point
       (send _top_point :serialize s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _foot_point
     (send _foot_point :deserialize buf ptr-) (incf ptr- (send _foot_point :serialization-length))
   ;; geometry_msgs/Point _top_point
     (send _top_point :deserialize buf ptr-) (incf ptr- (send _top_point :serialization-length))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::PostInImage :md5sum-) "69845e64be888b8b5f14fec4a8bcc64e")
(setf (get humanoid_league_msgs::PostInImage :datatype-) "humanoid_league_msgs/PostInImage")
(setf (get humanoid_league_msgs::PostInImage :definition-)
      "# A (possible) goal post in the image. It is defined by two end points and a width.

# Two points defining the significant axis of the post
geometry_msgs/Point foot_point
geometry_msgs/Point top_point
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



(provide :humanoid_league_msgs/PostInImage "69845e64be888b8b5f14fec4a8bcc64e")


