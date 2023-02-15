; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude Animation.msg.html

(cl:defclass <Animation> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (request
    :reader request
    :initarg :request
    :type cl:boolean
    :initform cl:nil)
   (first
    :reader first
    :initarg :first
    :type cl:boolean
    :initform cl:nil)
   (last
    :reader last
    :initarg :last
    :type cl:boolean
    :initform cl:nil)
   (hcm
    :reader hcm
    :initarg :hcm
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass Animation (<Animation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Animation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Animation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<Animation> is deprecated: use humanoid_league_msgs-msg:Animation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Animation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <Animation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:request-val is deprecated.  Use humanoid_league_msgs-msg:request instead.")
  (request m))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <Animation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:first-val is deprecated.  Use humanoid_league_msgs-msg:first instead.")
  (first m))

(cl:ensure-generic-function 'last-val :lambda-list '(m))
(cl:defmethod last-val ((m <Animation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:last-val is deprecated.  Use humanoid_league_msgs-msg:last instead.")
  (last m))

(cl:ensure-generic-function 'hcm-val :lambda-list '(m))
(cl:defmethod hcm-val ((m <Animation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:hcm-val is deprecated.  Use humanoid_league_msgs-msg:hcm instead.")
  (hcm m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Animation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:position-val is deprecated.  Use humanoid_league_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Animation>) ostream)
  "Serializes a message object of type '<Animation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'first) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'last) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hcm) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Animation>) istream)
  "Deserializes a message object of type '<Animation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'request) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'first) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'last) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'hcm) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Animation>)))
  "Returns string type for a message object of type '<Animation>"
  "humanoid_league_msgs/Animation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Animation)))
  "Returns string type for a message object of type 'Animation"
  "humanoid_league_msgs/Animation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Animation>)))
  "Returns md5sum for a message object of type '<Animation>"
  "dca54c410ac9021185fa92160c24c438")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Animation)))
  "Returns md5sum for a message object of type 'Animation"
  "dca54c410ac9021185fa92160c24c438")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Animation>)))
  "Returns full string definition for message of type '<Animation>"
  (cl:format cl:nil "Header header~%~%# This is a request to make HCM controllable, e.g. stop walking~%bool request~%~%# First message of this animation~%bool first~%~%# Last message of this animation~%bool last~%~%# Is this animation comming from the hardware control manager~%bool hcm~%~%# Joint goals~%trajectory_msgs/JointTrajectory position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Animation)))
  "Returns full string definition for message of type 'Animation"
  (cl:format cl:nil "Header header~%~%# This is a request to make HCM controllable, e.g. stop walking~%bool request~%~%# First message of this animation~%bool first~%~%# Last message of this animation~%bool last~%~%# Is this animation comming from the hardware control manager~%bool hcm~%~%# Joint goals~%trajectory_msgs/JointTrajectory position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Animation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Animation>))
  "Converts a ROS message object to a list"
  (cl:list 'Animation
    (cl:cons ':header (header msg))
    (cl:cons ':request (request msg))
    (cl:cons ':first (first msg))
    (cl:cons ':last (last msg))
    (cl:cons ':hcm (hcm msg))
    (cl:cons ':position (position msg))
))
