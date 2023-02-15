;; Auto-generated. Do not edit!


(when (boundp 'vision_utils::LineTip)
  (if (not (find-package "VISION_UTILS"))
    (make-package "VISION_UTILS"))
  (shadow 'LineTip (find-package "VISION_UTILS")))
(unless (find-package "VISION_UTILS::LINETIP")
  (make-package "VISION_UTILS::LINETIP"))

(in-package "ROS")
;;//! \htmlinclude LineTip.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vision_utils::LineTip
  :super ros::object
  :slots (_tip1 _tip2 ))

(defmethod vision_utils::LineTip
  (:init
   (&key
    ((:tip1 __tip1) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:tip2 __tip2) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _tip1 __tip1)
   (setq _tip2 __tip2)
   self)
  (:tip1
   (&rest __tip1)
   (if (keywordp (car __tip1))
       (send* _tip1 __tip1)
     (progn
       (if __tip1 (setq _tip1 (car __tip1)))
       _tip1)))
  (:tip2
   (&rest __tip2)
   (if (keywordp (car __tip2))
       (send* _tip2 __tip2)
     (progn
       (if __tip2 (setq _tip2 (car __tip2)))
       _tip2)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _tip1
    (apply #'+ (send-all _tip1 :serialization-length)) 4
    ;; geometry_msgs/Point[] _tip2
    (apply #'+ (send-all _tip2 :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _tip1
     (write-long (length _tip1) s)
     (dolist (elem _tip1)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _tip2
     (write-long (length _tip2) s)
     (dolist (elem _tip2)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _tip1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tip1 (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _tip1)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _tip2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tip2 (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _tip2)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_utils::LineTip :md5sum-) "bf211aecfc01db9117c923c714f7014d")
(setf (get vision_utils::LineTip :datatype-) "vision_utils/LineTip")
(setf (get vision_utils::LineTip :definition-)
      "geometry_msgs/Point[] tip1
geometry_msgs/Point[] tip2

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vision_utils/LineTip "bf211aecfc01db9117c923c714f7014d")


