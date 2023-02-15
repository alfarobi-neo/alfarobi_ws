;; Auto-generated. Do not edit!


(when (boundp 'vision_utils::LUT)
  (if (not (find-package "VISION_UTILS"))
    (make-package "VISION_UTILS"))
  (shadow 'LUT (find-package "VISION_UTILS")))
(unless (find-package "VISION_UTILS::LUT")
  (make-package "VISION_UTILS::LUT"))

(in-package "ROS")
;;//! \htmlinclude LUT.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_utils::LUT
  :super ros::object
  :slots (_color _color_class ))

(defmethod vision_utils::LUT
  (:init
   (&key
    ((:color __color) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:color_class __color_class) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _color __color)
   (setq _color_class __color_class)
   self)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:color_class
   (&rest __color_class)
   (if (keywordp (car __color_class))
       (send* _color_class __color_class)
     (progn
       (if __color_class (setq _color_class (car __color_class)))
       _color_class)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _color
    (apply #'+ (send-all _color :serialization-length)) 4
    ;; std_msgs/UInt8 _color_class
    (send _color_class :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _color
     (write-long (length _color) s)
     (dolist (elem _color)
       (send elem :serialize s)
       )
     ;; std_msgs/UInt8 _color_class
       (send _color_class :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _color
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _color (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _color)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/UInt8 _color_class
     (send _color_class :deserialize buf ptr-) (incf ptr- (send _color_class :serialization-length))
   ;;
   self)
  )

(setf (get vision_utils::LUT :md5sum-) "09c8474bb4193e600be4dc7c15b023c1")
(setf (get vision_utils::LUT :datatype-) "vision_utils/LUT")
(setf (get vision_utils::LUT :definition-)
      "geometry_msgs/Point[] color
std_msgs/UInt8 color_class

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/UInt8
uint8 data

")



(provide :vision_utils/LUT "09c8474bb4193e600be4dc7c15b023c1")


