;; Auto-generated. Do not edit!


(when (boundp 'vision_utils::MonitorUtils)
  (if (not (find-package "VISION_UTILS"))
    (make-package "VISION_UTILS"))
  (shadow 'MonitorUtils (find-package "VISION_UTILS")))
(unless (find-package "VISION_UTILS::MONITORUTILS")
  (make-package "VISION_UTILS::MONITORUTILS"))

(in-package "ROS")
;;//! \htmlinclude MonitorUtils.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vision_utils::MonitorUtils
  :super ros::object
  :slots (_line_models _particles ))

(defmethod vision_utils::MonitorUtils
  (:init
   (&key
    ((:line_models __line_models) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:particles __particles) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Quaternion :init) r)) r))
    )
   (send-super :init)
   (setq _line_models __line_models)
   (setq _particles __particles)
   self)
  (:line_models
   (&rest __line_models)
   (if (keywordp (car __line_models))
       (send* _line_models __line_models)
     (progn
       (if __line_models (setq _line_models (car __line_models)))
       _line_models)))
  (:particles
   (&rest __particles)
   (if (keywordp (car __particles))
       (send* _particles __particles)
     (progn
       (if __particles (setq _particles (car __particles)))
       _particles)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3[] _line_models
    (apply #'+ (send-all _line_models :serialization-length)) 4
    ;; geometry_msgs/Quaternion[] _particles
    (apply #'+ (send-all _particles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3[] _line_models
     (write-long (length _line_models) s)
     (dolist (elem _line_models)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Quaternion[] _particles
     (write-long (length _particles) s)
     (dolist (elem _particles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3[] _line_models
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_models (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _line_models)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Quaternion[] _particles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _particles (let (r) (dotimes (i n) (push (instance geometry_msgs::Quaternion :init) r)) r))
     (dolist (elem- _particles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_utils::MonitorUtils :md5sum-) "849debddb0d7bc3d689fc3c60819829e")
(setf (get vision_utils::MonitorUtils :datatype-) "vision_utils/MonitorUtils")
(setf (get vision_utils::MonitorUtils :definition-)
      "geometry_msgs/Vector3[] line_models
geometry_msgs/Quaternion[] particles


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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :vision_utils/MonitorUtils "849debddb0d7bc3d689fc3c60819829e")


