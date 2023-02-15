;; Auto-generated. Do not edit!


(when (boundp 'vision_utils::FieldBoundary)
  (if (not (find-package "VISION_UTILS"))
    (make-package "VISION_UTILS"))
  (shadow 'FieldBoundary (find-package "VISION_UTILS")))
(unless (find-package "VISION_UTILS::FIELDBOUNDARY")
  (make-package "VISION_UTILS::FIELDBOUNDARY"))

(in-package "ROS")
;;//! \htmlinclude FieldBoundary.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_utils::FieldBoundary
  :super ros::object
  :slots (_header _bound1 _bound2 ))

(defmethod vision_utils::FieldBoundary
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bound1 __bound1) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:bound2 __bound2) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _bound1 __bound1)
   (setq _bound2 __bound2)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bound1
   (&rest __bound1)
   (if (keywordp (car __bound1))
       (send* _bound1 __bound1)
     (progn
       (if __bound1 (setq _bound1 (car __bound1)))
       _bound1)))
  (:bound2
   (&rest __bound2)
   (if (keywordp (car __bound2))
       (send* _bound2 __bound2)
     (progn
       (if __bound2 (setq _bound2 (car __bound2)))
       _bound2)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3[] _bound1
    (apply #'+ (send-all _bound1 :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _bound2
    (apply #'+ (send-all _bound2 :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3[] _bound1
     (write-long (length _bound1) s)
     (dolist (elem _bound1)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _bound2
     (write-long (length _bound2) s)
     (dolist (elem _bound2)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3[] _bound1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bound1 (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _bound1)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _bound2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bound2 (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _bound2)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_utils::FieldBoundary :md5sum-) "6fbaae514a52711da5011ab63728a939")
(setf (get vision_utils::FieldBoundary :datatype-) "vision_utils/FieldBoundary")
(setf (get vision_utils::FieldBoundary :definition-)
      "Header header
geometry_msgs/Vector3[] bound1
geometry_msgs/Vector3[] bound2

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



(provide :vision_utils/FieldBoundary "6fbaae514a52711da5011ab63728a939")


