;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::LineSegmentInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'LineSegmentInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::LINESEGMENTINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::LINESEGMENTINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude LineSegmentInImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass humanoid_league_msgs::LineSegmentInImage
  :super ros::object
  :slots (_start _end _start_width _end_with _confidence ))

(defmethod humanoid_league_msgs::LineSegmentInImage
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::Point :init))
    ((:end __end) (instance geometry_msgs::Point :init))
    ((:start_width __start_width) 0.0)
    ((:end_with __end_with) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
   (setq _start_width (float __start_width))
   (setq _end_with (float __end_with))
   (setq _confidence (float __confidence))
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:start_width
   (&optional __start_width)
   (if __start_width (setq _start_width __start_width)) _start_width)
  (:end_with
   (&optional __end_with)
   (if __end_with (setq _end_with __end_with)) _end_with)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _start
    (send _start :serialization-length)
    ;; geometry_msgs/Point _end
    (send _end :serialization-length)
    ;; float32 _start_width
    4
    ;; float32 _end_with
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _start
       (send _start :serialize s)
     ;; geometry_msgs/Point _end
       (send _end :serialize s)
     ;; float32 _start_width
       (sys::poke _start_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_with
       (sys::poke _end_with (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Point _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;; float32 _start_width
     (setq _start_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_with
     (setq _end_with (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::LineSegmentInImage :md5sum-) "d0e1617931b08ca66afbb6d4be8d99e3")
(setf (get humanoid_league_msgs::LineSegmentInImage :datatype-) "humanoid_league_msgs/LineSegmentInImage")
(setf (get humanoid_league_msgs::LineSegmentInImage :definition-)
      "# A normal line segment in the image

# Two points defining the vector of the line. The center is orthogonally in the middle of the line
geometry_msgs/Point start
geometry_msgs/Point end

# Orthogonal to the significant vector
float32 start_width
float32 end_with

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/LineSegmentInImage "d0e1617931b08ca66afbb6d4be8d99e3")


