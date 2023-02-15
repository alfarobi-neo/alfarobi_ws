; Auto-generated. Do not edit!


(cl:in-package quintic_walk_msgs-srv)


;//! \htmlinclude GetWalkingParam-request.msg.html

(cl:defclass <GetWalkingParam-request> (roslisp-msg-protocol:ros-message)
  ((get_param
    :reader get_param
    :initarg :get_param
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetWalkingParam-request (<GetWalkingParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWalkingParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWalkingParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quintic_walk_msgs-srv:<GetWalkingParam-request> is deprecated: use quintic_walk_msgs-srv:GetWalkingParam-request instead.")))

(cl:ensure-generic-function 'get_param-val :lambda-list '(m))
(cl:defmethod get_param-val ((m <GetWalkingParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-srv:get_param-val is deprecated.  Use quintic_walk_msgs-srv:get_param instead.")
  (get_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWalkingParam-request>) ostream)
  "Serializes a message object of type '<GetWalkingParam-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_param) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWalkingParam-request>) istream)
  "Deserializes a message object of type '<GetWalkingParam-request>"
    (cl:setf (cl:slot-value msg 'get_param) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWalkingParam-request>)))
  "Returns string type for a service object of type '<GetWalkingParam-request>"
  "quintic_walk_msgs/GetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingParam-request)))
  "Returns string type for a service object of type 'GetWalkingParam-request"
  "quintic_walk_msgs/GetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWalkingParam-request>)))
  "Returns md5sum for a message object of type '<GetWalkingParam-request>"
  "cc37d4e8b602e9bf4bc31537e92d2dca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWalkingParam-request)))
  "Returns md5sum for a message object of type 'GetWalkingParam-request"
  "cc37d4e8b602e9bf4bc31537e92d2dca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWalkingParam-request>)))
  "Returns full string definition for message of type '<GetWalkingParam-request>"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWalkingParam-request)))
  "Returns full string definition for message of type 'GetWalkingParam-request"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWalkingParam-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWalkingParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWalkingParam-request
    (cl:cons ':get_param (get_param msg))
))
;//! \htmlinclude GetWalkingParam-response.msg.html

(cl:defclass <GetWalkingParam-response> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type quintic_walk_msgs-msg:WalkingParam
    :initform (cl:make-instance 'quintic_walk_msgs-msg:WalkingParam)))
)

(cl:defclass GetWalkingParam-response (<GetWalkingParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWalkingParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWalkingParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quintic_walk_msgs-srv:<GetWalkingParam-response> is deprecated: use quintic_walk_msgs-srv:GetWalkingParam-response instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetWalkingParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-srv:parameters-val is deprecated.  Use quintic_walk_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWalkingParam-response>) ostream)
  "Serializes a message object of type '<GetWalkingParam-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWalkingParam-response>) istream)
  "Deserializes a message object of type '<GetWalkingParam-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWalkingParam-response>)))
  "Returns string type for a service object of type '<GetWalkingParam-response>"
  "quintic_walk_msgs/GetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingParam-response)))
  "Returns string type for a service object of type 'GetWalkingParam-response"
  "quintic_walk_msgs/GetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWalkingParam-response>)))
  "Returns md5sum for a message object of type '<GetWalkingParam-response>"
  "cc37d4e8b602e9bf4bc31537e92d2dca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWalkingParam-response)))
  "Returns md5sum for a message object of type 'GetWalkingParam-response"
  "cc37d4e8b602e9bf4bc31537e92d2dca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWalkingParam-response>)))
  "Returns full string definition for message of type '<GetWalkingParam-response>"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: quintic_walk_msgs/WalkingParam~%float32 freq~%float32 doubleSupportRatio~%float32 footDistance~%float32 footRise~%float32 footPutDownZOffset~%float32 footPutDownPhase~%float32 footApexPhase~%float32 footOvershootRatio~%float32 footOvershootPhase~%float32 trunkHeight~%float32 trunkPitch~%float32 trunkPhase~%float32 trunkXOffset~%float32 trunkYOffset~%float32 trunkSwing~%float32 trunkPause~%float32 trunkXOffsetPCoefForward~%float32 trunkXOffsetPCoefTurn~%float32 trunkPitchPCoefForward~%float32 trunkPitchPCoefTurn~%bool trunkYOnlyInDoubleSupport~%~%float32 XMove~%float32 YMove~%float32 ZMove~%string mode~%bool tuning~%~%float32 D_ANKLE_P_qw~%float32 D_KNEE_qw~%float32 D_HIP_P_qw~%~%~%float32 KP_P_qw~%float32 KD_P_qw~%float32 KI_P_qw~%~%~%~%float32 ShoulderGain_qw~%float32 setpointPitch~%float32 pitch_error_tol~%~%float32 KP_X_qw~%float32 KD_X_qw~%float32 KI_X_qw~%~%~%float32 Angle_0~%float32 Angle_1~%float32 Angle_2~%float32 Angle_3~%float32 Angle_4~%~%float32 KD_0~%float32 KD_1~%float32 KD_2~%float32 KD_3~%float32 KD_4~%~%float32 Gyro_0~%float32 Gyro_1~%float32 Gyro_2~%float32 Gyro_3~%float32 Gyro_4~%~%float32 KP_0~%float32 KP_1~%float32 KP_2~%float32 KP_3~%float32 KP_4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWalkingParam-response)))
  "Returns full string definition for message of type 'GetWalkingParam-response"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: quintic_walk_msgs/WalkingParam~%float32 freq~%float32 doubleSupportRatio~%float32 footDistance~%float32 footRise~%float32 footPutDownZOffset~%float32 footPutDownPhase~%float32 footApexPhase~%float32 footOvershootRatio~%float32 footOvershootPhase~%float32 trunkHeight~%float32 trunkPitch~%float32 trunkPhase~%float32 trunkXOffset~%float32 trunkYOffset~%float32 trunkSwing~%float32 trunkPause~%float32 trunkXOffsetPCoefForward~%float32 trunkXOffsetPCoefTurn~%float32 trunkPitchPCoefForward~%float32 trunkPitchPCoefTurn~%bool trunkYOnlyInDoubleSupport~%~%float32 XMove~%float32 YMove~%float32 ZMove~%string mode~%bool tuning~%~%float32 D_ANKLE_P_qw~%float32 D_KNEE_qw~%float32 D_HIP_P_qw~%~%~%float32 KP_P_qw~%float32 KD_P_qw~%float32 KI_P_qw~%~%~%~%float32 ShoulderGain_qw~%float32 setpointPitch~%float32 pitch_error_tol~%~%float32 KP_X_qw~%float32 KD_X_qw~%float32 KI_X_qw~%~%~%float32 Angle_0~%float32 Angle_1~%float32 Angle_2~%float32 Angle_3~%float32 Angle_4~%~%float32 KD_0~%float32 KD_1~%float32 KD_2~%float32 KD_3~%float32 KD_4~%~%float32 Gyro_0~%float32 Gyro_1~%float32 Gyro_2~%float32 Gyro_3~%float32 Gyro_4~%~%float32 KP_0~%float32 KP_1~%float32 KP_2~%float32 KP_3~%float32 KP_4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWalkingParam-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWalkingParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWalkingParam-response
    (cl:cons ':parameters (parameters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWalkingParam)))
  'GetWalkingParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWalkingParam)))
  'GetWalkingParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingParam)))
  "Returns string type for a service object of type '<GetWalkingParam>"
  "quintic_walk_msgs/GetWalkingParam")