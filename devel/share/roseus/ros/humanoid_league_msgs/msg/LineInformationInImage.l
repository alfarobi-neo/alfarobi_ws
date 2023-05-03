;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::LineInformationInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'LineInformationInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::LINEINFORMATIONINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::LINEINFORMATIONINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude LineInformationInImage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass humanoid_league_msgs::LineInformationInImage
  :super ros::object
  :slots (_header _intersections _segments _circles ))

(defmethod humanoid_league_msgs::LineInformationInImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:intersections __intersections) ())
    ((:segments __segments) ())
    ((:circles __circles) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _intersections __intersections)
   (setq _segments __segments)
   (setq _circles __circles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:intersections
   (&rest __intersections)
   (if (keywordp (car __intersections))
       (send* _intersections __intersections)
     (progn
       (if __intersections (setq _intersections (car __intersections)))
       _intersections)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:circles
   (&rest __circles)
   (if (keywordp (car __circles))
       (send* _circles __circles)
     (progn
       (if __circles (setq _circles (car __circles)))
       _circles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; humanoid_league_msgs/LineIntersectionInImage[] _intersections
    (apply #'+ (send-all _intersections :serialization-length)) 4
    ;; humanoid_league_msgs/LineSegmentInImage[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ;; humanoid_league_msgs/LineCircleInImage[] _circles
    (apply #'+ (send-all _circles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; humanoid_league_msgs/LineIntersectionInImage[] _intersections
     (write-long (length _intersections) s)
     (dolist (elem _intersections)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/LineSegmentInImage[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/LineCircleInImage[] _circles
     (write-long (length _circles) s)
     (dolist (elem _circles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; humanoid_league_msgs/LineIntersectionInImage[] _intersections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intersections (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::LineIntersectionInImage :init) r)) r))
     (dolist (elem- _intersections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/LineSegmentInImage[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::LineSegmentInImage :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/LineCircleInImage[] _circles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _circles (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::LineCircleInImage :init) r)) r))
     (dolist (elem- _circles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::LineInformationInImage :md5sum-) "0046bff18564d1ff259c25b80b246444")
(setf (get humanoid_league_msgs::LineInformationInImage :datatype-) "humanoid_league_msgs/LineInformationInImage")
(setf (get humanoid_league_msgs::LineInformationInImage :definition-)
      "# Contains all line related information on the image itself

# The header is included to get the time stamp for later use in tf
std_msgs/Header header

LineIntersectionInImage[] intersections
LineSegmentInImage[] segments
LineCircleInImage[] circles
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
MSG: humanoid_league_msgs/LineIntersectionInImage
# A line intersection feature in the image

# The type defines which kind of intersection is present
uint8 UNDEFINED=0
uint8 L=1
uint8 T=2
uint8 X=3
uint8 type

# The line segments related to this crossing
humanoid_league_msgs/LineSegmentInImage segments

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

================================================================================
MSG: humanoid_league_msgs/LineSegmentInImage
# A normal line segment in the image

# Two points defining the vector of the line. The center is orthogonally in the middle of the line
geometry_msgs/Point start
geometry_msgs/Point end

# Orthogonal to the significant vector
float32 start_width
float32 end_with

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: humanoid_league_msgs/LineCircleInImage
# Defines a line circle in image space, i.e. the center circle

# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius
geometry_msgs/Point left
geometry_msgs/Point middle
geometry_msgs/Point right


")



(provide :humanoid_league_msgs/LineInformationInImage "0046bff18564d1ff259c25b80b246444")


