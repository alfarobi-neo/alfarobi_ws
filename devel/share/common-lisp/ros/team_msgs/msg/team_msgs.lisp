; Auto-generated. Do not edit!


(cl:in-package team_msgs-msg)


;//! \htmlinclude team_msgs.msg.html

(cl:defclass <team_msgs> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (robot_pos
    :reader robot_pos
    :initarg :robot_pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass team_msgs (<team_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <team_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'team_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name team_msgs-msg:<team_msgs> is deprecated: use team_msgs-msg:team_msgs instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <team_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_msgs-msg:status-val is deprecated.  Use team_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'robot_pos-val :lambda-list '(m))
(cl:defmethod robot_pos-val ((m <team_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_msgs-msg:robot_pos-val is deprecated.  Use team_msgs-msg:robot_pos instead.")
  (robot_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <team_msgs>) ostream)
  "Serializes a message object of type '<team_msgs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <team_msgs>) istream)
  "Deserializes a message object of type '<team_msgs>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<team_msgs>)))
  "Returns string type for a message object of type '<team_msgs>"
  "team_msgs/team_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'team_msgs)))
  "Returns string type for a message object of type 'team_msgs"
  "team_msgs/team_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<team_msgs>)))
  "Returns md5sum for a message object of type '<team_msgs>"
  "4fee2648876f683c1a0041a1b09c9775")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'team_msgs)))
  "Returns md5sum for a message object of type 'team_msgs"
  "4fee2648876f683c1a0041a1b09c9775")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<team_msgs>)))
  "Returns full string definition for message of type '<team_msgs>"
  (cl:format cl:nil "bool status~%geometry_msgs/Vector3 robot_pos~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'team_msgs)))
  "Returns full string definition for message of type 'team_msgs"
  (cl:format cl:nil "bool status~%geometry_msgs/Vector3 robot_pos~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <team_msgs>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <team_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'team_msgs
    (cl:cons ':status (status msg))
    (cl:cons ':robot_pos (robot_pos msg))
))
