; Auto-generated. Do not edit!


(cl:in-package dnn_detector-srv)


;//! \htmlinclude SetParameters-request.msg.html

(cl:defclass <SetParameters-request> (roslisp-msg-protocol:ros-message)
  ((params
    :reader params
    :initarg :params
    :type dnn_detector-msg:DnnDetectorParams
    :initform (cl:make-instance 'dnn_detector-msg:DnnDetectorParams)))
)

(cl:defclass SetParameters-request (<SetParameters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParameters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParameters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnn_detector-srv:<SetParameters-request> is deprecated: use dnn_detector-srv:SetParameters-request instead.")))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <SetParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_detector-srv:params-val is deprecated.  Use dnn_detector-srv:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParameters-request>) ostream)
  "Serializes a message object of type '<SetParameters-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParameters-request>) istream)
  "Deserializes a message object of type '<SetParameters-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParameters-request>)))
  "Returns string type for a service object of type '<SetParameters-request>"
  "dnn_detector/SetParametersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParameters-request)))
  "Returns string type for a service object of type 'SetParameters-request"
  "dnn_detector/SetParametersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParameters-request>)))
  "Returns md5sum for a message object of type '<SetParameters-request>"
  "6ef3ab2b457693e716fc437aa9628429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParameters-request)))
  "Returns md5sum for a message object of type 'SetParameters-request"
  "6ef3ab2b457693e716fc437aa9628429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParameters-request>)))
  "Returns full string definition for message of type '<SetParameters-request>"
  (cl:format cl:nil "DnnDetectorParams  params~%~%================================================================================~%MSG: dnn_detector/DnnDetectorParams~%# This represents the parameters of ball_detector~%~%uint32  scaling~%float32 confidence~%float32 mean_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParameters-request)))
  "Returns full string definition for message of type 'SetParameters-request"
  (cl:format cl:nil "DnnDetectorParams  params~%~%================================================================================~%MSG: dnn_detector/DnnDetectorParams~%# This represents the parameters of ball_detector~%~%uint32  scaling~%float32 confidence~%float32 mean_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParameters-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParameters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParameters-request
    (cl:cons ':params (params msg))
))
;//! \htmlinclude SetParameters-response.msg.html

(cl:defclass <SetParameters-response> (roslisp-msg-protocol:ros-message)
  ((returns
    :reader returns
    :initarg :returns
    :type dnn_detector-msg:DnnDetectorParams
    :initform (cl:make-instance 'dnn_detector-msg:DnnDetectorParams)))
)

(cl:defclass SetParameters-response (<SetParameters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParameters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParameters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnn_detector-srv:<SetParameters-response> is deprecated: use dnn_detector-srv:SetParameters-response instead.")))

(cl:ensure-generic-function 'returns-val :lambda-list '(m))
(cl:defmethod returns-val ((m <SetParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_detector-srv:returns-val is deprecated.  Use dnn_detector-srv:returns instead.")
  (returns m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParameters-response>) ostream)
  "Serializes a message object of type '<SetParameters-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'returns) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParameters-response>) istream)
  "Deserializes a message object of type '<SetParameters-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'returns) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParameters-response>)))
  "Returns string type for a service object of type '<SetParameters-response>"
  "dnn_detector/SetParametersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParameters-response)))
  "Returns string type for a service object of type 'SetParameters-response"
  "dnn_detector/SetParametersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParameters-response>)))
  "Returns md5sum for a message object of type '<SetParameters-response>"
  "6ef3ab2b457693e716fc437aa9628429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParameters-response)))
  "Returns md5sum for a message object of type 'SetParameters-response"
  "6ef3ab2b457693e716fc437aa9628429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParameters-response>)))
  "Returns full string definition for message of type '<SetParameters-response>"
  (cl:format cl:nil "DnnDetectorParams  returns~%~%~%================================================================================~%MSG: dnn_detector/DnnDetectorParams~%# This represents the parameters of ball_detector~%~%uint32  scaling~%float32 confidence~%float32 mean_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParameters-response)))
  "Returns full string definition for message of type 'SetParameters-response"
  (cl:format cl:nil "DnnDetectorParams  returns~%~%~%================================================================================~%MSG: dnn_detector/DnnDetectorParams~%# This represents the parameters of ball_detector~%~%uint32  scaling~%float32 confidence~%float32 mean_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParameters-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'returns))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParameters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParameters-response
    (cl:cons ':returns (returns msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetParameters)))
  'SetParameters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetParameters)))
  'SetParameters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParameters)))
  "Returns string type for a service object of type '<SetParameters>"
  "dnn_detector/SetParameters")