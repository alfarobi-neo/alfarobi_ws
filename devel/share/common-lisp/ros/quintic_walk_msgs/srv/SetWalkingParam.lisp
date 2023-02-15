; Auto-generated. Do not edit!


(cl:in-package quintic_walk_msgs-srv)


;//! \htmlinclude SetWalkingParam-request.msg.html

(cl:defclass <SetWalkingParam-request> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type quintic_walk_msgs-msg:WalkingParam
    :initform (cl:make-instance 'quintic_walk_msgs-msg:WalkingParam)))
)

(cl:defclass SetWalkingParam-request (<SetWalkingParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWalkingParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWalkingParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quintic_walk_msgs-srv:<SetWalkingParam-request> is deprecated: use quintic_walk_msgs-srv:SetWalkingParam-request instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <SetWalkingParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-srv:parameters-val is deprecated.  Use quintic_walk_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWalkingParam-request>) ostream)
  "Serializes a message object of type '<SetWalkingParam-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWalkingParam-request>) istream)
  "Deserializes a message object of type '<SetWalkingParam-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWalkingParam-request>)))
  "Returns string type for a service object of type '<SetWalkingParam-request>"
  "quintic_walk_msgs/SetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkingParam-request)))
  "Returns string type for a service object of type 'SetWalkingParam-request"
  "quintic_walk_msgs/SetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWalkingParam-request>)))
  "Returns md5sum for a message object of type '<SetWalkingParam-request>"
  "a9df0fee7c93a59d59f41082ca94adfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWalkingParam-request)))
  "Returns md5sum for a message object of type 'SetWalkingParam-request"
  "a9df0fee7c93a59d59f41082ca94adfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWalkingParam-request>)))
  "Returns full string definition for message of type '<SetWalkingParam-request>"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: quintic_walk_msgs/WalkingParam~%float32 freq~%float32 doubleSupportRatio~%float32 footDistance~%float32 footRise~%float32 footPutDownZOffset~%float32 footPutDownPhase~%float32 footApexPhase~%float32 footOvershootRatio~%float32 footOvershootPhase~%float32 trunkHeight~%float32 trunkPitch~%float32 trunkPhase~%float32 trunkXOffset~%float32 trunkYOffset~%float32 trunkSwing~%float32 trunkPause~%float32 trunkXOffsetPCoefForward~%float32 trunkXOffsetPCoefTurn~%float32 trunkPitchPCoefForward~%float32 trunkPitchPCoefTurn~%bool trunkYOnlyInDoubleSupport~%~%float32 XMove~%float32 YMove~%float32 ZMove~%string mode~%bool tuning~%~%float32 D_ANKLE_P_qw~%float32 D_KNEE_qw~%float32 D_HIP_P_qw~%~%~%float32 KP_P_qw~%float32 KD_P_qw~%float32 KI_P_qw~%~%~%~%float32 ShoulderGain_qw~%float32 setpointPitch~%float32 pitch_error_tol~%~%float32 KP_X_qw~%float32 KD_X_qw~%float32 KI_X_qw~%~%~%float32 Angle_0~%float32 Angle_1~%float32 Angle_2~%float32 Angle_3~%float32 Angle_4~%~%float32 KD_0~%float32 KD_1~%float32 KD_2~%float32 KD_3~%float32 KD_4~%~%float32 Gyro_0~%float32 Gyro_1~%float32 Gyro_2~%float32 Gyro_3~%float32 Gyro_4~%~%float32 KP_0~%float32 KP_1~%float32 KP_2~%float32 KP_3~%float32 KP_4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWalkingParam-request)))
  "Returns full string definition for message of type 'SetWalkingParam-request"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: quintic_walk_msgs/WalkingParam~%float32 freq~%float32 doubleSupportRatio~%float32 footDistance~%float32 footRise~%float32 footPutDownZOffset~%float32 footPutDownPhase~%float32 footApexPhase~%float32 footOvershootRatio~%float32 footOvershootPhase~%float32 trunkHeight~%float32 trunkPitch~%float32 trunkPhase~%float32 trunkXOffset~%float32 trunkYOffset~%float32 trunkSwing~%float32 trunkPause~%float32 trunkXOffsetPCoefForward~%float32 trunkXOffsetPCoefTurn~%float32 trunkPitchPCoefForward~%float32 trunkPitchPCoefTurn~%bool trunkYOnlyInDoubleSupport~%~%float32 XMove~%float32 YMove~%float32 ZMove~%string mode~%bool tuning~%~%float32 D_ANKLE_P_qw~%float32 D_KNEE_qw~%float32 D_HIP_P_qw~%~%~%float32 KP_P_qw~%float32 KD_P_qw~%float32 KI_P_qw~%~%~%~%float32 ShoulderGain_qw~%float32 setpointPitch~%float32 pitch_error_tol~%~%float32 KP_X_qw~%float32 KD_X_qw~%float32 KI_X_qw~%~%~%float32 Angle_0~%float32 Angle_1~%float32 Angle_2~%float32 Angle_3~%float32 Angle_4~%~%float32 KD_0~%float32 KD_1~%float32 KD_2~%float32 KD_3~%float32 KD_4~%~%float32 Gyro_0~%float32 Gyro_1~%float32 Gyro_2~%float32 Gyro_3~%float32 Gyro_4~%~%float32 KP_0~%float32 KP_1~%float32 KP_2~%float32 KP_3~%float32 KP_4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWalkingParam-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWalkingParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWalkingParam-request
    (cl:cons ':parameters (parameters msg))
))
;//! \htmlinclude SetWalkingParam-response.msg.html

(cl:defclass <SetWalkingParam-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetWalkingParam-response (<SetWalkingParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWalkingParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWalkingParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quintic_walk_msgs-srv:<SetWalkingParam-response> is deprecated: use quintic_walk_msgs-srv:SetWalkingParam-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetWalkingParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-srv:result-val is deprecated.  Use quintic_walk_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWalkingParam-response>) ostream)
  "Serializes a message object of type '<SetWalkingParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWalkingParam-response>) istream)
  "Deserializes a message object of type '<SetWalkingParam-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWalkingParam-response>)))
  "Returns string type for a service object of type '<SetWalkingParam-response>"
  "quintic_walk_msgs/SetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkingParam-response)))
  "Returns string type for a service object of type 'SetWalkingParam-response"
  "quintic_walk_msgs/SetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWalkingParam-response>)))
  "Returns md5sum for a message object of type '<SetWalkingParam-response>"
  "a9df0fee7c93a59d59f41082ca94adfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWalkingParam-response)))
  "Returns md5sum for a message object of type 'SetWalkingParam-response"
  "a9df0fee7c93a59d59f41082ca94adfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWalkingParam-response>)))
  "Returns full string definition for message of type '<SetWalkingParam-response>"
  (cl:format cl:nil "bool            result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWalkingParam-response)))
  "Returns full string definition for message of type 'SetWalkingParam-response"
  (cl:format cl:nil "bool            result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWalkingParam-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWalkingParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWalkingParam-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWalkingParam)))
  'SetWalkingParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWalkingParam)))
  'SetWalkingParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkingParam)))
  "Returns string type for a service object of type '<SetWalkingParam>"
  "quintic_walk_msgs/SetWalkingParam")