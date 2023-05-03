; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude ObstaclesRelative.msg.html

(cl:defclass <ObstaclesRelative> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector humanoid_league_msgs-msg:ObstacleRelative)
   :initform (cl:make-array 0 :element-type 'humanoid_league_msgs-msg:ObstacleRelative :initial-element (cl:make-instance 'humanoid_league_msgs-msg:ObstacleRelative))))
)

(cl:defclass ObstaclesRelative (<ObstaclesRelative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstaclesRelative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstaclesRelative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<ObstaclesRelative> is deprecated: use humanoid_league_msgs-msg:ObstaclesRelative instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstaclesRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <ObstaclesRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:obstacles-val is deprecated.  Use humanoid_league_msgs-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstaclesRelative>) ostream)
  "Serializes a message object of type '<ObstaclesRelative>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstaclesRelative>) istream)
  "Deserializes a message object of type '<ObstaclesRelative>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_league_msgs-msg:ObstacleRelative))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstaclesRelative>)))
  "Returns string type for a message object of type '<ObstaclesRelative>"
  "humanoid_league_msgs/ObstaclesRelative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstaclesRelative)))
  "Returns string type for a message object of type 'ObstaclesRelative"
  "humanoid_league_msgs/ObstaclesRelative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstaclesRelative>)))
  "Returns md5sum for a message object of type '<ObstaclesRelative>"
  "5f2aaa3a12aada8dcc308c0682249316")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstaclesRelative)))
  "Returns md5sum for a message object of type 'ObstaclesRelative"
  "5f2aaa3a12aada8dcc308c0682249316")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstaclesRelative>)))
  "Returns full string definition for message of type '<ObstaclesRelative>"
  (cl:format cl:nil "# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%ObstacleRelative[] obstacles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/ObstacleRelative~%# An obstacle relative to the robot~%~%# Main color of the obstacle, to differentiate between robots and other things like human legs~%# Something we cant classify~%uint8 UNDEFINED = 0~%# robot without known color~%uint8 ROBOT_UNDEFINED = 1~%uint8 ROBOT_MAGENTA = 2~%uint8 ROBOT_CYAN = 3~%# A human legs, e.g. from the referee~%uint8 HUMAN = 4~%# Black poles which are normally used for technical challenges~%uint8 POLE = 5~%uint8 color~%~%# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known~%uint8 playerNumber~%~%# Position (in meters)~%geometry_msgs/Point position~%~%# Educated guess of the width and height (in meters)~%float32 width~%float32 height~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstaclesRelative)))
  "Returns full string definition for message of type 'ObstaclesRelative"
  (cl:format cl:nil "# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%ObstacleRelative[] obstacles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/ObstacleRelative~%# An obstacle relative to the robot~%~%# Main color of the obstacle, to differentiate between robots and other things like human legs~%# Something we cant classify~%uint8 UNDEFINED = 0~%# robot without known color~%uint8 ROBOT_UNDEFINED = 1~%uint8 ROBOT_MAGENTA = 2~%uint8 ROBOT_CYAN = 3~%# A human legs, e.g. from the referee~%uint8 HUMAN = 4~%# Black poles which are normally used for technical challenges~%uint8 POLE = 5~%uint8 color~%~%# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known~%uint8 playerNumber~%~%# Position (in meters)~%geometry_msgs/Point position~%~%# Educated guess of the width and height (in meters)~%float32 width~%float32 height~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstaclesRelative>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstaclesRelative>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstaclesRelative
    (cl:cons ':header (header msg))
    (cl:cons ':obstacles (obstacles msg))
))
