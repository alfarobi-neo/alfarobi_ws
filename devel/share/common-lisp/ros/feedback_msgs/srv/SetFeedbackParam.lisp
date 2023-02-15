; Auto-generated. Do not edit!


(cl:in-package feedback_msgs-srv)


;//! \htmlinclude SetFeedbackParam-request.msg.html

(cl:defclass <SetFeedbackParam-request> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type feedback_msgs-msg:FeedbackParam
    :initform (cl:make-instance 'feedback_msgs-msg:FeedbackParam)))
)

(cl:defclass SetFeedbackParam-request (<SetFeedbackParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFeedbackParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFeedbackParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name feedback_msgs-srv:<SetFeedbackParam-request> is deprecated: use feedback_msgs-srv:SetFeedbackParam-request instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <SetFeedbackParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-srv:parameters-val is deprecated.  Use feedback_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFeedbackParam-request>) ostream)
  "Serializes a message object of type '<SetFeedbackParam-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFeedbackParam-request>) istream)
  "Deserializes a message object of type '<SetFeedbackParam-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFeedbackParam-request>)))
  "Returns string type for a service object of type '<SetFeedbackParam-request>"
  "feedback_msgs/SetFeedbackParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFeedbackParam-request)))
  "Returns string type for a service object of type 'SetFeedbackParam-request"
  "feedback_msgs/SetFeedbackParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFeedbackParam-request>)))
  "Returns md5sum for a message object of type '<SetFeedbackParam-request>"
  "9ad071cebaaf92d9d2cb3443b3bd44a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFeedbackParam-request)))
  "Returns md5sum for a message object of type 'SetFeedbackParam-request"
  "9ad071cebaaf92d9d2cb3443b3bd44a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFeedbackParam-request>)))
  "Returns full string definition for message of type '<SetFeedbackParam-request>"
  (cl:format cl:nil "FeedbackParam    parameters~%~%================================================================================~%MSG: feedback_msgs/FeedbackParam~%float32 Body_Height~%float32 Body_Tilt~%float32 Leg_X~%float32 Leg_Y~%float32 Leg_Z~%~%float32 Leg_R_Z~%float32 Leg_L_Z~%float32 R_Roll~%float32 L_Roll~%~%float32 Setpoint_Pitch~%float32 Setpoint_Roll~%~%float32 Gain_Angle_Pitch~%float32 Gain_Angle_Roll~%~%float32 Gain_Velocity_Pitch~%float32 Gain_Velocity_Roll~%~%float32 Gain_Integral_Pitch~%float32 Gain_Integral_Roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFeedbackParam-request)))
  "Returns full string definition for message of type 'SetFeedbackParam-request"
  (cl:format cl:nil "FeedbackParam    parameters~%~%================================================================================~%MSG: feedback_msgs/FeedbackParam~%float32 Body_Height~%float32 Body_Tilt~%float32 Leg_X~%float32 Leg_Y~%float32 Leg_Z~%~%float32 Leg_R_Z~%float32 Leg_L_Z~%float32 R_Roll~%float32 L_Roll~%~%float32 Setpoint_Pitch~%float32 Setpoint_Roll~%~%float32 Gain_Angle_Pitch~%float32 Gain_Angle_Roll~%~%float32 Gain_Velocity_Pitch~%float32 Gain_Velocity_Roll~%~%float32 Gain_Integral_Pitch~%float32 Gain_Integral_Roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFeedbackParam-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFeedbackParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFeedbackParam-request
    (cl:cons ':parameters (parameters msg))
))
;//! \htmlinclude SetFeedbackParam-response.msg.html

(cl:defclass <SetFeedbackParam-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetFeedbackParam-response (<SetFeedbackParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFeedbackParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFeedbackParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name feedback_msgs-srv:<SetFeedbackParam-response> is deprecated: use feedback_msgs-srv:SetFeedbackParam-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetFeedbackParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-srv:result-val is deprecated.  Use feedback_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFeedbackParam-response>) ostream)
  "Serializes a message object of type '<SetFeedbackParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFeedbackParam-response>) istream)
  "Deserializes a message object of type '<SetFeedbackParam-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFeedbackParam-response>)))
  "Returns string type for a service object of type '<SetFeedbackParam-response>"
  "feedback_msgs/SetFeedbackParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFeedbackParam-response)))
  "Returns string type for a service object of type 'SetFeedbackParam-response"
  "feedback_msgs/SetFeedbackParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFeedbackParam-response>)))
  "Returns md5sum for a message object of type '<SetFeedbackParam-response>"
  "9ad071cebaaf92d9d2cb3443b3bd44a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFeedbackParam-response)))
  "Returns md5sum for a message object of type 'SetFeedbackParam-response"
  "9ad071cebaaf92d9d2cb3443b3bd44a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFeedbackParam-response>)))
  "Returns full string definition for message of type '<SetFeedbackParam-response>"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFeedbackParam-response)))
  "Returns full string definition for message of type 'SetFeedbackParam-response"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFeedbackParam-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFeedbackParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFeedbackParam-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFeedbackParam)))
  'SetFeedbackParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFeedbackParam)))
  'SetFeedbackParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFeedbackParam)))
  "Returns string type for a service object of type '<SetFeedbackParam>"
  "feedback_msgs/SetFeedbackParam")