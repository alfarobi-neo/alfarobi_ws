;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::LineSegmentRelative)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'LineSegmentRelative (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::LINESEGMENTRELATIVE")
  (make-package "HUMANOID_LEAGUE_MSGS::LINESEGMENTRELATIVE"))

(in-package "ROS")
;;//! \htmlinclude LineSegmentRelative.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass humanoid_league_msgs::LineSegmentRelative
  :super ros::object
  :slots (_start _end _confidence ))

(defmethod humanoid_league_msgs::LineSegmentRelative
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::Point :init))
    ((:end __end) (instance geometry_msgs::Point :init))
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
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
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::LineSegmentRelative :md5sum-) "f020ba307526912d5724b855ee3e8f56")
(setf (get humanoid_league_msgs::LineSegmentRelative :datatype-) "humanoid_league_msgs/LineSegmentRelative")
(setf (get humanoid_league_msgs::LineSegmentRelative :definition-)
      "# A line segment relative to the robot

# Start and end position of the line
# x in front of the robot
# y to the left
# z should be 0
geometry_msgs/Point start
geometry_msgs/Point end

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/LineSegmentRelative "f020ba307526912d5724b855ee3e8f56")


