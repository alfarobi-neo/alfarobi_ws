;; Auto-generated. Do not edit!


(when (boundp 'vision_simple::Points)
  (if (not (find-package "VISION_SIMPLE"))
    (make-package "VISION_SIMPLE"))
  (shadow 'Points (find-package "VISION_SIMPLE")))
(unless (find-package "VISION_SIMPLE::POINTS")
  (make-package "VISION_SIMPLE::POINTS"))

(in-package "ROS")
;;//! \htmlinclude Points.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_simple::Points
  :super ros::object
  :slots (_header _WhitePoints _BorderPoints ))

(defmethod vision_simple::Points
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:WhitePoints __WhitePoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:BorderPoints __BorderPoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _WhitePoints __WhitePoints)
   (setq _BorderPoints __BorderPoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:WhitePoints
   (&rest __WhitePoints)
   (if (keywordp (car __WhitePoints))
       (send* _WhitePoints __WhitePoints)
     (progn
       (if __WhitePoints (setq _WhitePoints (car __WhitePoints)))
       _WhitePoints)))
  (:BorderPoints
   (&rest __BorderPoints)
   (if (keywordp (car __BorderPoints))
       (send* _BorderPoints __BorderPoints)
     (progn
       (if __BorderPoints (setq _BorderPoints (car __BorderPoints)))
       _BorderPoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point[] _WhitePoints
    (apply #'+ (send-all _WhitePoints :serialization-length)) 4
    ;; geometry_msgs/Point[] _BorderPoints
    (apply #'+ (send-all _BorderPoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point[] _WhitePoints
     (write-long (length _WhitePoints) s)
     (dolist (elem _WhitePoints)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _BorderPoints
     (write-long (length _BorderPoints) s)
     (dolist (elem _BorderPoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point[] _WhitePoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _WhitePoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _WhitePoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _BorderPoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _BorderPoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _BorderPoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_simple::Points :md5sum-) "e29ced396cf3ffb398380dd0f818d7b8")
(setf (get vision_simple::Points :datatype-) "vision_simple/Points")
(setf (get vision_simple::Points :definition-)
      "std_msgs/Header header

geometry_msgs/Point[] WhitePoints
geometry_msgs/Point[] BorderPoints

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vision_simple/Points "e29ced396cf3ffb398380dd0f818d7b8")


