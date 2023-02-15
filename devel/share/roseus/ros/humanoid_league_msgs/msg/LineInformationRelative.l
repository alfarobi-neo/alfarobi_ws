;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::LineInformationRelative)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'LineInformationRelative (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::LINEINFORMATIONRELATIVE")
  (make-package "HUMANOID_LEAGUE_MSGS::LINEINFORMATIONRELATIVE"))

(in-package "ROS")
;;//! \htmlinclude LineInformationRelative.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass humanoid_league_msgs::LineInformationRelative
  :super ros::object
  :slots (_header _segments _markings _circles ))

(defmethod humanoid_league_msgs::LineInformationRelative
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:segments __segments) (let (r) (dotimes (i 0) (push (instance humanoid_league_msgs::LineSegmentRelative :init) r)) r))
    ((:markings __markings) (let (r) (dotimes (i 0) (push (instance humanoid_league_msgs::LineIntersectionRelative :init) r)) r))
    ((:circles __circles) (let (r) (dotimes (i 0) (push (instance humanoid_league_msgs::LineCircleRelative :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _segments __segments)
   (setq _markings __markings)
   (setq _circles __circles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:markings
   (&rest __markings)
   (if (keywordp (car __markings))
       (send* _markings __markings)
     (progn
       (if __markings (setq _markings (car __markings)))
       _markings)))
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
    ;; humanoid_league_msgs/LineSegmentRelative[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ;; humanoid_league_msgs/LineIntersectionRelative[] _markings
    (apply #'+ (send-all _markings :serialization-length)) 4
    ;; humanoid_league_msgs/LineCircleRelative[] _circles
    (apply #'+ (send-all _circles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; humanoid_league_msgs/LineSegmentRelative[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/LineIntersectionRelative[] _markings
     (write-long (length _markings) s)
     (dolist (elem _markings)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/LineCircleRelative[] _circles
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
   ;; humanoid_league_msgs/LineSegmentRelative[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::LineSegmentRelative :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/LineIntersectionRelative[] _markings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markings (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::LineIntersectionRelative :init) r)) r))
     (dolist (elem- _markings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/LineCircleRelative[] _circles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _circles (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::LineCircleRelative :init) r)) r))
     (dolist (elem- _circles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::LineInformationRelative :md5sum-) "c3f3ab43e63632f7fafd631643d23553")
(setf (get humanoid_league_msgs::LineInformationRelative :datatype-) "humanoid_league_msgs/LineInformationRelative")
(setf (get humanoid_league_msgs::LineInformationRelative :definition-)
      "# Contains all relative information about line features on the field

# The header is included to get the time stamp for later use in tf
std_msgs/Header header

LineSegmentRelative[] segments
LineIntersectionRelative[] markings
LineCircleRelative[] circles
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
MSG: humanoid_league_msgs/LineSegmentRelative
# A line segment relative to the robot

# Start and end position of the line
# x in front of the robot
# y to the left
# z should be 0
geometry_msgs/Point start
geometry_msgs/Point end

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: humanoid_league_msgs/LineIntersectionRelative
# Information about a special line feature on the field

# The type defines which kind of intersection is present
uint8 UNDEFINED=0
uint8 L=1
uint8 T=2
uint8 X=3
uint8 type

# The line segments related to this crossing
humanoid_league_msgs/LineSegmentRelative segments

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

================================================================================
MSG: humanoid_league_msgs/LineCircleRelative
# Defines a line circle in relative space, i.e. the center circle

# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius
geometry_msgs/Point left
geometry_msgs/Point middle
geometry_msgs/Point right


")



(provide :humanoid_league_msgs/LineInformationRelative "c3f3ab43e63632f7fafd631643d23553")


