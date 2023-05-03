; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude BallsInImage.msg.html

(cl:defclass <BallsInImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (candidates
    :reader candidates
    :initarg :candidates
    :type (cl:vector humanoid_league_msgs-msg:BallInImage)
   :initform (cl:make-array 0 :element-type 'humanoid_league_msgs-msg:BallInImage :initial-element (cl:make-instance 'humanoid_league_msgs-msg:BallInImage))))
)

(cl:defclass BallsInImage (<BallsInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallsInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallsInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<BallsInImage> is deprecated: use humanoid_league_msgs-msg:BallsInImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BallsInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'candidates-val :lambda-list '(m))
(cl:defmethod candidates-val ((m <BallsInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:candidates-val is deprecated.  Use humanoid_league_msgs-msg:candidates instead.")
  (candidates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallsInImage>) ostream)
  "Serializes a message object of type '<BallsInImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'candidates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'candidates))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallsInImage>) istream)
  "Deserializes a message object of type '<BallsInImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'candidates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'candidates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_league_msgs-msg:BallInImage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallsInImage>)))
  "Returns string type for a message object of type '<BallsInImage>"
  "humanoid_league_msgs/BallsInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallsInImage)))
  "Returns string type for a message object of type 'BallsInImage"
  "humanoid_league_msgs/BallsInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallsInImage>)))
  "Returns md5sum for a message object of type '<BallsInImage>"
  "35ec7ec20262c79114f07e8f1e8ce673")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallsInImage)))
  "Returns md5sum for a message object of type 'BallsInImage"
  "35ec7ec20262c79114f07e8f1e8ce673")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallsInImage>)))
  "Returns full string definition for message of type '<BallsInImage>"
  (cl:format cl:nil "# Contains multiple balls on an image. Should be mainly used to provide ball candidates (for example round shapes)~%# in the first step of the vision pipeline.~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%# An empty array means no balls have been found.~%humanoid_league_msgs/BallInImage[] candidates~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/BallInImage~%# Providing a (possible) ball in the image~%~%# Center point of the ball, the z-axis should be ignored (in pixel)~%geometry_msgs/Point center~%# Diameter of the ball (in pixel)~%float64 diameter~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no ball was found~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallsInImage)))
  "Returns full string definition for message of type 'BallsInImage"
  (cl:format cl:nil "# Contains multiple balls on an image. Should be mainly used to provide ball candidates (for example round shapes)~%# in the first step of the vision pipeline.~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%# An empty array means no balls have been found.~%humanoid_league_msgs/BallInImage[] candidates~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/BallInImage~%# Providing a (possible) ball in the image~%~%# Center point of the ball, the z-axis should be ignored (in pixel)~%geometry_msgs/Point center~%# Diameter of the ball (in pixel)~%float64 diameter~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%# 0 means no ball was found~%float32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallsInImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'candidates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallsInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'BallsInImage
    (cl:cons ':header (header msg))
    (cl:cons ':candidates (candidates msg))
))
