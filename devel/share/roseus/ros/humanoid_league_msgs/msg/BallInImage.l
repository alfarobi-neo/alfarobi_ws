;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::BallInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'BallInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::BALLINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::BALLINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude BallInImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass humanoid_league_msgs::BallInImage
  :super ros::object
  :slots (_center _diameter _confidence ))

(defmethod humanoid_league_msgs::BallInImage
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:diameter __diameter) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _diameter (float __diameter))
   (setq _confidence (float __confidence))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:diameter
   (&optional __diameter)
   (if __diameter (setq _diameter __diameter)) _diameter)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; float64 _diameter
    8
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; float64 _diameter
       (sys::poke _diameter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float64 _diameter
     (setq _diameter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::BallInImage :md5sum-) "90e95ed5b7c4ae20cbc638453cf31bb7")
(setf (get humanoid_league_msgs::BallInImage :datatype-) "humanoid_league_msgs/BallInImage")
(setf (get humanoid_league_msgs::BallInImage :definition-)
      "# Providing a (possible) ball in the image

# Center point of the ball, the z-axis should be ignored (in pixel)
geometry_msgs/Point center
# Diameter of the ball (in pixel)
float64 diameter

# A certainty rating between 0 and 1, where 1 is the surest.
# 0 means no ball was found
float32 confidence

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/BallInImage "90e95ed5b7c4ae20cbc638453cf31bb7")


