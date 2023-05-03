;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::GoalPartsInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'GoalPartsInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::GOALPARTSINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::GOALPARTSINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude GoalPartsInImage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass humanoid_league_msgs::GoalPartsInImage
  :super ros::object
  :slots (_header _posts _bars ))

(defmethod humanoid_league_msgs::GoalPartsInImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:posts __posts) ())
    ((:bars __bars) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _posts __posts)
   (setq _bars __bars)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:posts
   (&rest __posts)
   (if (keywordp (car __posts))
       (send* _posts __posts)
     (progn
       (if __posts (setq _posts (car __posts)))
       _posts)))
  (:bars
   (&rest __bars)
   (if (keywordp (car __bars))
       (send* _bars __bars)
     (progn
       (if __bars (setq _bars (car __bars)))
       _bars)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; humanoid_league_msgs/PostInImage[] _posts
    (apply #'+ (send-all _posts :serialization-length)) 4
    ;; humanoid_league_msgs/BarInImage[] _bars
    (apply #'+ (send-all _bars :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; humanoid_league_msgs/PostInImage[] _posts
     (write-long (length _posts) s)
     (dolist (elem _posts)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/BarInImage[] _bars
     (write-long (length _bars) s)
     (dolist (elem _bars)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; humanoid_league_msgs/PostInImage[] _posts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _posts (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::PostInImage :init) r)) r))
     (dolist (elem- _posts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/BarInImage[] _bars
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bars (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::BarInImage :init) r)) r))
     (dolist (elem- _bars)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::GoalPartsInImage :md5sum-) "414bdeb7ea88f8c7d90c72bc02231e66")
(setf (get humanoid_league_msgs::GoalPartsInImage :datatype-) "humanoid_league_msgs/GoalPartsInImage")
(setf (get humanoid_league_msgs::GoalPartsInImage :definition-)
      "# The header is included to get the time stamp for later use in tf
std_msgs/Header header

PostInImage[] posts
BarInImage[] bars
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
string frame_id

================================================================================
MSG: humanoid_league_msgs/PostInImage
# A (possible) goal post in the image. It is defined by two end points and a width.

# Two points defining the significant axis of the post
geometry_msgs/Point foot_point
geometry_msgs/Point top_point
# Orthogonal to significant vector (in pixel)
float32 width

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: humanoid_league_msgs/BarInImage
# A (possible) goal bar in the image. It is defined by the two end points and a width.

# Two points defining the significant axis of the post
geometry_msgs/Point left_point
geometry_msgs/Point right_point
# Orthogonal to significant vector (in pixel)
float32 width

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
")



(provide :humanoid_league_msgs/GoalPartsInImage "414bdeb7ea88f8c7d90c72bc02231e66")


