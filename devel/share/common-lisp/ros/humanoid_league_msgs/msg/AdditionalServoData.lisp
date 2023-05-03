; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude AdditionalServoData.msg.html

(cl:defclass <AdditionalServoData> (roslisp-msg-protocol:ros-message)
  ((voltage
    :reader voltage
    :initarg :voltage
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (temperature
    :reader temperature
    :initarg :temperature
    :type (cl:vector sensor_msgs-msg:Temperature)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:Temperature :initial-element (cl:make-instance 'sensor_msgs-msg:Temperature))))
)

(cl:defclass AdditionalServoData (<AdditionalServoData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdditionalServoData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdditionalServoData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<AdditionalServoData> is deprecated: use humanoid_league_msgs-msg:AdditionalServoData instead.")))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <AdditionalServoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:voltage-val is deprecated.  Use humanoid_league_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <AdditionalServoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:temperature-val is deprecated.  Use humanoid_league_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdditionalServoData>) ostream)
  "Serializes a message object of type '<AdditionalServoData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'voltage))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'temperature))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdditionalServoData>) istream)
  "Deserializes a message object of type '<AdditionalServoData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'voltage) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'voltage)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'temperature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'temperature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:Temperature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdditionalServoData>)))
  "Returns string type for a message object of type '<AdditionalServoData>"
  "humanoid_league_msgs/AdditionalServoData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdditionalServoData)))
  "Returns string type for a message object of type 'AdditionalServoData"
  "humanoid_league_msgs/AdditionalServoData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdditionalServoData>)))
  "Returns md5sum for a message object of type '<AdditionalServoData>"
  "35c09e22724f03879e9711ba15df9d42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdditionalServoData)))
  "Returns md5sum for a message object of type 'AdditionalServoData"
  "35c09e22724f03879e9711ba15df9d42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdditionalServoData>)))
  "Returns full string definition for message of type '<AdditionalServoData>"
  (cl:format cl:nil "# This message provides additional data from the servos, which is not included in JointState.msg~%# Should mainly used for monitoring and debug purposes~%~%# Setting the value to -1 means there is no data from this motor~%float32[] voltage~%sensor_msgs/Temperature[] temperature~%================================================================================~%MSG: sensor_msgs/Temperature~% # Single temperature reading.~%~% Header header           # timestamp is the time the temperature was measured~%                         # frame_id is the location of the temperature reading~%~% float64 temperature     # Measurement of the Temperature in Degrees Celsius~%~% float64 variance        # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdditionalServoData)))
  "Returns full string definition for message of type 'AdditionalServoData"
  (cl:format cl:nil "# This message provides additional data from the servos, which is not included in JointState.msg~%# Should mainly used for monitoring and debug purposes~%~%# Setting the value to -1 means there is no data from this motor~%float32[] voltage~%sensor_msgs/Temperature[] temperature~%================================================================================~%MSG: sensor_msgs/Temperature~% # Single temperature reading.~%~% Header header           # timestamp is the time the temperature was measured~%                         # frame_id is the location of the temperature reading~%~% float64 temperature     # Measurement of the Temperature in Degrees Celsius~%~% float64 variance        # 0 is interpreted as variance unknown~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdditionalServoData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'voltage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'temperature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdditionalServoData>))
  "Converts a ROS message object to a list"
  (cl:list 'AdditionalServoData
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':temperature (temperature msg))
))
