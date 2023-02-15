; Auto-generated. Do not edit!


(cl:in-package feedback_msgs-srv)


;//! \htmlinclude GetFeedbackParam-request.msg.html

(cl:defclass <GetFeedbackParam-request> (roslisp-msg-protocol:ros-message)
  ((get_param
    :reader get_param
    :initarg :get_param
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetFeedbackParam-request (<GetFeedbackParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFeedbackParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFeedbackParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name feedback_msgs-srv:<GetFeedbackParam-request> is deprecated: use feedback_msgs-srv:GetFeedbackParam-request instead.")))

(cl:ensure-generic-function 'get_param-val :lambda-list '(m))
(cl:defmethod get_param-val ((m <GetFeedbackParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-srv:get_param-val is deprecated.  Use feedback_msgs-srv:get_param instead.")
  (get_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFeedbackParam-request>) ostream)
  "Serializes a message object of type '<GetFeedbackParam-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_param) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFeedbackParam-request>) istream)
  "Deserializes a message object of type '<GetFeedbackParam-request>"
    (cl:setf (cl:slot-value msg 'get_param) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFeedbackParam-request>)))
  "Returns string type for a service object of type '<GetFeedbackParam-request>"
  "feedback_msgs/GetFeedbackParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFeedbackParam-request)))
  "Returns string type for a service object of type 'GetFeedbackParam-request"
  "feedback_msgs/GetFeedbackParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFeedbackParam-request>)))
  "Returns md5sum for a message object of type '<GetFeedbackParam-request>"
  "43565a45156840bd6626578cd2384225")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFeedbackParam-request)))
  "Returns md5sum for a message object of type 'GetFeedbackParam-request"
  "43565a45156840bd6626578cd2384225")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFeedbackParam-request>)))
  "Returns full string definition for message of type '<GetFeedbackParam-request>"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFeedbackParam-request)))
  "Returns full string definition for message of type 'GetFeedbackParam-request"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFeedbackParam-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFeedbackParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFeedbackParam-request
    (cl:cons ':get_param (get_param msg))
))
;//! \htmlinclude GetFeedbackParam-response.msg.html

(cl:defclass <GetFeedbackParam-response> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type feedback_msgs-msg:FeedbackParam
    :initform (cl:make-instance 'feedback_msgs-msg:FeedbackParam)))
)

(cl:defclass GetFeedbackParam-response (<GetFeedbackParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFeedbackParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFeedbackParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name feedback_msgs-srv:<GetFeedbackParam-response> is deprecated: use feedback_msgs-srv:GetFeedbackParam-response instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetFeedbackParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-srv:parameters-val is deprecated.  Use feedback_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFeedbackParam-response>) ostream)
  "Serializes a message object of type '<GetFeedbackParam-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFeedbackParam-response>) istream)
  "Deserializes a message object of type '<GetFeedbackParam-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFeedbackParam-response>)))
  "Returns string type for a service object of type '<GetFeedbackParam-response>"
  "feedback_msgs/GetFeedbackParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFeedbackParam-response)))
  "Returns string type for a service object of type 'GetFeedbackParam-response"
  "feedback_msgs/GetFeedbackParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFeedbackParam-response>)))
  "Returns md5sum for a message object of type '<GetFeedbackParam-response>"
  "43565a45156840bd6626578cd2384225")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFeedbackParam-response)))
  "Returns md5sum for a message object of type 'GetFeedbackParam-response"
  "43565a45156840bd6626578cd2384225")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFeedbackParam-response>)))
  "Returns full string definition for message of type '<GetFeedbackParam-response>"
  (cl:format cl:nil "FeedbackParam    parameters~%~%~%================================================================================~%MSG: feedback_msgs/FeedbackParam~%float32 Body_Height~%float32 Body_Tilt~%float32 Leg_X~%float32 Leg_Y~%float32 Leg_Z~%~%float32 Leg_R_Z~%float32 Leg_L_Z~%float32 R_Roll~%float32 L_Roll~%~%float32 Setpoint_Pitch~%float32 Setpoint_Roll~%~%float32 Gain_Angle_Pitch~%float32 Gain_Angle_Roll~%~%float32 Gain_Velocity_Pitch~%float32 Gain_Velocity_Roll~%~%float32 Gain_Integral_Pitch~%float32 Gain_Integral_Roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFeedbackParam-response)))
  "Returns full string definition for message of type 'GetFeedbackParam-response"
  (cl:format cl:nil "FeedbackParam    parameters~%~%~%================================================================================~%MSG: feedback_msgs/FeedbackParam~%float32 Body_Height~%float32 Body_Tilt~%float32 Leg_X~%float32 Leg_Y~%float32 Leg_Z~%~%float32 Leg_R_Z~%float32 Leg_L_Z~%float32 R_Roll~%float32 L_Roll~%~%float32 Setpoint_Pitch~%float32 Setpoint_Roll~%~%float32 Gain_Angle_Pitch~%float32 Gain_Angle_Roll~%~%float32 Gain_Velocity_Pitch~%float32 Gain_Velocity_Roll~%~%float32 Gain_Integral_Pitch~%float32 Gain_Integral_Roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFeedbackParam-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFeedbackParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFeedbackParam-response
    (cl:cons ':parameters (parameters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFeedbackParam)))
  'GetFeedbackParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFeedbackParam)))
  'GetFeedbackParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFeedbackParam)))
  "Returns string type for a service object of type '<GetFeedbackParam>"
  "feedback_msgs/GetFeedbackParam")