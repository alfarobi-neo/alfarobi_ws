;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::BallsInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'BallsInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::BALLSINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::BALLSINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude BallsInImage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass humanoid_league_msgs::BallsInImage
  :super ros::object
  :slots (_header _candidates ))

(defmethod humanoid_league_msgs::BallsInImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:candidates __candidates) (let (r) (dotimes (i 0) (push (instance humanoid_league_msgs::BallInImage :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _candidates __candidates)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:candidates
   (&rest __candidates)
   (if (keywordp (car __candidates))
       (send* _candidates __candidates)
     (progn
       (if __candidates (setq _candidates (car __candidates)))
       _candidates)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; humanoid_league_msgs/BallInImage[] _candidates
    (apply #'+ (send-all _candidates :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; humanoid_league_msgs/BallInImage[] _candidates
     (write-long (length _candidates) s)
     (dolist (elem _candidates)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; humanoid_league_msgs/BallInImage[] _candidates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _candidates (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::BallInImage :init) r)) r))
     (dolist (elem- _candidates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::BallsInImage :md5sum-) "35ec7ec20262c79114f07e8f1e8ce673")
(setf (get humanoid_league_msgs::BallsInImage :datatype-) "humanoid_league_msgs/BallsInImage")
(setf (get humanoid_league_msgs::BallsInImage :definition-)
      "# Contains multiple balls on an image. Should be mainly used to provide ball candidates (for example round shapes)
# in the first step of the vision pipeline.

# The header is included to get the time stamp for later use in tf
std_msgs/Header header

# An empty array means no balls have been found.
humanoid_league_msgs/BallInImage[] candidates
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
MSG: humanoid_league_msgs/BallInImage
# Providing a (possible) ball in the image

# Center point of the ball, the z-axis should be ignored (in pixel)
geometry_msgs/Point center
# Diameter of the ball (in pixel)
float64 diameter

# A certainty rating between 0 and 1, where 1 is the surest.
# 0 means no ball was found
float32 confidence

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/BallsInImage "35ec7ec20262c79114f07e8f1e8ce673")


