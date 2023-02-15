; Auto-generated. Do not edit!


(cl:in-package team_communication-msg)


;//! \htmlinclude team_comm.msg.html

(cl:defclass <team_comm> (roslisp-msg-protocol:ros-message)
  ((robot_pos
    :reader robot_pos
    :initarg :robot_pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ball_pos
    :reader ball_pos
    :initarg :ball_pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass team_comm (<team_comm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <team_comm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'team_comm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name team_communication-msg:<team_comm> is deprecated: use team_communication-msg:team_comm instead.")))

(cl:ensure-generic-function 'robot_pos-val :lambda-list '(m))
(cl:defmethod robot_pos-val ((m <team_comm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:robot_pos-val is deprecated.  Use team_communication-msg:robot_pos instead.")
  (robot_pos m))

(cl:ensure-generic-function 'ball_pos-val :lambda-list '(m))
(cl:defmethod ball_pos-val ((m <team_comm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader team_communication-msg:ball_pos-val is deprecated.  Use team_communication-msg:ball_pos instead.")
  (ball_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <team_comm>) ostream)
  "Serializes a message object of type '<team_comm>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball_pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <team_comm>) istream)
  "Deserializes a message object of type '<team_comm>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball_pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<team_comm>)))
  "Returns string type for a message object of type '<team_comm>"
  "team_communication/team_comm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'team_comm)))
  "Returns string type for a message object of type 'team_comm"
  "team_communication/team_comm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<team_comm>)))
  "Returns md5sum for a message object of type '<team_comm>"
  "08f386d4974695cf4ae0bd975a0b76db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'team_comm)))
  "Returns md5sum for a message object of type 'team_comm"
  "08f386d4974695cf4ae0bd975a0b76db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<team_comm>)))
  "Returns full string definition for message of type '<team_comm>"
  (cl:format cl:nil "geometry_msgs/Vector3 robot_pos~%geometry_msgs/Vector3 ball_pos~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'team_comm)))
  "Returns full string definition for message of type 'team_comm"
  (cl:format cl:nil "geometry_msgs/Vector3 robot_pos~%geometry_msgs/Vector3 ball_pos~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <team_comm>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball_pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <team_comm>))
  "Converts a ROS message object to a list"
  (cl:list 'team_comm
    (cl:cons ':robot_pos (robot_pos msg))
    (cl:cons ':ball_pos (ball_pos msg))
))
