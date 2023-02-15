; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude GoalRelative.msg.html

(cl:defclass <GoalRelative> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_post
    :reader left_post
    :initarg :left_post
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (right_post
    :reader right_post
    :initarg :right_post
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (center_direction
    :reader center_direction
    :initarg :center_direction
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass GoalRelative (<GoalRelative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalRelative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalRelative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<GoalRelative> is deprecated: use humanoid_league_msgs-msg:GoalRelative instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GoalRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_post-val :lambda-list '(m))
(cl:defmethod left_post-val ((m <GoalRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:left_post-val is deprecated.  Use humanoid_league_msgs-msg:left_post instead.")
  (left_post m))

(cl:ensure-generic-function 'right_post-val :lambda-list '(m))
(cl:defmethod right_post-val ((m <GoalRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:right_post-val is deprecated.  Use humanoid_league_msgs-msg:right_post instead.")
  (right_post m))

(cl:ensure-generic-function 'center_direction-val :lambda-list '(m))
(cl:defmethod center_direction-val ((m <GoalRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:center_direction-val is deprecated.  Use humanoid_league_msgs-msg:center_direction instead.")
  (center_direction m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <GoalRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalRelative>) ostream)
  "Serializes a message object of type '<GoalRelative>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_post) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_post) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_direction) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalRelative>) istream)
  "Deserializes a message object of type '<GoalRelative>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_post) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_post) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_direction) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalRelative>)))
  "Returns string type for a message object of type '<GoalRelative>"
  "humanoid_league_msgs/GoalRelative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalRelative)))
  "Returns string type for a message object of type 'GoalRelative"
  "humanoid_league_msgs/GoalRelative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalRelative>)))
  "Returns md5sum for a message object of type '<GoalRelative>"
  "e22e7154487a20a2d60b98762c59b034")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalRelative)))
  "Returns md5sum for a message object of type 'GoalRelative"
  "e22e7154487a20a2d60b98762c59b034")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalRelative>)))
  "Returns full string definition for message of type '<GoalRelative>"
  (cl:format cl:nil "# Relative position to a goal~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%# Position of the left goal post feet (in meter)~%geometry_msgs/Point left_post~%~%# Position of the right post, null if only one post was seen~%geometry_msgs/Point right_post~%~%# Vector pointing to the (probable) center of the goal (in meters).~%# Should only be used if only one goal post is visible. If both are visible this should be none.~%# This is normally an educated guess, using the goal bar or the position of the post on the image~%geometry_msgs/Point center_direction~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no goal was found~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalRelative)))
  "Returns full string definition for message of type 'GoalRelative"
  (cl:format cl:nil "# Relative position to a goal~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%# Position of the left goal post feet (in meter)~%geometry_msgs/Point left_post~%~%# Position of the right post, null if only one post was seen~%geometry_msgs/Point right_post~%~%# Vector pointing to the (probable) center of the goal (in meters).~%# Should only be used if only one goal post is visible. If both are visible this should be none.~%# This is normally an educated guess, using the goal bar or the position of the post on the image~%geometry_msgs/Point center_direction~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no goal was found~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalRelative>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_post))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_post))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_direction))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalRelative>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalRelative
    (cl:cons ':header (header msg))
    (cl:cons ':left_post (left_post msg))
    (cl:cons ':right_post (right_post msg))
    (cl:cons ':center_direction (center_direction msg))
    (cl:cons ':confidence (confidence msg))
))
