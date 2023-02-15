;; Auto-generated. Do not edit!


(when (boundp 'vision_utils::Particles)
  (if (not (find-package "VISION_UTILS"))
    (make-package "VISION_UTILS"))
  (shadow 'Particles (find-package "VISION_UTILS")))
(unless (find-package "VISION_UTILS::PARTICLES")
  (make-package "VISION_UTILS::PARTICLES"))

(in-package "ROS")
;;//! \htmlinclude Particles.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_utils::Particles
  :super ros::object
  :slots (_header _particle ))

(defmethod vision_utils::Particles
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:particle __particle) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Quaternion :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _particle __particle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:particle
   (&rest __particle)
   (if (keywordp (car __particle))
       (send* _particle __particle)
     (progn
       (if __particle (setq _particle (car __particle)))
       _particle)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion[] _particle
    (apply #'+ (send-all _particle :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion[] _particle
     (write-long (length _particle) s)
     (dolist (elem _particle)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion[] _particle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _particle (let (r) (dotimes (i n) (push (instance geometry_msgs::Quaternion :init) r)) r))
     (dolist (elem- _particle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_utils::Particles :md5sum-) "193233b6e6c22c2a199ab3f2b0fde1fa")
(setf (get vision_utils::Particles :datatype-) "vision_utils/Particles")
(setf (get vision_utils::Particles :definition-)
      "Header header
geometry_msgs/Quaternion[] particle

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :vision_utils/Particles "193233b6e6c22c2a199ab3f2b0fde1fa")


