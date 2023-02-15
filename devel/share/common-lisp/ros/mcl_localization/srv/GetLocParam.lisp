; Auto-generated. Do not edit!


(cl:in-package mcl_localization-srv)


;//! \htmlinclude GetLocParam-request.msg.html

(cl:defclass <GetLocParam-request> (roslisp-msg-protocol:ros-message)
  ((get_param
    :reader get_param
    :initarg :get_param
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetLocParam-request (<GetLocParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_localization-srv:<GetLocParam-request> is deprecated: use mcl_localization-srv:GetLocParam-request instead.")))

(cl:ensure-generic-function 'get_param-val :lambda-list '(m))
(cl:defmethod get_param-val ((m <GetLocParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-srv:get_param-val is deprecated.  Use mcl_localization-srv:get_param instead.")
  (get_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocParam-request>) ostream)
  "Serializes a message object of type '<GetLocParam-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_param) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocParam-request>) istream)
  "Deserializes a message object of type '<GetLocParam-request>"
    (cl:setf (cl:slot-value msg 'get_param) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocParam-request>)))
  "Returns string type for a service object of type '<GetLocParam-request>"
  "mcl_localization/GetLocParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocParam-request)))
  "Returns string type for a service object of type 'GetLocParam-request"
  "mcl_localization/GetLocParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocParam-request>)))
  "Returns md5sum for a message object of type '<GetLocParam-request>"
  "3909651f1afc562f3108e47d85479fbe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocParam-request)))
  "Returns md5sum for a message object of type 'GetLocParam-request"
  "3909651f1afc562f3108e47d85479fbe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocParam-request>)))
  "Returns full string definition for message of type '<GetLocParam-request>"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocParam-request)))
  "Returns full string definition for message of type 'GetLocParam-request"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocParam-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocParam-request
    (cl:cons ':get_param (get_param msg))
))
;//! \htmlinclude GetLocParam-response.msg.html

(cl:defclass <GetLocParam-response> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type mcl_localization-msg:localization_param
    :initform (cl:make-instance 'mcl_localization-msg:localization_param)))
)

(cl:defclass GetLocParam-response (<GetLocParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_localization-srv:<GetLocParam-response> is deprecated: use mcl_localization-srv:GetLocParam-response instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetLocParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-srv:parameters-val is deprecated.  Use mcl_localization-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocParam-response>) ostream)
  "Serializes a message object of type '<GetLocParam-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocParam-response>) istream)
  "Deserializes a message object of type '<GetLocParam-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocParam-response>)))
  "Returns string type for a service object of type '<GetLocParam-response>"
  "mcl_localization/GetLocParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocParam-response)))
  "Returns string type for a service object of type 'GetLocParam-response"
  "mcl_localization/GetLocParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocParam-response>)))
  "Returns md5sum for a message object of type '<GetLocParam-response>"
  "3909651f1afc562f3108e47d85479fbe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocParam-response)))
  "Returns md5sum for a message object of type 'GetLocParam-response"
  "3909651f1afc562f3108e47d85479fbe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocParam-response>)))
  "Returns full string definition for message of type '<GetLocParam-response>"
  (cl:format cl:nil "localization_param    parameters~%~%~%================================================================================~%MSG: mcl_localization/localization_param~%float64 mcl_afast~%float64 mcl_aslow~%float64 mcl_variance~%float64 mgauss_x~%float64 mgauss_y~%float64 mgauss_w~%float64 vgauss_x~%float64 vgauss_y~%float64 mcl_wcmps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocParam-response)))
  "Returns full string definition for message of type 'GetLocParam-response"
  (cl:format cl:nil "localization_param    parameters~%~%~%================================================================================~%MSG: mcl_localization/localization_param~%float64 mcl_afast~%float64 mcl_aslow~%float64 mcl_variance~%float64 mgauss_x~%float64 mgauss_y~%float64 mgauss_w~%float64 vgauss_x~%float64 vgauss_y~%float64 mcl_wcmps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocParam-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocParam-response
    (cl:cons ':parameters (parameters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLocParam)))
  'GetLocParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLocParam)))
  'GetLocParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocParam)))
  "Returns string type for a service object of type '<GetLocParam>"
  "mcl_localization/GetLocParam")