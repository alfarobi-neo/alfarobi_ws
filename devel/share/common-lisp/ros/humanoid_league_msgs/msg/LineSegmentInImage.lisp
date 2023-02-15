; Auto-generated. Do not edit!


(cl:in-package humanoid_league_msgs-msg)


;//! \htmlinclude LineSegmentInImage.msg.html

(cl:defclass <LineSegmentInImage> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (end
    :reader end
    :initarg :end
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (start_width
    :reader start_width
    :initarg :start_width
    :type cl:float
    :initform 0.0)
   (end_with
    :reader end_with
    :initarg :end_with
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass LineSegmentInImage (<LineSegmentInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineSegmentInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineSegmentInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_league_msgs-msg:<LineSegmentInImage> is deprecated: use humanoid_league_msgs-msg:LineSegmentInImage instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <LineSegmentInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:start-val is deprecated.  Use humanoid_league_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <LineSegmentInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:end-val is deprecated.  Use humanoid_league_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'start_width-val :lambda-list '(m))
(cl:defmethod start_width-val ((m <LineSegmentInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:start_width-val is deprecated.  Use humanoid_league_msgs-msg:start_width instead.")
  (start_width m))

(cl:ensure-generic-function 'end_with-val :lambda-list '(m))
(cl:defmethod end_with-val ((m <LineSegmentInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:end_with-val is deprecated.  Use humanoid_league_msgs-msg:end_with instead.")
  (end_with m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LineSegmentInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_league_msgs-msg:confidence-val is deprecated.  Use humanoid_league_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineSegmentInImage>) ostream)
  "Serializes a message object of type '<LineSegmentInImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_with))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineSegmentInImage>) istream)
  "Deserializes a message object of type '<LineSegmentInImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_with) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineSegmentInImage>)))
  "Returns string type for a message object of type '<LineSegmentInImage>"
  "humanoid_league_msgs/LineSegmentInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineSegmentInImage)))
  "Returns string type for a message object of type 'LineSegmentInImage"
  "humanoid_league_msgs/LineSegmentInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineSegmentInImage>)))
  "Returns md5sum for a message object of type '<LineSegmentInImage>"
  "d0e1617931b08ca66afbb6d4be8d99e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineSegmentInImage)))
  "Returns md5sum for a message object of type 'LineSegmentInImage"
  "d0e1617931b08ca66afbb6d4be8d99e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineSegmentInImage>)))
  "Returns full string definition for message of type '<LineSegmentInImage>"
  (cl:format cl:nil "# A normal line segment in the image~%~%# Two points defining the vector of the line. The center is orthogonally in the middle of the line~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%# Orthogonal to the significant vector~%float32 start_width~%float32 end_with~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineSegmentInImage)))
  "Returns full string definition for message of type 'LineSegmentInImage"
  (cl:format cl:nil "# A normal line segment in the image~%~%# Two points defining the vector of the line. The center is orthogonally in the middle of the line~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%# Orthogonal to the significant vector~%float32 start_width~%float32 end_with~%~%# A certainty rating between 0 and 1, where 1 is the surest.~%float32 confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineSegmentInImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineSegmentInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'LineSegmentInImage
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':start_width (start_width msg))
    (cl:cons ':end_with (end_with msg))
    (cl:cons ':confidence (confidence msg))
))
