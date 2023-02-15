; Auto-generated. Do not edit!


(cl:in-package mcl_localization-msg)


;//! \htmlinclude localization.msg.html

(cl:defclass <localization> (roslisp-msg-protocol:ros-message)
  ((belief
    :reader belief
    :initarg :belief
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (particles
    :reader particles
    :initarg :particles
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (best_estimation
    :reader best_estimation
    :initarg :best_estimation
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (best_estimation_weight
    :reader best_estimation_weight
    :initarg :best_estimation_weight
    :type cl:float
    :initform 0.0))
)

(cl:defclass localization (<localization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_localization-msg:<localization> is deprecated: use mcl_localization-msg:localization instead.")))

(cl:ensure-generic-function 'belief-val :lambda-list '(m))
(cl:defmethod belief-val ((m <localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:belief-val is deprecated.  Use mcl_localization-msg:belief instead.")
  (belief m))

(cl:ensure-generic-function 'particles-val :lambda-list '(m))
(cl:defmethod particles-val ((m <localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:particles-val is deprecated.  Use mcl_localization-msg:particles instead.")
  (particles m))

(cl:ensure-generic-function 'best_estimation-val :lambda-list '(m))
(cl:defmethod best_estimation-val ((m <localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:best_estimation-val is deprecated.  Use mcl_localization-msg:best_estimation instead.")
  (best_estimation m))

(cl:ensure-generic-function 'best_estimation_weight-val :lambda-list '(m))
(cl:defmethod best_estimation_weight-val ((m <localization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:best_estimation_weight-val is deprecated.  Use mcl_localization-msg:best_estimation_weight instead.")
  (best_estimation_weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localization>) ostream)
  "Serializes a message object of type '<localization>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'belief) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'particles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'particles))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'best_estimation) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'best_estimation_weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localization>) istream)
  "Deserializes a message object of type '<localization>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'belief) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'particles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'particles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'best_estimation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'best_estimation_weight) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localization>)))
  "Returns string type for a message object of type '<localization>"
  "mcl_localization/localization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localization)))
  "Returns string type for a message object of type 'localization"
  "mcl_localization/localization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localization>)))
  "Returns md5sum for a message object of type '<localization>"
  "4ee2942741d2d9b68d5d3bd4e4003416")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localization)))
  "Returns md5sum for a message object of type 'localization"
  "4ee2942741d2d9b68d5d3bd4e4003416")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localization>)))
  "Returns full string definition for message of type '<localization>"
  (cl:format cl:nil "geometry_msgs/Pose2D belief~%geometry_msgs/Pose2D[] particles~%geometry_msgs/Pose2D best_estimation~%float64 best_estimation_weight~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localization)))
  "Returns full string definition for message of type 'localization"
  (cl:format cl:nil "geometry_msgs/Pose2D belief~%geometry_msgs/Pose2D[] particles~%geometry_msgs/Pose2D best_estimation~%float64 best_estimation_weight~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localization>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'belief))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'particles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'best_estimation))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localization>))
  "Converts a ROS message object to a list"
  (cl:list 'localization
    (cl:cons ':belief (belief msg))
    (cl:cons ':particles (particles msg))
    (cl:cons ':best_estimation (best_estimation msg))
    (cl:cons ':best_estimation_weight (best_estimation_weight msg))
))
