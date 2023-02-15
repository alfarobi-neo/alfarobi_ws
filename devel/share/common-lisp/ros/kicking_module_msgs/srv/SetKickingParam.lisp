; Auto-generated. Do not edit!


(cl:in-package kicking_module_msgs-srv)


;//! \htmlinclude SetKickingParam-request.msg.html

(cl:defclass <SetKickingParam-request> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type kicking_module_msgs-msg:KickingParam
    :initform (cl:make-instance 'kicking_module_msgs-msg:KickingParam)))
)

(cl:defclass SetKickingParam-request (<SetKickingParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetKickingParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetKickingParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kicking_module_msgs-srv:<SetKickingParam-request> is deprecated: use kicking_module_msgs-srv:SetKickingParam-request instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <SetKickingParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-srv:parameters-val is deprecated.  Use kicking_module_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetKickingParam-request>) ostream)
  "Serializes a message object of type '<SetKickingParam-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetKickingParam-request>) istream)
  "Deserializes a message object of type '<SetKickingParam-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetKickingParam-request>)))
  "Returns string type for a service object of type '<SetKickingParam-request>"
  "kicking_module_msgs/SetKickingParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKickingParam-request)))
  "Returns string type for a service object of type 'SetKickingParam-request"
  "kicking_module_msgs/SetKickingParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetKickingParam-request>)))
  "Returns md5sum for a message object of type '<SetKickingParam-request>"
  "8cba598d747b079101cd9f0a83da30c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetKickingParam-request)))
  "Returns md5sum for a message object of type 'SetKickingParam-request"
  "8cba598d747b079101cd9f0a83da30c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetKickingParam-request>)))
  "Returns full string definition for message of type '<SetKickingParam-request>"
  (cl:format cl:nil "KickingParam    parameters~%~%================================================================================~%MSG: kicking_module_msgs/KickingParam~%float32 Torso_X~%float32 Torso_Y~%float32 Torso_Z~%float32 L_Shift_X~%float32 L_Shift_Y~%float32 L_Shift_Z~%float32 R_Shift_X~%float32 R_Shift_Y~%float32 R_Shift_Z~%float32 L_Lift_X~%float32 L_Lift_Y~%float32 L_Lift_Z~%float32 R_Lift_X~%float32 R_Lift_Y~%float32 R_Lift_Z~%float32 L_Swing_X~%float32 L_Swing_Y~%float32 L_Swing_Z~%float32 R_Swing_X~%float32 R_Swing_Y~%float32 R_Swing_Z~%float32 L_Retract_X~%float32 L_Retract_Y~%float32 L_Retract_Z~%float32 R_Retract_X~%float32 R_Retract_Y~%float32 R_Retract_Z~%float32 Torso_Pitch~%float32 Shift_Roll~%float32 Lift_Roll~%float32 Lift_Pitch~%float32 Swing_Roll~%float32 Swing_Pitch~%float32 Retract_Roll~%float32 Retract_Pitch~%float32 SHIFT_TIME~%float32 LIFT_TIME~%float32 SWING_TIME~%float32 RETRACT_TIME~%float32 LANDING_TIME~%float32 FINISHED_TIME~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetKickingParam-request)))
  "Returns full string definition for message of type 'SetKickingParam-request"
  (cl:format cl:nil "KickingParam    parameters~%~%================================================================================~%MSG: kicking_module_msgs/KickingParam~%float32 Torso_X~%float32 Torso_Y~%float32 Torso_Z~%float32 L_Shift_X~%float32 L_Shift_Y~%float32 L_Shift_Z~%float32 R_Shift_X~%float32 R_Shift_Y~%float32 R_Shift_Z~%float32 L_Lift_X~%float32 L_Lift_Y~%float32 L_Lift_Z~%float32 R_Lift_X~%float32 R_Lift_Y~%float32 R_Lift_Z~%float32 L_Swing_X~%float32 L_Swing_Y~%float32 L_Swing_Z~%float32 R_Swing_X~%float32 R_Swing_Y~%float32 R_Swing_Z~%float32 L_Retract_X~%float32 L_Retract_Y~%float32 L_Retract_Z~%float32 R_Retract_X~%float32 R_Retract_Y~%float32 R_Retract_Z~%float32 Torso_Pitch~%float32 Shift_Roll~%float32 Lift_Roll~%float32 Lift_Pitch~%float32 Swing_Roll~%float32 Swing_Pitch~%float32 Retract_Roll~%float32 Retract_Pitch~%float32 SHIFT_TIME~%float32 LIFT_TIME~%float32 SWING_TIME~%float32 RETRACT_TIME~%float32 LANDING_TIME~%float32 FINISHED_TIME~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetKickingParam-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetKickingParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetKickingParam-request
    (cl:cons ':parameters (parameters msg))
))
;//! \htmlinclude SetKickingParam-response.msg.html

(cl:defclass <SetKickingParam-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetKickingParam-response (<SetKickingParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetKickingParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetKickingParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kicking_module_msgs-srv:<SetKickingParam-response> is deprecated: use kicking_module_msgs-srv:SetKickingParam-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetKickingParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-srv:result-val is deprecated.  Use kicking_module_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetKickingParam-response>) ostream)
  "Serializes a message object of type '<SetKickingParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetKickingParam-response>) istream)
  "Deserializes a message object of type '<SetKickingParam-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetKickingParam-response>)))
  "Returns string type for a service object of type '<SetKickingParam-response>"
  "kicking_module_msgs/SetKickingParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKickingParam-response)))
  "Returns string type for a service object of type 'SetKickingParam-response"
  "kicking_module_msgs/SetKickingParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetKickingParam-response>)))
  "Returns md5sum for a message object of type '<SetKickingParam-response>"
  "8cba598d747b079101cd9f0a83da30c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetKickingParam-response)))
  "Returns md5sum for a message object of type 'SetKickingParam-response"
  "8cba598d747b079101cd9f0a83da30c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetKickingParam-response>)))
  "Returns full string definition for message of type '<SetKickingParam-response>"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetKickingParam-response)))
  "Returns full string definition for message of type 'SetKickingParam-response"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetKickingParam-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetKickingParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetKickingParam-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetKickingParam)))
  'SetKickingParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetKickingParam)))
  'SetKickingParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKickingParam)))
  "Returns string type for a service object of type '<SetKickingParam>"
  "kicking_module_msgs/SetKickingParam")