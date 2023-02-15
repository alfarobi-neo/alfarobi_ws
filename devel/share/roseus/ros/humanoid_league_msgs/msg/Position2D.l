;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::Position2D)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'Position2D (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::POSITION2D")
  (make-package "HUMANOID_LEAGUE_MSGS::POSITION2D"))

(in-package "ROS")
;;//! \htmlinclude Position2D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass humanoid_league_msgs::Position2D
  :super ros::object
  :slots (_header _pose _confidence ))

(defmethod humanoid_league_msgs::Position2D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _confidence (float __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::Position2D :md5sum-) "d607bce13bd2c94613a4183be419f227")
(setf (get humanoid_league_msgs::Position2D :datatype-) "humanoid_league_msgs/Position2D")
(setf (get humanoid_league_msgs::Position2D :definition-)
      "# The position system is the same as mitecom. The following part is taken from the mitecom documentation:
# https://github.com/fumanoids/mitecom
# The origin of the absolute coordinate center is the center of the middle
# circle (center of field). The x axis points towards the opponent goal, the
# y axis to the left.
#
#      y
#      ^       ______________________
#      |    M  |          |          |  O
#      |    Y  |_ -x, y   |   x, y  _|  P
#      |    G  | |        |        | |  P
# 0    +    O  | |       ( )       | |  G
#      |    A  |_|        |        |_|  O
#      |    L  |  -x,-y   |   x,-y   |  A
#      |       |__________|__________|  L
#      |
#      +------------------+--------------> x
#                         0
#
# The 0 value of the orientation is pointing to the opponent side (right side in the image).
# The value increases counter clockwise
# Everything in meters (because it is the ROS standard)

# The header is included to get the time stamp for later use in tf
std_msgs/Header header

geometry_msgs/Pose2D pose
# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :humanoid_league_msgs/Position2D "d607bce13bd2c94613a4183be419f227")


