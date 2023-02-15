; Auto-generated. Do not edit!


(cl:in-package capture_step_module_msgs-srv)


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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capture_step_module_msgs-srv:<GetWalkingParam-request> is deprecated: use capture_step_module_msgs-srv:GetWalkingParam-request instead.")))

(cl:ensure-generic-function 'get_param-val :lambda-list '(m))
(cl:defmethod get_param-val ((m <GetWalkingParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-srv:get_param-val is deprecated.  Use capture_step_module_msgs-srv:get_param instead.")
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
  "capture_step_module_msgs/GetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingParam-request)))
  "Returns string type for a service object of type 'GetWalkingParam-request"
  "capture_step_module_msgs/GetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWalkingParam-request>)))
  "Returns md5sum for a message object of type '<GetWalkingParam-request>"
  "33e093e1a36ede369994f83338945659")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWalkingParam-request)))
  "Returns md5sum for a message object of type 'GetWalkingParam-request"
  "33e093e1a36ede369994f83338945659")
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
    :type capture_step_module_msgs-msg:WalkingParam
    :initform (cl:make-instance 'capture_step_module_msgs-msg:WalkingParam)))
)

(cl:defclass GetWalkingParam-response (<GetWalkingParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWalkingParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWalkingParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capture_step_module_msgs-srv:<GetWalkingParam-response> is deprecated: use capture_step_module_msgs-srv:GetWalkingParam-response instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetWalkingParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-srv:parameters-val is deprecated.  Use capture_step_module_msgs-srv:parameters instead.")
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
  "capture_step_module_msgs/GetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingParam-response)))
  "Returns string type for a service object of type 'GetWalkingParam-response"
  "capture_step_module_msgs/GetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWalkingParam-response>)))
  "Returns md5sum for a message object of type '<GetWalkingParam-response>"
  "33e093e1a36ede369994f83338945659")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWalkingParam-response)))
  "Returns md5sum for a message object of type 'GetWalkingParam-response"
  "33e093e1a36ede369994f83338945659")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWalkingParam-response>)))
  "Returns full string definition for message of type '<GetWalkingParam-response>"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: capture_step_module_msgs/WalkingParam~%####### Halt Position #######~%float32 halt_pos_leg_ext~%float32 halt_pos_leg_roll_ext~%float32 halt_pos_leg_pitch_ext~%float32 halt_pos_foot_roll_ext~%float32 halt_pos_foot_pitch_ext~%~%####### Leg Lifting #####~%float32 const_ground_push~%float32 propt_ground_push~%float32 const_step_height~%float32 propt_step_height~%~%########## Leg Swing ########~%float32 swing_start~%float32 swing_stop~%float32 sagittal_swg_fwd~%float32 sagittal_swg_bwd~%float32 lateral_swg~%float32 lateral_swg_offset~%float32 trng_lateral_swg_offset~%float32 rotational_swg~%float32 rotational_swg_offset~%~%########## Lateral Hip Swing ##########~%float32 lateral_hip_swg~%~%########## Leaning ##########~%float32 fwd_lean~%float32 bwd_lean~%float32 fwd_trng_lean~%~%########## Step ##########~%float32 gait_vel_limit~%float32 sagittal_acc~%float32 lateral_acc~%float32 rotational_acc~%float32 const_step_freq~%float32 sagittal_prop_step_freq~%float32 lateral_prop_step_freq~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 angle_move_amplitude~%bool halt_position~%bool leg_lifting~%bool leg_swing~%bool lateral_swing~%bool leaning~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWalkingParam-response)))
  "Returns full string definition for message of type 'GetWalkingParam-response"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: capture_step_module_msgs/WalkingParam~%####### Halt Position #######~%float32 halt_pos_leg_ext~%float32 halt_pos_leg_roll_ext~%float32 halt_pos_leg_pitch_ext~%float32 halt_pos_foot_roll_ext~%float32 halt_pos_foot_pitch_ext~%~%####### Leg Lifting #####~%float32 const_ground_push~%float32 propt_ground_push~%float32 const_step_height~%float32 propt_step_height~%~%########## Leg Swing ########~%float32 swing_start~%float32 swing_stop~%float32 sagittal_swg_fwd~%float32 sagittal_swg_bwd~%float32 lateral_swg~%float32 lateral_swg_offset~%float32 trng_lateral_swg_offset~%float32 rotational_swg~%float32 rotational_swg_offset~%~%########## Lateral Hip Swing ##########~%float32 lateral_hip_swg~%~%########## Leaning ##########~%float32 fwd_lean~%float32 bwd_lean~%float32 fwd_trng_lean~%~%########## Step ##########~%float32 gait_vel_limit~%float32 sagittal_acc~%float32 lateral_acc~%float32 rotational_acc~%float32 const_step_freq~%float32 sagittal_prop_step_freq~%float32 lateral_prop_step_freq~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 angle_move_amplitude~%bool halt_position~%bool leg_lifting~%bool leg_swing~%bool lateral_swing~%bool leaning~%~%~%~%"))
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
  "capture_step_module_msgs/GetWalkingParam")