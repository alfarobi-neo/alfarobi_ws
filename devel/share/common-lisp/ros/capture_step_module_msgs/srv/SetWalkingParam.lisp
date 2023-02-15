; Auto-generated. Do not edit!


(cl:in-package capture_step_module_msgs-srv)


;//! \htmlinclude SetWalkingParam-request.msg.html

(cl:defclass <SetWalkingParam-request> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type capture_step_module_msgs-msg:WalkingParam
    :initform (cl:make-instance 'capture_step_module_msgs-msg:WalkingParam)))
)

(cl:defclass SetWalkingParam-request (<SetWalkingParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWalkingParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWalkingParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capture_step_module_msgs-srv:<SetWalkingParam-request> is deprecated: use capture_step_module_msgs-srv:SetWalkingParam-request instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <SetWalkingParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-srv:parameters-val is deprecated.  Use capture_step_module_msgs-srv:parameters instead.")
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
  "capture_step_module_msgs/SetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkingParam-request)))
  "Returns string type for a service object of type 'SetWalkingParam-request"
  "capture_step_module_msgs/SetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWalkingParam-request>)))
  "Returns md5sum for a message object of type '<SetWalkingParam-request>"
  "ab5f117f502c3c3be9354e0bbdf4a4ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWalkingParam-request)))
  "Returns md5sum for a message object of type 'SetWalkingParam-request"
  "ab5f117f502c3c3be9354e0bbdf4a4ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWalkingParam-request>)))
  "Returns full string definition for message of type '<SetWalkingParam-request>"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: capture_step_module_msgs/WalkingParam~%####### Halt Position #######~%float32 halt_pos_leg_ext~%float32 halt_pos_leg_roll_ext~%float32 halt_pos_leg_pitch_ext~%float32 halt_pos_foot_roll_ext~%float32 halt_pos_foot_pitch_ext~%~%####### Leg Lifting #####~%float32 const_ground_push~%float32 propt_ground_push~%float32 const_step_height~%float32 propt_step_height~%~%########## Leg Swing ########~%float32 swing_start~%float32 swing_stop~%float32 sagittal_swg_fwd~%float32 sagittal_swg_bwd~%float32 lateral_swg~%float32 lateral_swg_offset~%float32 trng_lateral_swg_offset~%float32 rotational_swg~%float32 rotational_swg_offset~%~%########## Lateral Hip Swing ##########~%float32 lateral_hip_swg~%~%########## Leaning ##########~%float32 fwd_lean~%float32 bwd_lean~%float32 fwd_trng_lean~%~%########## Step ##########~%float32 gait_vel_limit~%float32 sagittal_acc~%float32 lateral_acc~%float32 rotational_acc~%float32 const_step_freq~%float32 sagittal_prop_step_freq~%float32 lateral_prop_step_freq~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 angle_move_amplitude~%bool halt_position~%bool leg_lifting~%bool leg_swing~%bool lateral_swing~%bool leaning~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWalkingParam-request)))
  "Returns full string definition for message of type 'SetWalkingParam-request"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: capture_step_module_msgs/WalkingParam~%####### Halt Position #######~%float32 halt_pos_leg_ext~%float32 halt_pos_leg_roll_ext~%float32 halt_pos_leg_pitch_ext~%float32 halt_pos_foot_roll_ext~%float32 halt_pos_foot_pitch_ext~%~%####### Leg Lifting #####~%float32 const_ground_push~%float32 propt_ground_push~%float32 const_step_height~%float32 propt_step_height~%~%########## Leg Swing ########~%float32 swing_start~%float32 swing_stop~%float32 sagittal_swg_fwd~%float32 sagittal_swg_bwd~%float32 lateral_swg~%float32 lateral_swg_offset~%float32 trng_lateral_swg_offset~%float32 rotational_swg~%float32 rotational_swg_offset~%~%########## Lateral Hip Swing ##########~%float32 lateral_hip_swg~%~%########## Leaning ##########~%float32 fwd_lean~%float32 bwd_lean~%float32 fwd_trng_lean~%~%########## Step ##########~%float32 gait_vel_limit~%float32 sagittal_acc~%float32 lateral_acc~%float32 rotational_acc~%float32 const_step_freq~%float32 sagittal_prop_step_freq~%float32 lateral_prop_step_freq~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 angle_move_amplitude~%bool halt_position~%bool leg_lifting~%bool leg_swing~%bool lateral_swing~%bool leaning~%~%~%~%"))
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capture_step_module_msgs-srv:<SetWalkingParam-response> is deprecated: use capture_step_module_msgs-srv:SetWalkingParam-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetWalkingParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-srv:result-val is deprecated.  Use capture_step_module_msgs-srv:result instead.")
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
  "capture_step_module_msgs/SetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkingParam-response)))
  "Returns string type for a service object of type 'SetWalkingParam-response"
  "capture_step_module_msgs/SetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWalkingParam-response>)))
  "Returns md5sum for a message object of type '<SetWalkingParam-response>"
  "ab5f117f502c3c3be9354e0bbdf4a4ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWalkingParam-response)))
  "Returns md5sum for a message object of type 'SetWalkingParam-response"
  "ab5f117f502c3c3be9354e0bbdf4a4ea")
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
  "capture_step_module_msgs/SetWalkingParam")