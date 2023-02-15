; Auto-generated. Do not edit!


(cl:in-package capture_step_module_msgs-msg)


;//! \htmlinclude WalkingParam.msg.html

(cl:defclass <WalkingParam> (roslisp-msg-protocol:ros-message)
  ((halt_pos_leg_ext
    :reader halt_pos_leg_ext
    :initarg :halt_pos_leg_ext
    :type cl:float
    :initform 0.0)
   (halt_pos_leg_roll_ext
    :reader halt_pos_leg_roll_ext
    :initarg :halt_pos_leg_roll_ext
    :type cl:float
    :initform 0.0)
   (halt_pos_leg_pitch_ext
    :reader halt_pos_leg_pitch_ext
    :initarg :halt_pos_leg_pitch_ext
    :type cl:float
    :initform 0.0)
   (halt_pos_foot_roll_ext
    :reader halt_pos_foot_roll_ext
    :initarg :halt_pos_foot_roll_ext
    :type cl:float
    :initform 0.0)
   (halt_pos_foot_pitch_ext
    :reader halt_pos_foot_pitch_ext
    :initarg :halt_pos_foot_pitch_ext
    :type cl:float
    :initform 0.0)
   (const_ground_push
    :reader const_ground_push
    :initarg :const_ground_push
    :type cl:float
    :initform 0.0)
   (propt_ground_push
    :reader propt_ground_push
    :initarg :propt_ground_push
    :type cl:float
    :initform 0.0)
   (const_step_height
    :reader const_step_height
    :initarg :const_step_height
    :type cl:float
    :initform 0.0)
   (propt_step_height
    :reader propt_step_height
    :initarg :propt_step_height
    :type cl:float
    :initform 0.0)
   (swing_start
    :reader swing_start
    :initarg :swing_start
    :type cl:float
    :initform 0.0)
   (swing_stop
    :reader swing_stop
    :initarg :swing_stop
    :type cl:float
    :initform 0.0)
   (sagittal_swg_fwd
    :reader sagittal_swg_fwd
    :initarg :sagittal_swg_fwd
    :type cl:float
    :initform 0.0)
   (sagittal_swg_bwd
    :reader sagittal_swg_bwd
    :initarg :sagittal_swg_bwd
    :type cl:float
    :initform 0.0)
   (lateral_swg
    :reader lateral_swg
    :initarg :lateral_swg
    :type cl:float
    :initform 0.0)
   (lateral_swg_offset
    :reader lateral_swg_offset
    :initarg :lateral_swg_offset
    :type cl:float
    :initform 0.0)
   (trng_lateral_swg_offset
    :reader trng_lateral_swg_offset
    :initarg :trng_lateral_swg_offset
    :type cl:float
    :initform 0.0)
   (rotational_swg
    :reader rotational_swg
    :initarg :rotational_swg
    :type cl:float
    :initform 0.0)
   (rotational_swg_offset
    :reader rotational_swg_offset
    :initarg :rotational_swg_offset
    :type cl:float
    :initform 0.0)
   (lateral_hip_swg
    :reader lateral_hip_swg
    :initarg :lateral_hip_swg
    :type cl:float
    :initform 0.0)
   (fwd_lean
    :reader fwd_lean
    :initarg :fwd_lean
    :type cl:float
    :initform 0.0)
   (bwd_lean
    :reader bwd_lean
    :initarg :bwd_lean
    :type cl:float
    :initform 0.0)
   (fwd_trng_lean
    :reader fwd_trng_lean
    :initarg :fwd_trng_lean
    :type cl:float
    :initform 0.0)
   (gait_vel_limit
    :reader gait_vel_limit
    :initarg :gait_vel_limit
    :type cl:float
    :initform 0.0)
   (sagittal_acc
    :reader sagittal_acc
    :initarg :sagittal_acc
    :type cl:float
    :initform 0.0)
   (lateral_acc
    :reader lateral_acc
    :initarg :lateral_acc
    :type cl:float
    :initform 0.0)
   (rotational_acc
    :reader rotational_acc
    :initarg :rotational_acc
    :type cl:float
    :initform 0.0)
   (const_step_freq
    :reader const_step_freq
    :initarg :const_step_freq
    :type cl:float
    :initform 0.0)
   (sagittal_prop_step_freq
    :reader sagittal_prop_step_freq
    :initarg :sagittal_prop_step_freq
    :type cl:float
    :initform 0.0)
   (lateral_prop_step_freq
    :reader lateral_prop_step_freq
    :initarg :lateral_prop_step_freq
    :type cl:float
    :initform 0.0)
   (x_move_amplitude
    :reader x_move_amplitude
    :initarg :x_move_amplitude
    :type cl:float
    :initform 0.0)
   (y_move_amplitude
    :reader y_move_amplitude
    :initarg :y_move_amplitude
    :type cl:float
    :initform 0.0)
   (angle_move_amplitude
    :reader angle_move_amplitude
    :initarg :angle_move_amplitude
    :type cl:float
    :initform 0.0)
   (halt_position
    :reader halt_position
    :initarg :halt_position
    :type cl:boolean
    :initform cl:nil)
   (leg_lifting
    :reader leg_lifting
    :initarg :leg_lifting
    :type cl:boolean
    :initform cl:nil)
   (leg_swing
    :reader leg_swing
    :initarg :leg_swing
    :type cl:boolean
    :initform cl:nil)
   (lateral_swing
    :reader lateral_swing
    :initarg :lateral_swing
    :type cl:boolean
    :initform cl:nil)
   (leaning
    :reader leaning
    :initarg :leaning
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WalkingParam (<WalkingParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkingParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkingParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capture_step_module_msgs-msg:<WalkingParam> is deprecated: use capture_step_module_msgs-msg:WalkingParam instead.")))

(cl:ensure-generic-function 'halt_pos_leg_ext-val :lambda-list '(m))
(cl:defmethod halt_pos_leg_ext-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:halt_pos_leg_ext-val is deprecated.  Use capture_step_module_msgs-msg:halt_pos_leg_ext instead.")
  (halt_pos_leg_ext m))

(cl:ensure-generic-function 'halt_pos_leg_roll_ext-val :lambda-list '(m))
(cl:defmethod halt_pos_leg_roll_ext-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:halt_pos_leg_roll_ext-val is deprecated.  Use capture_step_module_msgs-msg:halt_pos_leg_roll_ext instead.")
  (halt_pos_leg_roll_ext m))

(cl:ensure-generic-function 'halt_pos_leg_pitch_ext-val :lambda-list '(m))
(cl:defmethod halt_pos_leg_pitch_ext-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:halt_pos_leg_pitch_ext-val is deprecated.  Use capture_step_module_msgs-msg:halt_pos_leg_pitch_ext instead.")
  (halt_pos_leg_pitch_ext m))

(cl:ensure-generic-function 'halt_pos_foot_roll_ext-val :lambda-list '(m))
(cl:defmethod halt_pos_foot_roll_ext-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:halt_pos_foot_roll_ext-val is deprecated.  Use capture_step_module_msgs-msg:halt_pos_foot_roll_ext instead.")
  (halt_pos_foot_roll_ext m))

(cl:ensure-generic-function 'halt_pos_foot_pitch_ext-val :lambda-list '(m))
(cl:defmethod halt_pos_foot_pitch_ext-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:halt_pos_foot_pitch_ext-val is deprecated.  Use capture_step_module_msgs-msg:halt_pos_foot_pitch_ext instead.")
  (halt_pos_foot_pitch_ext m))

(cl:ensure-generic-function 'const_ground_push-val :lambda-list '(m))
(cl:defmethod const_ground_push-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:const_ground_push-val is deprecated.  Use capture_step_module_msgs-msg:const_ground_push instead.")
  (const_ground_push m))

(cl:ensure-generic-function 'propt_ground_push-val :lambda-list '(m))
(cl:defmethod propt_ground_push-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:propt_ground_push-val is deprecated.  Use capture_step_module_msgs-msg:propt_ground_push instead.")
  (propt_ground_push m))

(cl:ensure-generic-function 'const_step_height-val :lambda-list '(m))
(cl:defmethod const_step_height-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:const_step_height-val is deprecated.  Use capture_step_module_msgs-msg:const_step_height instead.")
  (const_step_height m))

(cl:ensure-generic-function 'propt_step_height-val :lambda-list '(m))
(cl:defmethod propt_step_height-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:propt_step_height-val is deprecated.  Use capture_step_module_msgs-msg:propt_step_height instead.")
  (propt_step_height m))

(cl:ensure-generic-function 'swing_start-val :lambda-list '(m))
(cl:defmethod swing_start-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:swing_start-val is deprecated.  Use capture_step_module_msgs-msg:swing_start instead.")
  (swing_start m))

(cl:ensure-generic-function 'swing_stop-val :lambda-list '(m))
(cl:defmethod swing_stop-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:swing_stop-val is deprecated.  Use capture_step_module_msgs-msg:swing_stop instead.")
  (swing_stop m))

(cl:ensure-generic-function 'sagittal_swg_fwd-val :lambda-list '(m))
(cl:defmethod sagittal_swg_fwd-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:sagittal_swg_fwd-val is deprecated.  Use capture_step_module_msgs-msg:sagittal_swg_fwd instead.")
  (sagittal_swg_fwd m))

(cl:ensure-generic-function 'sagittal_swg_bwd-val :lambda-list '(m))
(cl:defmethod sagittal_swg_bwd-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:sagittal_swg_bwd-val is deprecated.  Use capture_step_module_msgs-msg:sagittal_swg_bwd instead.")
  (sagittal_swg_bwd m))

(cl:ensure-generic-function 'lateral_swg-val :lambda-list '(m))
(cl:defmethod lateral_swg-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:lateral_swg-val is deprecated.  Use capture_step_module_msgs-msg:lateral_swg instead.")
  (lateral_swg m))

(cl:ensure-generic-function 'lateral_swg_offset-val :lambda-list '(m))
(cl:defmethod lateral_swg_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:lateral_swg_offset-val is deprecated.  Use capture_step_module_msgs-msg:lateral_swg_offset instead.")
  (lateral_swg_offset m))

(cl:ensure-generic-function 'trng_lateral_swg_offset-val :lambda-list '(m))
(cl:defmethod trng_lateral_swg_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:trng_lateral_swg_offset-val is deprecated.  Use capture_step_module_msgs-msg:trng_lateral_swg_offset instead.")
  (trng_lateral_swg_offset m))

(cl:ensure-generic-function 'rotational_swg-val :lambda-list '(m))
(cl:defmethod rotational_swg-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:rotational_swg-val is deprecated.  Use capture_step_module_msgs-msg:rotational_swg instead.")
  (rotational_swg m))

(cl:ensure-generic-function 'rotational_swg_offset-val :lambda-list '(m))
(cl:defmethod rotational_swg_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:rotational_swg_offset-val is deprecated.  Use capture_step_module_msgs-msg:rotational_swg_offset instead.")
  (rotational_swg_offset m))

(cl:ensure-generic-function 'lateral_hip_swg-val :lambda-list '(m))
(cl:defmethod lateral_hip_swg-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:lateral_hip_swg-val is deprecated.  Use capture_step_module_msgs-msg:lateral_hip_swg instead.")
  (lateral_hip_swg m))

(cl:ensure-generic-function 'fwd_lean-val :lambda-list '(m))
(cl:defmethod fwd_lean-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:fwd_lean-val is deprecated.  Use capture_step_module_msgs-msg:fwd_lean instead.")
  (fwd_lean m))

(cl:ensure-generic-function 'bwd_lean-val :lambda-list '(m))
(cl:defmethod bwd_lean-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:bwd_lean-val is deprecated.  Use capture_step_module_msgs-msg:bwd_lean instead.")
  (bwd_lean m))

(cl:ensure-generic-function 'fwd_trng_lean-val :lambda-list '(m))
(cl:defmethod fwd_trng_lean-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:fwd_trng_lean-val is deprecated.  Use capture_step_module_msgs-msg:fwd_trng_lean instead.")
  (fwd_trng_lean m))

(cl:ensure-generic-function 'gait_vel_limit-val :lambda-list '(m))
(cl:defmethod gait_vel_limit-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:gait_vel_limit-val is deprecated.  Use capture_step_module_msgs-msg:gait_vel_limit instead.")
  (gait_vel_limit m))

(cl:ensure-generic-function 'sagittal_acc-val :lambda-list '(m))
(cl:defmethod sagittal_acc-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:sagittal_acc-val is deprecated.  Use capture_step_module_msgs-msg:sagittal_acc instead.")
  (sagittal_acc m))

(cl:ensure-generic-function 'lateral_acc-val :lambda-list '(m))
(cl:defmethod lateral_acc-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:lateral_acc-val is deprecated.  Use capture_step_module_msgs-msg:lateral_acc instead.")
  (lateral_acc m))

(cl:ensure-generic-function 'rotational_acc-val :lambda-list '(m))
(cl:defmethod rotational_acc-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:rotational_acc-val is deprecated.  Use capture_step_module_msgs-msg:rotational_acc instead.")
  (rotational_acc m))

(cl:ensure-generic-function 'const_step_freq-val :lambda-list '(m))
(cl:defmethod const_step_freq-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:const_step_freq-val is deprecated.  Use capture_step_module_msgs-msg:const_step_freq instead.")
  (const_step_freq m))

(cl:ensure-generic-function 'sagittal_prop_step_freq-val :lambda-list '(m))
(cl:defmethod sagittal_prop_step_freq-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:sagittal_prop_step_freq-val is deprecated.  Use capture_step_module_msgs-msg:sagittal_prop_step_freq instead.")
  (sagittal_prop_step_freq m))

(cl:ensure-generic-function 'lateral_prop_step_freq-val :lambda-list '(m))
(cl:defmethod lateral_prop_step_freq-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:lateral_prop_step_freq-val is deprecated.  Use capture_step_module_msgs-msg:lateral_prop_step_freq instead.")
  (lateral_prop_step_freq m))

(cl:ensure-generic-function 'x_move_amplitude-val :lambda-list '(m))
(cl:defmethod x_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:x_move_amplitude-val is deprecated.  Use capture_step_module_msgs-msg:x_move_amplitude instead.")
  (x_move_amplitude m))

(cl:ensure-generic-function 'y_move_amplitude-val :lambda-list '(m))
(cl:defmethod y_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:y_move_amplitude-val is deprecated.  Use capture_step_module_msgs-msg:y_move_amplitude instead.")
  (y_move_amplitude m))

(cl:ensure-generic-function 'angle_move_amplitude-val :lambda-list '(m))
(cl:defmethod angle_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:angle_move_amplitude-val is deprecated.  Use capture_step_module_msgs-msg:angle_move_amplitude instead.")
  (angle_move_amplitude m))

(cl:ensure-generic-function 'halt_position-val :lambda-list '(m))
(cl:defmethod halt_position-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:halt_position-val is deprecated.  Use capture_step_module_msgs-msg:halt_position instead.")
  (halt_position m))

(cl:ensure-generic-function 'leg_lifting-val :lambda-list '(m))
(cl:defmethod leg_lifting-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:leg_lifting-val is deprecated.  Use capture_step_module_msgs-msg:leg_lifting instead.")
  (leg_lifting m))

(cl:ensure-generic-function 'leg_swing-val :lambda-list '(m))
(cl:defmethod leg_swing-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:leg_swing-val is deprecated.  Use capture_step_module_msgs-msg:leg_swing instead.")
  (leg_swing m))

(cl:ensure-generic-function 'lateral_swing-val :lambda-list '(m))
(cl:defmethod lateral_swing-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:lateral_swing-val is deprecated.  Use capture_step_module_msgs-msg:lateral_swing instead.")
  (lateral_swing m))

(cl:ensure-generic-function 'leaning-val :lambda-list '(m))
(cl:defmethod leaning-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capture_step_module_msgs-msg:leaning-val is deprecated.  Use capture_step_module_msgs-msg:leaning instead.")
  (leaning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkingParam>) ostream)
  "Serializes a message object of type '<WalkingParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'halt_pos_leg_ext))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'halt_pos_leg_roll_ext))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'halt_pos_leg_pitch_ext))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'halt_pos_foot_roll_ext))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'halt_pos_foot_pitch_ext))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'const_ground_push))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'propt_ground_push))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'const_step_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'propt_step_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'swing_start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'swing_stop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sagittal_swg_fwd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sagittal_swg_bwd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateral_swg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateral_swg_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trng_lateral_swg_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotational_swg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotational_swg_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateral_hip_swg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fwd_lean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bwd_lean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fwd_trng_lean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gait_vel_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sagittal_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateral_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotational_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'const_step_freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sagittal_prop_step_freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateral_prop_step_freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'halt_position) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'leg_lifting) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'leg_swing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lateral_swing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'leaning) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkingParam>) istream)
  "Deserializes a message object of type '<WalkingParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'halt_pos_leg_ext) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'halt_pos_leg_roll_ext) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'halt_pos_leg_pitch_ext) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'halt_pos_foot_roll_ext) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'halt_pos_foot_pitch_ext) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'const_ground_push) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'propt_ground_push) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'const_step_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'propt_step_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'swing_start) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'swing_stop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sagittal_swg_fwd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sagittal_swg_bwd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_swg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_swg_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trng_lateral_swg_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotational_swg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotational_swg_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_hip_swg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fwd_lean) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bwd_lean) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fwd_trng_lean) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gait_vel_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sagittal_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotational_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'const_step_freq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sagittal_prop_step_freq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_prop_step_freq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'halt_position) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'leg_lifting) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'leg_swing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lateral_swing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'leaning) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkingParam>)))
  "Returns string type for a message object of type '<WalkingParam>"
  "capture_step_module_msgs/WalkingParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkingParam)))
  "Returns string type for a message object of type 'WalkingParam"
  "capture_step_module_msgs/WalkingParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkingParam>)))
  "Returns md5sum for a message object of type '<WalkingParam>"
  "a551969adc87659403547b3d4bb643f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkingParam)))
  "Returns md5sum for a message object of type 'WalkingParam"
  "a551969adc87659403547b3d4bb643f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkingParam>)))
  "Returns full string definition for message of type '<WalkingParam>"
  (cl:format cl:nil "####### Halt Position #######~%float32 halt_pos_leg_ext~%float32 halt_pos_leg_roll_ext~%float32 halt_pos_leg_pitch_ext~%float32 halt_pos_foot_roll_ext~%float32 halt_pos_foot_pitch_ext~%~%####### Leg Lifting #####~%float32 const_ground_push~%float32 propt_ground_push~%float32 const_step_height~%float32 propt_step_height~%~%########## Leg Swing ########~%float32 swing_start~%float32 swing_stop~%float32 sagittal_swg_fwd~%float32 sagittal_swg_bwd~%float32 lateral_swg~%float32 lateral_swg_offset~%float32 trng_lateral_swg_offset~%float32 rotational_swg~%float32 rotational_swg_offset~%~%########## Lateral Hip Swing ##########~%float32 lateral_hip_swg~%~%########## Leaning ##########~%float32 fwd_lean~%float32 bwd_lean~%float32 fwd_trng_lean~%~%########## Step ##########~%float32 gait_vel_limit~%float32 sagittal_acc~%float32 lateral_acc~%float32 rotational_acc~%float32 const_step_freq~%float32 sagittal_prop_step_freq~%float32 lateral_prop_step_freq~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 angle_move_amplitude~%bool halt_position~%bool leg_lifting~%bool leg_swing~%bool lateral_swing~%bool leaning~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkingParam)))
  "Returns full string definition for message of type 'WalkingParam"
  (cl:format cl:nil "####### Halt Position #######~%float32 halt_pos_leg_ext~%float32 halt_pos_leg_roll_ext~%float32 halt_pos_leg_pitch_ext~%float32 halt_pos_foot_roll_ext~%float32 halt_pos_foot_pitch_ext~%~%####### Leg Lifting #####~%float32 const_ground_push~%float32 propt_ground_push~%float32 const_step_height~%float32 propt_step_height~%~%########## Leg Swing ########~%float32 swing_start~%float32 swing_stop~%float32 sagittal_swg_fwd~%float32 sagittal_swg_bwd~%float32 lateral_swg~%float32 lateral_swg_offset~%float32 trng_lateral_swg_offset~%float32 rotational_swg~%float32 rotational_swg_offset~%~%########## Lateral Hip Swing ##########~%float32 lateral_hip_swg~%~%########## Leaning ##########~%float32 fwd_lean~%float32 bwd_lean~%float32 fwd_trng_lean~%~%########## Step ##########~%float32 gait_vel_limit~%float32 sagittal_acc~%float32 lateral_acc~%float32 rotational_acc~%float32 const_step_freq~%float32 sagittal_prop_step_freq~%float32 lateral_prop_step_freq~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 angle_move_amplitude~%bool halt_position~%bool leg_lifting~%bool leg_swing~%bool lateral_swing~%bool leaning~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WalkingParam>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkingParam>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkingParam
    (cl:cons ':halt_pos_leg_ext (halt_pos_leg_ext msg))
    (cl:cons ':halt_pos_leg_roll_ext (halt_pos_leg_roll_ext msg))
    (cl:cons ':halt_pos_leg_pitch_ext (halt_pos_leg_pitch_ext msg))
    (cl:cons ':halt_pos_foot_roll_ext (halt_pos_foot_roll_ext msg))
    (cl:cons ':halt_pos_foot_pitch_ext (halt_pos_foot_pitch_ext msg))
    (cl:cons ':const_ground_push (const_ground_push msg))
    (cl:cons ':propt_ground_push (propt_ground_push msg))
    (cl:cons ':const_step_height (const_step_height msg))
    (cl:cons ':propt_step_height (propt_step_height msg))
    (cl:cons ':swing_start (swing_start msg))
    (cl:cons ':swing_stop (swing_stop msg))
    (cl:cons ':sagittal_swg_fwd (sagittal_swg_fwd msg))
    (cl:cons ':sagittal_swg_bwd (sagittal_swg_bwd msg))
    (cl:cons ':lateral_swg (lateral_swg msg))
    (cl:cons ':lateral_swg_offset (lateral_swg_offset msg))
    (cl:cons ':trng_lateral_swg_offset (trng_lateral_swg_offset msg))
    (cl:cons ':rotational_swg (rotational_swg msg))
    (cl:cons ':rotational_swg_offset (rotational_swg_offset msg))
    (cl:cons ':lateral_hip_swg (lateral_hip_swg msg))
    (cl:cons ':fwd_lean (fwd_lean msg))
    (cl:cons ':bwd_lean (bwd_lean msg))
    (cl:cons ':fwd_trng_lean (fwd_trng_lean msg))
    (cl:cons ':gait_vel_limit (gait_vel_limit msg))
    (cl:cons ':sagittal_acc (sagittal_acc msg))
    (cl:cons ':lateral_acc (lateral_acc msg))
    (cl:cons ':rotational_acc (rotational_acc msg))
    (cl:cons ':const_step_freq (const_step_freq msg))
    (cl:cons ':sagittal_prop_step_freq (sagittal_prop_step_freq msg))
    (cl:cons ':lateral_prop_step_freq (lateral_prop_step_freq msg))
    (cl:cons ':x_move_amplitude (x_move_amplitude msg))
    (cl:cons ':y_move_amplitude (y_move_amplitude msg))
    (cl:cons ':angle_move_amplitude (angle_move_amplitude msg))
    (cl:cons ':halt_position (halt_position msg))
    (cl:cons ':leg_lifting (leg_lifting msg))
    (cl:cons ':leg_swing (leg_swing msg))
    (cl:cons ':lateral_swing (lateral_swing msg))
    (cl:cons ':leaning (leaning msg))
))
