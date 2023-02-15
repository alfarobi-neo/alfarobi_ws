; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude Speak.msg.html

(cl:defclass <Speak> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass Speak (<Speak>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Speak>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Speak)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<Speak> is deprecated: use humanoid_league_msgs-msg:Speak instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <Speak>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:text-val is deprecated.  Use humanoid_league_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <Speak>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:priority-val is deprecated.  Use humanoid_league_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <Speak>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:filename-val is deprecated.  Use humanoid_league_msgs-msg:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Speak>)))
    "Constants for message type '<Speak>"
  '((:LOW_PRIORITY . 0)
    (:MID_PRIORITY . 1)
    (:HIGH_PRIORITY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Speak)))
    "Constants for message type 'Speak"
  '((:LOW_PRIORITY . 0)
    (:MID_PRIORITY . 1)
    (:HIGH_PRIORITY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Speak>) ostream)
  "Serializes a message object of type '<Speak>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Speak>) istream)
  "Deserializes a message object of type '<Speak>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Speak>)))
  "Returns string type for a message object of type '<Speak>"
  "humanoid_league_msgs/Speak")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Speak)))
  "Returns string type for a message object of type 'Speak"
  "humanoid_league_msgs/Speak")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Speak>)))
  "Returns md5sum for a message object of type '<Speak>"
  "f360f3d1d1c01a5c835f4716354e4c26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Speak)))
  "Returns md5sum for a message object of type 'Speak"
  "f360f3d1d1c01a5c835f4716354e4c26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Speak>)))
  "Returns full string definition for message of type '<Speak>"
  (cl:format cl:nil "# This message is used to activate the audio output of the robot~%# This can be used for debug proposed but also for natural language team communication~%~%# The text will only be outputed if \"filename\" is empty~%string text~%~%uint8 LOW_PRIORITY=0~%uint8 MID_PRIORITY=1~%uint8 HIGH_PRIORITY=2~%uint8 priority~%~%# If a file should be read, the path has to be specified here. Otherwise this string should be null~%string filename~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Speak)))
  "Returns full string definition for message of type 'Speak"
  (cl:format cl:nil "# This message is used to activate the audio output of the robot~%# This can be used for debug proposed but also for natural language team communication~%~%# The text will only be outputed if \"filename\" is empty~%string text~%~%uint8 LOW_PRIORITY=0~%uint8 MID_PRIORITY=1~%uint8 HIGH_PRIORITY=2~%uint8 priority~%~%# If a file should be read, the path has to be specified here. Otherwise this string should be null~%string filename~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Speak>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     1
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Speak>))
  "Converts a ROS message object to a list"
  (cl:list 'Speak
    (cl:cons ':text (text msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':filename (filename msg))
))
