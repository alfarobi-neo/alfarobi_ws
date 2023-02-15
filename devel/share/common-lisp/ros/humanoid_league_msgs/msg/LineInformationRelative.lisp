; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude LineInformationRelative.msg.html

(cl:defclass <LineInformationRelative> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector humanoid_league_msgs-msg:LineSegmentRelative)
   :initform (cl:make-array 0 :element-type 'humanoid_league_msgs-msg:LineSegmentRelative :initial-element (cl:make-instance 'humanoid_league_msgs-msg:LineSegmentRelative)))
   (markings
    :reader markings
    :initarg :markings
    :type (cl:vector humanoid_league_msgs-msg:LineIntersectionRelative)
   :initform (cl:make-array 0 :element-type 'humanoid_league_msgs-msg:LineIntersectionRelative :initial-element (cl:make-instance 'humanoid_league_msgs-msg:LineIntersectionRelative)))
   (circles
    :reader circles
    :initarg :circles
    :type (cl:vector humanoid_league_msgs-msg:LineCircleRelative)
   :initform (cl:make-array 0 :element-type 'humanoid_league_msgs-msg:LineCircleRelative :initial-element (cl:make-instance 'humanoid_league_msgs-msg:LineCircleRelative))))
)

(cl:defclass LineInformationRelative (<LineInformationRelative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineInformationRelative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineInformationRelative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<LineInformationRelative> is deprecated: use humanoid_league_msgs-msg:LineInformationRelative instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LineInformationRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:header-val is deprecated.  Use humanoid_league_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <LineInformationRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:segments-val is deprecated.  Use humanoid_league_msgs-msg:segments instead.")
  (segments m))

(cl:ensure-generic-function 'markings-val :lambda-list '(m))
(cl:defmethod markings-val ((m <LineInformationRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:markings-val is deprecated.  Use humanoid_league_msgs-msg:markings instead.")
  (markings m))

(cl:ensure-generic-function 'circles-val :lambda-list '(m))
(cl:defmethod circles-val ((m <LineInformationRelative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:circles-val is deprecated.  Use humanoid_league_msgs-msg:circles instead.")
  (circles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineInformationRelative>) ostream)
  "Serializes a message object of type '<LineInformationRelative>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markings))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'circles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'circles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineInformationRelative>) istream)
  "Deserializes a message object of type '<LineInformationRelative>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_league_msgs-msg:LineSegmentRelative))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_league_msgs-msg:LineIntersectionRelative))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'circles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'circles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_league_msgs-msg:LineCircleRelative))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineInformationRelative>)))
  "Returns string type for a message object of type '<LineInformationRelative>"
  "humanoid_league_msgs/LineInformationRelative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineInformationRelative)))
  "Returns string type for a message object of type 'LineInformationRelative"
  "humanoid_league_msgs/LineInformationRelative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineInformationRelative>)))
  "Returns md5sum for a message object of type '<LineInformationRelative>"
  "c3f3ab43e63632f7fafd631643d23553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineInformationRelative)))
  "Returns md5sum for a message object of type 'LineInformationRelative"
  "c3f3ab43e63632f7fafd631643d23553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineInformationRelative>)))
  "Returns full string definition for message of type '<LineInformationRelative>"
  (cl:format cl:nil "# Contains all relative information about line features on the field~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%LineSegmentRelative[] segments~%LineIntersectionRelative[] markings~%LineCircleRelative[] circles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/LineSegmentRelative~%# A line segment relative to the robot~%~%# Start and end position of the line~%# x in front of the robot~%# y to the left~%# z should be 0~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: humanoid_league_msgs/LineIntersectionRelative~%# Information about a special line feature on the field~%~%# The type defines which kind of intersection is present~%uint8 UNDEFINED=0~%uint8 L=1~%uint8 T=2~%uint8 X=3~%uint8 type~%~%# The line segments related to this crossing~%humanoid_league_msgs/LineSegmentRelative segments~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: humanoid_league_msgs/LineCircleRelative~%# Defines a line circle in relative space, i.e. the center circle~%~%# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius~%geometry_msgs/Point left~%geometry_msgs/Point middle~%geometry_msgs/Point right~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineInformationRelative)))
  "Returns full string definition for message of type 'LineInformationRelative"
  (cl:format cl:nil "# Contains all relative information about line features on the field~%~%# The header is included to get the time stamp for later use in tf~%std_msgs/Header header~%~%LineSegmentRelative[] segments~%LineIntersectionRelative[] markings~%LineCircleRelative[] circles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: humanoid_league_msgs/LineSegmentRelative~%# A line segment relative to the robot~%~%# Start and end position of the line~%# x in front of the robot~%# y to the left~%# z should be 0~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: humanoid_league_msgs/LineIntersectionRelative~%# Information about a special line feature on the field~%~%# The type defines which kind of intersection is present~%uint8 UNDEFINED=0~%uint8 L=1~%uint8 T=2~%uint8 X=3~%uint8 type~%~%# The line segments related to this crossing~%humanoid_league_msgs/LineSegmentRelative segments~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%~%================================================================================~%MSG: humanoid_league_msgs/LineCircleRelative~%# Defines a line circle in relative space, i.e. the center circle~%~%# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius~%geometry_msgs/Point left~%geometry_msgs/Point middle~%geometry_msgs/Point right~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineInformationRelative>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'circles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineInformationRelative>))
  "Converts a ROS message object to a list"
  (cl:list 'LineInformationRelative
    (cl:cons ':header (header msg))
    (cl:cons ':segments (segments msg))
    (cl:cons ':markings (markings msg))
    (cl:cons ':circles (circles msg))
))
