;; Auto-generated. Do not edit!


(when (boundp 'team_msgs::team_msgs)
  (if (not (find-package "TEAM_MSGS"))
    (make-package "TEAM_MSGS"))
  (shadow 'team_msgs (find-package "TEAM_MSGS")))
(unless (find-package "TEAM_MSGS::TEAM_MSGS")
  (make-package "TEAM_MSGS::TEAM_MSGS"))

(in-package "ROS")
;;//! \htmlinclude team_msgs.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass team_msgs::team_msgs
  :super ros::object
  :slots (_status _robot_pos ))

(defmethod team_msgs::team_msgs
  (:init
   (&key
    ((:status __status) nil)
    ((:robot_pos __robot_pos) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _status __status)
   (setq _robot_pos __robot_pos)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:robot_pos
   (&rest __robot_pos)
   (if (keywordp (car __robot_pos))
       (send* _robot_pos __robot_pos)
     (progn
       (if __robot_pos (setq _robot_pos (car __robot_pos)))
       _robot_pos)))
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ;; geometry_msgs/Vector3 _robot_pos
    (send _robot_pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Vector3 _robot_pos
       (send _robot_pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _robot_pos
     (send _robot_pos :deserialize buf ptr-) (incf ptr- (send _robot_pos :serialization-length))
   ;;
   self)
  )

(setf (get team_msgs::team_msgs :md5sum-) "4fee2648876f683c1a0041a1b09c9775")
(setf (get team_msgs::team_msgs :datatype-) "team_msgs/team_msgs")
(setf (get team_msgs::team_msgs :definition-)
      "bool status
geometry_msgs/Vector3 robot_pos


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



(provide :team_msgs/team_msgs "4fee2648876f683c1a0041a1b09c9775")


