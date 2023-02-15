; Auto-generated. Do not edit!


(cl:in-package kicking_module_msgs-srv)


;//! \htmlinclude GetKickingParam-request.msg.html

(cl:defclass <GetKickingParam-request> (roslisp-msg-protocol:ros-message)
  ((get_param
    :reader get_param
    :initarg :get_param
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetKickingParam-request (<GetKickingParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetKickingParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetKickingParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kicking_module_msgs-srv:<GetKickingParam-request> is deprecated: use kicking_module_msgs-srv:GetKickingParam-request instead.")))

(cl:ensure-generic-function 'get_param-val :lambda-list '(m))
(cl:defmethod get_param-val ((m <GetKickingParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-srv:get_param-val is deprecated.  Use kicking_module_msgs-srv:get_param instead.")
  (get_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetKickingParam-request>) ostream)
  "Serializes a message object of type '<GetKickingParam-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_param) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetKickingParam-request>) istream)
  "Deserializes a message object of type '<GetKickingParam-request>"
    (cl:setf (cl:slot-value msg 'get_param) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetKickingParam-request>)))
  "Returns string type for a service object of type '<GetKickingParam-request>"
  "kicking_module_msgs/GetKickingParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetKickingParam-request)))
  "Returns string type for a service object of type 'GetKickingParam-request"
  "kicking_module_msgs/GetKickingParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetKickingParam-request>)))
  "Returns md5sum for a message object of type '<GetKickingParam-request>"
  "e283d303756e828e5a3f8f0cc145b425")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetKickingParam-request)))
  "Returns md5sum for a message object of type 'GetKickingParam-request"
  "e283d303756e828e5a3f8f0cc145b425")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetKickingParam-request>)))
  "Returns full string definition for message of type '<GetKickingParam-request>"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetKickingParam-request)))
  "Returns full string definition for message of type 'GetKickingParam-request"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetKickingParam-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetKickingParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetKickingParam-request
    (cl:cons ':get_param (get_param msg))
))
;//! \htmlinclude GetKickingParam-response.msg.html

(cl:defclass <GetKickingParam-response> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type kicking_module_msgs-msg:KickingParam
    :initform (cl:make-instance 'kicking_module_msgs-msg:KickingParam)))
)

(cl:defclass GetKickingParam-response (<GetKickingParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetKickingParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetKickingParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kicking_module_msgs-srv:<GetKickingParam-response> is deprecated: use kicking_module_msgs-srv:GetKickingParam-response instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetKickingParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-srv:parameters-val is deprecated.  Use kicking_module_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetKickingParam-response>) ostream)
  "Serializes a message object of type '<GetKickingParam-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetKickingParam-response>) istream)
  "Deserializes a message object of type '<GetKickingParam-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetKickingParam-response>)))
  "Returns string type for a service object of type '<GetKickingParam-response>"
  "kicking_module_msgs/GetKickingParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetKickingParam-response)))
  "Returns string type for a service object of type 'GetKickingParam-response"
  "kicking_module_msgs/GetKickingParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetKickingParam-response>)))
  "Returns md5sum for a message object of type '<GetKickingParam-response>"
  "e283d303756e828e5a3f8f0cc145b425")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetKickingParam-response)))
  "Returns md5sum for a message object of type 'GetKickingParam-response"
  "e283d303756e828e5a3f8f0cc145b425")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetKickingParam-response>)))
  "Returns full string definition for message of type '<GetKickingParam-response>"
  (cl:format cl:nil "KickingParam    parameters~%~%~%================================================================================~%MSG: kicking_module_msgs/KickingParam~%float32 Torso_X~%float32 Torso_Y~%float32 Torso_Z~%float32 L_Shift_X~%float32 L_Shift_Y~%float32 L_Shift_Z~%float32 R_Shift_X~%float32 R_Shift_Y~%float32 R_Shift_Z~%float32 L_Lift_X~%float32 L_Lift_Y~%float32 L_Lift_Z~%float32 R_Lift_X~%float32 R_Lift_Y~%float32 R_Lift_Z~%float32 L_Swing_X~%float32 L_Swing_Y~%float32 L_Swing_Z~%float32 R_Swing_X~%float32 R_Swing_Y~%float32 R_Swing_Z~%float32 L_Retract_X~%float32 L_Retract_Y~%float32 L_Retract_Z~%float32 R_Retract_X~%float32 R_Retract_Y~%float32 R_Retract_Z~%float32 Torso_Pitch~%float32 Shift_Roll~%float32 Lift_Roll~%float32 Lift_Pitch~%float32 Swing_Roll~%float32 Swing_Pitch~%float32 Retract_Roll~%float32 Retract_Pitch~%float32 SHIFT_TIME~%float32 LIFT_TIME~%float32 SWING_TIME~%float32 RETRACT_TIME~%float32 LANDING_TIME~%float32 FINISHED_TIME~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetKickingParam-response)))
  "Returns full string definition for message of type 'GetKickingParam-response"
  (cl:format cl:nil "KickingParam    parameters~%~%~%================================================================================~%MSG: kicking_module_msgs/KickingParam~%float32 Torso_X~%float32 Torso_Y~%float32 Torso_Z~%float32 L_Shift_X~%float32 L_Shift_Y~%float32 L_Shift_Z~%float32 R_Shift_X~%float32 R_Shift_Y~%float32 R_Shift_Z~%float32 L_Lift_X~%float32 L_Lift_Y~%float32 L_Lift_Z~%float32 R_Lift_X~%float32 R_Lift_Y~%float32 R_Lift_Z~%float32 L_Swing_X~%float32 L_Swing_Y~%float32 L_Swing_Z~%float32 R_Swing_X~%float32 R_Swing_Y~%float32 R_Swing_Z~%float32 L_Retract_X~%float32 L_Retract_Y~%float32 L_Retract_Z~%float32 R_Retract_X~%float32 R_Retract_Y~%float32 R_Retract_Z~%float32 Torso_Pitch~%float32 Shift_Roll~%float32 Lift_Roll~%float32 Lift_Pitch~%float32 Swing_Roll~%float32 Swing_Pitch~%float32 Retract_Roll~%float32 Retract_Pitch~%float32 SHIFT_TIME~%float32 LIFT_TIME~%float32 SWING_TIME~%float32 RETRACT_TIME~%float32 LANDING_TIME~%float32 FINISHED_TIME~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetKickingParam-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetKickingParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetKickingParam-response
    (cl:cons ':parameters (parameters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetKickingParam)))
  'GetKickingParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetKickingParam)))
  'GetKickingParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetKickingParam)))
  "Returns string type for a service object of type '<GetKickingParam>"
  "kicking_module_msgs/GetKickingParam")