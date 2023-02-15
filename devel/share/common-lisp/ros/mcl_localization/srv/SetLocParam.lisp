; Auto-generated. Do not edit!


(cl:in-package mcl_localization-srv)


;//! \htmlinclude SetLocParam-request.msg.html

(cl:defclass <SetLocParam-request> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type mcl_localization-msg:localization_param
    :initform (cl:make-instance 'mcl_localization-msg:localization_param)))
)

(cl:defclass SetLocParam-request (<SetLocParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLocParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLocParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_localization-srv:<SetLocParam-request> is deprecated: use mcl_localization-srv:SetLocParam-request instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <SetLocParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-srv:parameters-val is deprecated.  Use mcl_localization-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLocParam-request>) ostream)
  "Serializes a message object of type '<SetLocParam-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLocParam-request>) istream)
  "Deserializes a message object of type '<SetLocParam-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLocParam-request>)))
  "Returns string type for a service object of type '<SetLocParam-request>"
  "mcl_localization/SetLocParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocParam-request)))
  "Returns string type for a service object of type 'SetLocParam-request"
  "mcl_localization/SetLocParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLocParam-request>)))
  "Returns md5sum for a message object of type '<SetLocParam-request>"
  "c5b3d39a60950d660fb6da89c59bd7b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLocParam-request)))
  "Returns md5sum for a message object of type 'SetLocParam-request"
  "c5b3d39a60950d660fb6da89c59bd7b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLocParam-request>)))
  "Returns full string definition for message of type '<SetLocParam-request>"
  (cl:format cl:nil "localization_param    parameters~%~%================================================================================~%MSG: mcl_localization/localization_param~%float64 mcl_afast~%float64 mcl_aslow~%float64 mcl_variance~%float64 mgauss_x~%float64 mgauss_y~%float64 mgauss_w~%float64 vgauss_x~%float64 vgauss_y~%float64 mcl_wcmps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLocParam-request)))
  "Returns full string definition for message of type 'SetLocParam-request"
  (cl:format cl:nil "localization_param    parameters~%~%================================================================================~%MSG: mcl_localization/localization_param~%float64 mcl_afast~%float64 mcl_aslow~%float64 mcl_variance~%float64 mgauss_x~%float64 mgauss_y~%float64 mgauss_w~%float64 vgauss_x~%float64 vgauss_y~%float64 mcl_wcmps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLocParam-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLocParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLocParam-request
    (cl:cons ':parameters (parameters msg))
))
;//! \htmlinclude SetLocParam-response.msg.html

(cl:defclass <SetLocParam-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLocParam-response (<SetLocParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLocParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLocParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_localization-srv:<SetLocParam-response> is deprecated: use mcl_localization-srv:SetLocParam-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetLocParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-srv:result-val is deprecated.  Use mcl_localization-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLocParam-response>) ostream)
  "Serializes a message object of type '<SetLocParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLocParam-response>) istream)
  "Deserializes a message object of type '<SetLocParam-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLocParam-response>)))
  "Returns string type for a service object of type '<SetLocParam-response>"
  "mcl_localization/SetLocParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocParam-response)))
  "Returns string type for a service object of type 'SetLocParam-response"
  "mcl_localization/SetLocParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLocParam-response>)))
  "Returns md5sum for a message object of type '<SetLocParam-response>"
  "c5b3d39a60950d660fb6da89c59bd7b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLocParam-response)))
  "Returns md5sum for a message object of type 'SetLocParam-response"
  "c5b3d39a60950d660fb6da89c59bd7b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLocParam-response>)))
  "Returns full string definition for message of type '<SetLocParam-response>"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLocParam-response)))
  "Returns full string definition for message of type 'SetLocParam-response"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLocParam-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLocParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLocParam-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLocParam)))
  'SetLocParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLocParam)))
  'SetLocParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocParam)))
  "Returns string type for a service object of type '<SetLocParam>"
  "mcl_localization/SetLocParam")