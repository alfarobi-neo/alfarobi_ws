; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude GoalPartsInImage.msg.html

(cl:defclass <GoalPartsInImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (posts
    :reader posts
    :initarg :posts
    :type (cl:vector humanoid_league_msgs-msg:PostInImage)
   :initform (cl:make-array 0 :element-type 'humanoid_league_msgs-msg:PostInImage :initial-element (cl:make-instance 'humanoid_league_msgs-msg:PostInImage)))
   (bars
    :reader bars
    :initarg :bars
    :type (cl:vector humanoid_league_msgs-msg:BarInImage)
   :initform (cl:make-array 0 :element-type 'humanoid_league_msgs-msg:BarInImage :initial-element (cl:make-instance 'humanoid_league_msgs-msg:BarInImage))))
)

(cl:defclass GoalPartsInImage (<GoalPartsInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalPartsInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalPartsInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<GoalPartsInImage> is deprecated: use humanoid_league_msgs-msg:GoalPartsInImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GoalPartsInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'posts-val :lambda-list '(m))
(cl:defmethod posts-val ((m <GoalPartsInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:posts-val is deprecated.  Use humanoid_league_msgs-msg:posts instead.")
  (posts m))

(cl:ensure-generic-function 'bars-val :lambda-list '(m))
(cl:defmethod bars-val ((m <GoalPartsInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:bars-val is deprecated.  Use humanoid_league_msgs-msg:bars instead.")
  (bars m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalPartsInImage>) ostream)
  "Serializes a message object of type '<GoalPartsInImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'posts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'posts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bars))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bars))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalPartsInImage>) istream)
  "Deserializes a message object of type '<GoalPartsInImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'posts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'posts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_league_msgs-msg:PostInImage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bars) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bars)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_league_msgs-msg:BarInImage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalPartsInImage>)))
  "Returns string type for a message object of type '<GoalPartsInImage>"
  "humanoid_league_msgs/GoalPartsInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalPartsInImage)))
  "Returns string type for a message object of type 'GoalPartsInImage"
  "humanoid_league_msgs/GoalPartsInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalPartsInImage>)))
  "Returns md5sum for a message object of type '<GoalPartsInImage>"
  "414bdeb7ea88f8c7d90c72bc02231e66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalPartsInImage)))
  "Returns md5sum for a message object of type 'GoalPartsInImage"
  "414bdeb7ea88f8c7d90c72bc02231e66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalPartsInImage>)))
  "Returns full string definition for message of type '<GoalPartsInImage>"
  (cl:format cl:nil "# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%PostInImage[] posts~%BarInImage[] bars~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/PostInImage~%# A (possible) goal post in the image. It is defined by two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point foot_point~%geometry_msgs/Point top_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: humanoid_league_msgs/BarInImage~%# A (possible) goal bar in the image. It is defined by the two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point left_point~%geometry_msgs/Point right_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalPartsInImage)))
  "Returns full string definition for message of type 'GoalPartsInImage"
  (cl:format cl:nil "# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%PostInImage[] posts~%BarInImage[] bars~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/PostInImage~%# A (possible) goal post in the image. It is defined by two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point foot_point~%geometry_msgs/Point top_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: humanoid_league_msgs/BarInImage~%# A (possible) goal bar in the image. It is defined by the two end points and a width.~%~%# Two points defining the significant axis of the post~%geometry_msgs/Point left_point~%geometry_msgs/Point right_point~%# Orthogonal to significant vector (in pixel)~%float32 width~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalPartsInImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'posts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bars) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalPartsInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalPartsInImage
    (cl:cons ':header (header msg))
    (cl:cons ':posts (posts msg))
    (cl:cons ':bars (bars msg))
))
