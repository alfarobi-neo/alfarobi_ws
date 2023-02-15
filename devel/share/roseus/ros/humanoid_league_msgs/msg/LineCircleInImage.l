;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::LineCircleInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'LineCircleInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::LINECIRCLEINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::LINECIRCLEINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude LineCircleInImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass humanoid_league_msgs::LineCircleInImage
  :super ros::object
  :slots (_left _middle _right ))

(defmethod humanoid_league_msgs::LineCircleInImage
  (:init
   (&key
    ((:left __left) (instance geometry_msgs::Point :init))
    ((:middle __middle) (instance geometry_msgs::Point :init))
    ((:right __right) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _left __left)
   (setq _middle __middle)
   (setq _right __right)
   self)
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:middle
   (&rest __middle)
   (if (keywordp (car __middle))
       (send* _middle __middle)
     (progn
       (if __middle (setq _middle (car __middle)))
       _middle)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _left
    (send _left :serialization-length)
    ;; geometry_msgs/Point _middle
    (send _middle :serialization-length)
    ;; geometry_msgs/Point _right
    (send _right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _left
       (send _left :serialize s)
     ;; geometry_msgs/Point _middle
       (send _middle :serialize s)
     ;; geometry_msgs/Point _right
       (send _right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; geometry_msgs/Point _middle
     (send _middle :deserialize buf ptr-) (incf ptr- (send _middle :serialization-length))
   ;; geometry_msgs/Point _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::LineCircleInImage :md5sum-) "a308f4836d6e1ddc7fdb4aef3d3e8a62")
(setf (get humanoid_league_msgs::LineCircleInImage :datatype-) "humanoid_league_msgs/LineCircleInImage")
(setf (get humanoid_league_msgs::LineCircleInImage :definition-)
      "# Defines a line circle in image space, i.e. the center circle

# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius
geometry_msgs/Point left
geometry_msgs/Point middle
geometry_msgs/Point right


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/LineCircleInImage "a308f4836d6e1ddc7fdb4aef3d3e8a62")


