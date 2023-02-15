;; Auto-generated. Do not edit!


(when (boundp 'team_communication::team_comm)
  (if (not (find-package "TEAM_COMMUNICATION"))
    (make-package "TEAM_COMMUNICATION"))
  (shadow 'team_comm (find-package "TEAM_COMMUNICATION")))
(unless (find-package "TEAM_COMMUNICATION::TEAM_COMM")
  (make-package "TEAM_COMMUNICATION::TEAM_COMM"))

(in-package "ROS")
;;//! \htmlinclude team_comm.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass team_communication::team_comm
  :super ros::object
  :slots (_robot_pos _ball_pos ))

(defmethod team_communication::team_comm
  (:init
   (&key
    ((:robot_pos __robot_pos) (instance geometry_msgs::Vector3 :init))
    ((:ball_pos __ball_pos) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _robot_pos __robot_pos)
   (setq _ball_pos __ball_pos)
   self)
  (:robot_pos
   (&rest __robot_pos)
   (if (keywordp (car __robot_pos))
       (send* _robot_pos __robot_pos)
     (progn
       (if __robot_pos (setq _robot_pos (car __robot_pos)))
       _robot_pos)))
  (:ball_pos
   (&rest __ball_pos)
   (if (keywordp (car __ball_pos))
       (send* _ball_pos __ball_pos)
     (progn
       (if __ball_pos (setq _ball_pos (car __ball_pos)))
       _ball_pos)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _robot_pos
    (send _robot_pos :serialization-length)
    ;; geometry_msgs/Vector3 _ball_pos
    (send _ball_pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _robot_pos
       (send _robot_pos :serialize s)
     ;; geometry_msgs/Vector3 _ball_pos
       (send _ball_pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _robot_pos
     (send _robot_pos :deserialize buf ptr-) (incf ptr- (send _robot_pos :serialization-length))
   ;; geometry_msgs/Vector3 _ball_pos
     (send _ball_pos :deserialize buf ptr-) (incf ptr- (send _ball_pos :serialization-length))
   ;;
   self)
  )

(setf (get team_communication::team_comm :md5sum-) "08f386d4974695cf4ae0bd975a0b76db")
(setf (get team_communication::team_comm :datatype-) "team_communication/team_comm")
(setf (get team_communication::team_comm :definition-)
      "geometry_msgs/Vector3 robot_pos
geometry_msgs/Vector3 ball_pos

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :team_communication/team_comm "08f386d4974695cf4ae0bd975a0b76db")


