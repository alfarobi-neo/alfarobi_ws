;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::VisualCompassRotation)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'VisualCompassRotation (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::VISUALCOMPASSROTATION")
  (make-package "HUMANOID_LEAGUE_MSGS::VISUALCOMPASSROTATION"))

(in-package "ROS")
;;//! \htmlinclude VisualCompassRotation.msg.html


(defclass humanoid_league_msgs::VisualCompassRotation
  :super ros::object
  :slots (_orientation _confidence ))

(defmethod humanoid_league_msgs::VisualCompassRotation
  (:init
   (&key
    ((:orientation __orientation) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _orientation (float __orientation))
   (setq _confidence (float __confidence))
   self)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; float32 _orientation
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::VisualCompassRotation :md5sum-) "44fdc5544cc3e3cee8f82caccfdf780d")
(setf (get humanoid_league_msgs::VisualCompassRotation :datatype-) "humanoid_league_msgs/VisualCompassRotation")
(setf (get humanoid_league_msgs::VisualCompassRotation :definition-)
      "# This message is used to specify the orientation of the visual compass in relation to a RoboCup Soccer field

# 0 points to the opponent goal line, 3.14 to the own goal line
float32 orientation

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
")



(provide :humanoid_league_msgs/VisualCompassRotation "44fdc5544cc3e3cee8f82caccfdf780d")


