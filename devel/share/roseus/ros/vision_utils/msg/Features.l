;; Auto-generated. Do not edit!


(when (boundp 'vision_utils::Features)
  (if (not (find-package "VISION_UTILS"))
    (make-package "VISION_UTILS"))
  (shadow 'Features (find-package "VISION_UTILS")))
(unless (find-package "VISION_UTILS::FEATURES")
  (make-package "VISION_UTILS::FEATURES"))

(in-package "ROS")
;;//! \htmlinclude Features.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_utils::Features
  :super ros::object
  :slots (_header _feature ))

(defmethod vision_utils::Features
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:feature __feature) (let (r) (dotimes (i 0) (push (instance vision_utils::Feature :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _feature __feature)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:feature
   (&rest __feature)
   (if (keywordp (car __feature))
       (send* _feature __feature)
     (progn
       (if __feature (setq _feature (car __feature)))
       _feature)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vision_utils/Feature[] _feature
    (apply #'+ (send-all _feature :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vision_utils/Feature[] _feature
     (write-long (length _feature) s)
     (dolist (elem _feature)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vision_utils/Feature[] _feature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature (let (r) (dotimes (i n) (push (instance vision_utils::Feature :init) r)) r))
     (dolist (elem- _feature)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_utils::Features :md5sum-) "15096f959d80418cba64684bbae546db")
(setf (get vision_utils::Features :datatype-) "vision_utils/Features")
(setf (get vision_utils::Features :definition-)
      "Header header
vision_utils/Feature[] feature

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
MSG: vision_utils/Feature
float32 param1
float32 param2
float32 param3
float32 param4
float32 orientation
float32 feature_type

")



(provide :vision_utils/Features "15096f959d80418cba64684bbae546db")


