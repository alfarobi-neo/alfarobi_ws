; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude Model.msg.html

(cl:defclass <Model> (roslisp-msg-protocol:ros-message)
  ((ball
    :reader ball
    :initarg :ball
    :type humanoid_league_msgs-msg:BallRelative
    :initform (cl:make-instance 'humanoid_league_msgs-msg:BallRelative))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type humanoid_league_msgs-msg:ObstaclesRelative
    :initform (cl:make-instance 'humanoid_league_msgs-msg:ObstaclesRelative))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:PoseWithCovarianceStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovarianceStamped)))
)

(cl:defclass Model (<Model>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Model>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Model)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<Model> is deprecated: use humanoid_league_msgs-msg:Model instead.")))

(cl:ensure-generic-function 'ball-val :lambda-list '(m))
(cl:defmethod ball-val ((m <Model>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:ball-val is deprecated.  Use humanoid_league_msgs-msg:ball instead.")
  (ball m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <Model>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:obstacles-val is deprecated.  Use humanoid_league_msgs-msg:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Model>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:position-val is deprecated.  Use humanoid_league_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Model>) ostream)
  "Serializes a message object of type '<Model>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Model>) istream)
  "Deserializes a message object of type '<Model>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Model>)))
  "Returns string type for a message object of type '<Model>"
  "humanoid_league_msgs/Model")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Model)))
  "Returns string type for a message object of type 'Model"
  "humanoid_league_msgs/Model")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Model>)))
  "Returns md5sum for a message object of type '<Model>"
  "55f7ee25e88a6845f62dc23a8bccd993")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Model)))
  "Returns md5sum for a message object of type 'Model"
  "55f7ee25e88a6845f62dc23a8bccd993")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Model>)))
  "Returns full string definition for message of type '<Model>"
  (cl:format cl:nil "# The model message contains all information from the object recognition after filtering~%~%BallRelative ball~%ObstaclesRelative obstacles~%geometry_msgs/PoseWithCovarianceStamped position~%================================================================================~%MSG: humanoid_league_msgs/BallRelative~%# Provides the relative position of the ball~%~%# The header is included to get the time stamp~%std_msgs/Header header~%~%# x to front~%# y to left~%# z height (should normally be 0, if ball was not high kicked)~%# Everything is measured in meters~%geometry_msgs/Point ball_relative~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no ball was found~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: humanoid_league_msgs/ObstaclesRelative~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%ObstacleRelative[] obstacles~%================================================================================~%MSG: humanoid_league_msgs/ObstacleRelative~%# An obstacle relative to the robot~%~%# Main color of the obstacle, to differentiate between robots and other things like human legs~%# Something we cant classify~%uint8 UNDEFINED = 0~%# robot without known color~%uint8 ROBOT_UNDEFINED = 1~%uint8 ROBOT_MAGENTA = 2~%uint8 ROBOT_CYAN = 3~%# A human legs, e.g. from the referee~%uint8 HUMAN = 4~%# Black poles which are normally used for technical challenges~%uint8 POLE = 5~%uint8 color~%~%# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known~%uint8 playerNumber~%~%# Position (in meters)~%geometry_msgs/Point position~%~%# Educated guess of the width and height (in meters)~%float32 width~%float32 height~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Model)))
  "Returns full string definition for message of type 'Model"
  (cl:format cl:nil "# The model message contains all information from the object recognition after filtering~%~%BallRelative ball~%ObstaclesRelative obstacles~%geometry_msgs/PoseWithCovarianceStamped position~%================================================================================~%MSG: humanoid_league_msgs/BallRelative~%# Provides the relative position of the ball~%~%# The header is included to get the time stamp~%std_msgs/Header header~%~%# x to front~%# y to left~%# z height (should normally be 0, if ball was not high kicked)~%# Everything is measured in meters~%geometry_msgs/Point ball_relative~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no ball was found~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: humanoid_league_msgs/ObstaclesRelative~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%ObstacleRelative[] obstacles~%================================================================================~%MSG: humanoid_league_msgs/ObstacleRelative~%# An obstacle relative to the robot~%~%# Main color of the obstacle, to differentiate between robots and other things like human legs~%# Something we cant classify~%uint8 UNDEFINED = 0~%# robot without known color~%uint8 ROBOT_UNDEFINED = 1~%uint8 ROBOT_MAGENTA = 2~%uint8 ROBOT_CYAN = 3~%# A human legs, e.g. from the referee~%uint8 HUMAN = 4~%# Black poles which are normally used for technical challenges~%uint8 POLE = 5~%uint8 color~%~%# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known~%uint8 playerNumber~%~%# Position (in meters)~%geometry_msgs/Point position~%~%# Educated guess of the width and height (in meters)~%float32 width~%float32 height~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Model>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Model>))
  "Converts a ROS message object to a list"
  (cl:list 'Model
    (cl:cons ':ball (ball msg))
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':position (position msg))
))
