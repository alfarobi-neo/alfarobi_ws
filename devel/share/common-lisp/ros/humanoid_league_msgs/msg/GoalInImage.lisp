; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude GoalInImage.msg.html

(cl:defclass <GoalInImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_post
    :reader left_post
    :initarg :left_post
    :type humanoid_league_msgs-msg:PostInImage
    :initform (cl:make-instance 'humanoid_league_msgs-msg:PostInImage))
   (right_post
    :reader right_post
    :initarg :right_post
    :type humanoid_league_msgs-msg:PostInImage
    :initform (cl:make-instance 'humanoid_league_msgs-msg:PostInImage))
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

(cl:defclass GoalInImage (<GoalInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<GoalInImage> is deprecated: use humanoid_league_msgs-msg:GoalInImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GoalInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_post-val :lambda-list '(m))
(cl:defmethod left_post-val ((m <GoalInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:left_post-val is deprecated.  Use humanoid_league_msgs-msg:left_post instead.")
  (left_post m))

(cl:ensure-generic-function 'right_post-val :lambda-list '(m))
(cl:defmethod right_post-val ((m <GoalInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:right_post-val is deprecated.  Use humanoid_league_msgs-msg:right_post instead.")
  (right_post m))

(cl:ensure-generic-function 'center_direction-val :lambda-list '(m))
(cl:defmethod center_direction-val ((m <GoalInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:center_direction-val is deprecated.  Use humanoid_league_msgs-msg:center_direction instead.")
  (center_direction m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <GoalInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalInImage>) ostream)
  "Serializes a message object of type '<GoalInImage>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalInImage>) istream)
  "Deserializes a message object of type '<GoalInImage>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalInImage>)))
  "Returns string type for a message object of type '<GoalInImage>"
  "humanoid_league_msgs/GoalInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalInImage)))
  "Returns string type for a message object of type 'GoalInImage"
  "humanoid_league_msgs/GoalInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalInImage>)))
  "Returns md5sum for a message object of type '<GoalInImage>"
  "8496af08ca739a530ae0e0b017a0ba88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalInImage)))
  "Returns md5sum for a message object of type 'GoalInImage"
  "8496af08ca739a530ae0e0b017a0ba88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalInImage>)))
  "Returns full string definition for message of type '<GoalInImage>"
  (cl:format cl:nil "# A goal on the image. Should be extracted from the seen posts and bars~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%# Left post (or the only seen one)~%humanoid_league_msgs/PostInImage left_post~%# Right post, or null if only one post of the goal is seen~%humanoid_league_msgs/PostInImage right_post~%~%# Vector pointing to the (probable) center of the goal.~%# Should only be used if only one goal post is visible. If both are visible this should be none.~%# This is normally an educated guess, using the goal bar or the position of the post on the image~%# The point can also be outside of the image~%geometry_msgs/Point center_direction~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no goal was found.~%float32 confidence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/PostInImage~%# A (possible) goal post in the image. It is defined by two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point foot_point~%geometry_msgs/Point top_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalInImage)))
  "Returns full string definition for message of type 'GoalInImage"
  (cl:format cl:nil "# A goal on the image. Should be extracted from the seen posts and bars~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%# Left post (or the only seen one)~%humanoid_league_msgs/PostInImage left_post~%# Right post, or null if only one post of the goal is seen~%humanoid_league_msgs/PostInImage right_post~%~%# Vector pointing to the (probable) center of the goal.~%# Should only be used if only one goal post is visible. If both are visible this should be none.~%# This is normally an educated guess, using the goal bar or the position of the post on the image~%# The point can also be outside of the image~%geometry_msgs/Point center_direction~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no goal was found.~%float32 confidence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/PostInImage~%# A (possible) goal post in the image. It is defined by two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point foot_point~%geometry_msgs/Point top_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalInImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_post))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_post))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_direction))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalInImage
    (cl:cons ':header (header msg))
    (cl:cons ':left_post (left_post msg))
    (cl:cons ':right_post (right_post msg))
    (cl:cons ':center_direction (center_direction msg))
    (cl:cons ':confidence (confidence msg))
))
