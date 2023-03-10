; Auto-generated. Do not edit!


(cl:in-package op3_walking_module_msgs-msg)


;//! \htmlinclude WalkingParam.msg.html

(cl:defclass <WalkingParam> (roslisp-msg-protocol:ros-message)
  ((init_x_offset
    :reader init_x_offset
    :initarg :init_x_offset
    :type cl:float
    :initform 0.0)
   (init_y_offset
    :reader init_y_offset
    :initarg :init_y_offset
    :type cl:float
    :initform 0.0)
   (init_z_offset
    :reader init_z_offset
    :initarg :init_z_offset
    :type cl:float
    :initform 0.0)
   (init_roll_offset
    :reader init_roll_offset
    :initarg :init_roll_offset
    :type cl:float
    :initform 0.0)
   (init_pitch_offset
    :reader init_pitch_offset
    :initarg :init_pitch_offset
    :type cl:float
    :initform 0.0)
   (init_yaw_offset
    :reader init_yaw_offset
    :initarg :init_yaw_offset
    :type cl:float
    :initform 0.0)
   (r_x_offset
    :reader r_x_offset
    :initarg :r_x_offset
    :type cl:float
    :initform 0.0)
   (r_y_offset
    :reader r_y_offset
    :initarg :r_y_offset
    :type cl:float
    :initform 0.0)
   (r_z_offset
    :reader r_z_offset
    :initarg :r_z_offset
    :type cl:float
    :initform 0.0)
   (r_roll_offset
    :reader r_roll_offset
    :initarg :r_roll_offset
    :type cl:float
    :initform 0.0)
   (r_pitch_offset
    :reader r_pitch_offset
    :initarg :r_pitch_offset
    :type cl:float
    :initform 0.0)
   (r_yaw_offset
    :reader r_yaw_offset
    :initarg :r_yaw_offset
    :type cl:float
    :initform 0.0)
   (l_x_offset
    :reader l_x_offset
    :initarg :l_x_offset
    :type cl:float
    :initform 0.0)
   (l_y_offset
    :reader l_y_offset
    :initarg :l_y_offset
    :type cl:float
    :initform 0.0)
   (l_z_offset
    :reader l_z_offset
    :initarg :l_z_offset
    :type cl:float
    :initform 0.0)
   (l_roll_offset
    :reader l_roll_offset
    :initarg :l_roll_offset
    :type cl:float
    :initform 0.0)
   (l_pitch_offset
    :reader l_pitch_offset
    :initarg :l_pitch_offset
    :type cl:float
    :initform 0.0)
   (l_yaw_offset
    :reader l_yaw_offset
    :initarg :l_yaw_offset
    :type cl:float
    :initform 0.0)
   (period_time
    :reader period_time
    :initarg :period_time
    :type cl:float
    :initform 0.0)
   (dsp_ratio
    :reader dsp_ratio
    :initarg :dsp_ratio
    :type cl:float
    :initform 0.0)
   (step_fb_ratio
    :reader step_fb_ratio
    :initarg :step_fb_ratio
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
   (z_move_amplitude
    :reader z_move_amplitude
    :initarg :z_move_amplitude
    :type cl:float
    :initform 0.0)
   (angle_move_amplitude
    :reader angle_move_amplitude
    :initarg :angle_move_amplitude
    :type cl:float
    :initform 0.0)
   (move_aim_on
    :reader move_aim_on
    :initarg :move_aim_on
    :type cl:boolean
    :initform cl:nil)
   (balance_enable
    :reader balance_enable
    :initarg :balance_enable
    :type cl:boolean
    :initform cl:nil)
   (balance_hip_roll_gain
    :reader balance_hip_roll_gain
    :initarg :balance_hip_roll_gain
    :type cl:float
    :initform 0.0)
   (balance_knee_gain
    :reader balance_knee_gain
    :initarg :balance_knee_gain
    :type cl:float
    :initform 0.0)
   (balance_ankle_roll_gain
    :reader balance_ankle_roll_gain
    :initarg :balance_ankle_roll_gain
    :type cl:float
    :initform 0.0)
   (balance_ankle_pitch_gain
    :reader balance_ankle_pitch_gain
    :initarg :balance_ankle_pitch_gain
    :type cl:float
    :initform 0.0)
   (y_swap_amplitude
    :reader y_swap_amplitude
    :initarg :y_swap_amplitude
    :type cl:float
    :initform 0.0)
   (z_swap_amplitude
    :reader z_swap_amplitude
    :initarg :z_swap_amplitude
    :type cl:float
    :initform 0.0)
   (arm_swing_gain
    :reader arm_swing_gain
    :initarg :arm_swing_gain
    :type cl:float
    :initform 0.0)
   (pelvis_offset
    :reader pelvis_offset
    :initarg :pelvis_offset
    :type cl:float
    :initform 0.0)
   (hip_pitch_offset
    :reader hip_pitch_offset
    :initarg :hip_pitch_offset
    :type cl:float
    :initform 0.0)
   (KP_P
    :reader KP_P
    :initarg :KP_P
    :type cl:float
    :initform 0.0)
   (KD_P
    :reader KD_P
    :initarg :KD_P
    :type cl:float
    :initform 0.0)
   (KI_P
    :reader KI_P
    :initarg :KI_P
    :type cl:float
    :initform 0.0)
   (D_ANKLE_P
    :reader D_ANKLE_P
    :initarg :D_ANKLE_P
    :type cl:float
    :initform 0.0)
   (D_KNEE
    :reader D_KNEE
    :initarg :D_KNEE
    :type cl:float
    :initform 0.0)
   (D_HIP_P
    :reader D_HIP_P
    :initarg :D_HIP_P
    :type cl:float
    :initform 0.0)
   (KP_R
    :reader KP_R
    :initarg :KP_R
    :type cl:float
    :initform 0.0)
   (KD_R
    :reader KD_R
    :initarg :KD_R
    :type cl:float
    :initform 0.0)
   (KI_R
    :reader KI_R
    :initarg :KI_R
    :type cl:float
    :initform 0.0)
   (D_ANKLE_R
    :reader D_ANKLE_R
    :initarg :D_ANKLE_R
    :type cl:float
    :initform 0.0)
   (D_HIP_R
    :reader D_HIP_R
    :initarg :D_HIP_R
    :type cl:float
    :initform 0.0)
   (shoulder_gain
    :reader shoulder_gain
    :initarg :shoulder_gain
    :type cl:float
    :initform 0.0)
   (p_gain
    :reader p_gain
    :initarg :p_gain
    :type cl:integer
    :initform 0)
   (i_gain
    :reader i_gain
    :initarg :i_gain
    :type cl:integer
    :initform 0)
   (d_gain
    :reader d_gain
    :initarg :d_gain
    :type cl:integer
    :initform 0)
   (zmp_vx
    :reader zmp_vx
    :initarg :zmp_vx
    :type cl:float
    :initform 0.0)
   (zmp_vy
    :reader zmp_vy
    :initarg :zmp_vy
    :type cl:float
    :initform 0.0)
   (zmp_vphi
    :reader zmp_vphi
    :initarg :zmp_vphi
    :type cl:float
    :initform 0.0)
   (zmp_useGyro
    :reader zmp_useGyro
    :initarg :zmp_useGyro
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WalkingParam (<WalkingParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkingParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkingParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name op3_walking_module_msgs-msg:<WalkingParam> is deprecated: use op3_walking_module_msgs-msg:WalkingParam instead.")))

(cl:ensure-generic-function 'init_x_offset-val :lambda-list '(m))
(cl:defmethod init_x_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:init_x_offset-val is deprecated.  Use op3_walking_module_msgs-msg:init_x_offset instead.")
  (init_x_offset m))

(cl:ensure-generic-function 'init_y_offset-val :lambda-list '(m))
(cl:defmethod init_y_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:init_y_offset-val is deprecated.  Use op3_walking_module_msgs-msg:init_y_offset instead.")
  (init_y_offset m))

(cl:ensure-generic-function 'init_z_offset-val :lambda-list '(m))
(cl:defmethod init_z_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:init_z_offset-val is deprecated.  Use op3_walking_module_msgs-msg:init_z_offset instead.")
  (init_z_offset m))

(cl:ensure-generic-function 'init_roll_offset-val :lambda-list '(m))
(cl:defmethod init_roll_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:init_roll_offset-val is deprecated.  Use op3_walking_module_msgs-msg:init_roll_offset instead.")
  (init_roll_offset m))

(cl:ensure-generic-function 'init_pitch_offset-val :lambda-list '(m))
(cl:defmethod init_pitch_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:init_pitch_offset-val is deprecated.  Use op3_walking_module_msgs-msg:init_pitch_offset instead.")
  (init_pitch_offset m))

(cl:ensure-generic-function 'init_yaw_offset-val :lambda-list '(m))
(cl:defmethod init_yaw_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:init_yaw_offset-val is deprecated.  Use op3_walking_module_msgs-msg:init_yaw_offset instead.")
  (init_yaw_offset m))

(cl:ensure-generic-function 'r_x_offset-val :lambda-list '(m))
(cl:defmethod r_x_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:r_x_offset-val is deprecated.  Use op3_walking_module_msgs-msg:r_x_offset instead.")
  (r_x_offset m))

(cl:ensure-generic-function 'r_y_offset-val :lambda-list '(m))
(cl:defmethod r_y_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:r_y_offset-val is deprecated.  Use op3_walking_module_msgs-msg:r_y_offset instead.")
  (r_y_offset m))

(cl:ensure-generic-function 'r_z_offset-val :lambda-list '(m))
(cl:defmethod r_z_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:r_z_offset-val is deprecated.  Use op3_walking_module_msgs-msg:r_z_offset instead.")
  (r_z_offset m))

(cl:ensure-generic-function 'r_roll_offset-val :lambda-list '(m))
(cl:defmethod r_roll_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:r_roll_offset-val is deprecated.  Use op3_walking_module_msgs-msg:r_roll_offset instead.")
  (r_roll_offset m))

(cl:ensure-generic-function 'r_pitch_offset-val :lambda-list '(m))
(cl:defmethod r_pitch_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:r_pitch_offset-val is deprecated.  Use op3_walking_module_msgs-msg:r_pitch_offset instead.")
  (r_pitch_offset m))

(cl:ensure-generic-function 'r_yaw_offset-val :lambda-list '(m))
(cl:defmethod r_yaw_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:r_yaw_offset-val is deprecated.  Use op3_walking_module_msgs-msg:r_yaw_offset instead.")
  (r_yaw_offset m))

(cl:ensure-generic-function 'l_x_offset-val :lambda-list '(m))
(cl:defmethod l_x_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:l_x_offset-val is deprecated.  Use op3_walking_module_msgs-msg:l_x_offset instead.")
  (l_x_offset m))

(cl:ensure-generic-function 'l_y_offset-val :lambda-list '(m))
(cl:defmethod l_y_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:l_y_offset-val is deprecated.  Use op3_walking_module_msgs-msg:l_y_offset instead.")
  (l_y_offset m))

(cl:ensure-generic-function 'l_z_offset-val :lambda-list '(m))
(cl:defmethod l_z_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:l_z_offset-val is deprecated.  Use op3_walking_module_msgs-msg:l_z_offset instead.")
  (l_z_offset m))

(cl:ensure-generic-function 'l_roll_offset-val :lambda-list '(m))
(cl:defmethod l_roll_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:l_roll_offset-val is deprecated.  Use op3_walking_module_msgs-msg:l_roll_offset instead.")
  (l_roll_offset m))

(cl:ensure-generic-function 'l_pitch_offset-val :lambda-list '(m))
(cl:defmethod l_pitch_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:l_pitch_offset-val is deprecated.  Use op3_walking_module_msgs-msg:l_pitch_offset instead.")
  (l_pitch_offset m))

(cl:ensure-generic-function 'l_yaw_offset-val :lambda-list '(m))
(cl:defmethod l_yaw_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:l_yaw_offset-val is deprecated.  Use op3_walking_module_msgs-msg:l_yaw_offset instead.")
  (l_yaw_offset m))

(cl:ensure-generic-function 'period_time-val :lambda-list '(m))
(cl:defmethod period_time-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:period_time-val is deprecated.  Use op3_walking_module_msgs-msg:period_time instead.")
  (period_time m))

(cl:ensure-generic-function 'dsp_ratio-val :lambda-list '(m))
(cl:defmethod dsp_ratio-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:dsp_ratio-val is deprecated.  Use op3_walking_module_msgs-msg:dsp_ratio instead.")
  (dsp_ratio m))

(cl:ensure-generic-function 'step_fb_ratio-val :lambda-list '(m))
(cl:defmethod step_fb_ratio-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:step_fb_ratio-val is deprecated.  Use op3_walking_module_msgs-msg:step_fb_ratio instead.")
  (step_fb_ratio m))

(cl:ensure-generic-function 'x_move_amplitude-val :lambda-list '(m))
(cl:defmethod x_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:x_move_amplitude-val is deprecated.  Use op3_walking_module_msgs-msg:x_move_amplitude instead.")
  (x_move_amplitude m))

(cl:ensure-generic-function 'y_move_amplitude-val :lambda-list '(m))
(cl:defmethod y_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:y_move_amplitude-val is deprecated.  Use op3_walking_module_msgs-msg:y_move_amplitude instead.")
  (y_move_amplitude m))

(cl:ensure-generic-function 'z_move_amplitude-val :lambda-list '(m))
(cl:defmethod z_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:z_move_amplitude-val is deprecated.  Use op3_walking_module_msgs-msg:z_move_amplitude instead.")
  (z_move_amplitude m))

(cl:ensure-generic-function 'angle_move_amplitude-val :lambda-list '(m))
(cl:defmethod angle_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:angle_move_amplitude-val is deprecated.  Use op3_walking_module_msgs-msg:angle_move_amplitude instead.")
  (angle_move_amplitude m))

(cl:ensure-generic-function 'move_aim_on-val :lambda-list '(m))
(cl:defmethod move_aim_on-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:move_aim_on-val is deprecated.  Use op3_walking_module_msgs-msg:move_aim_on instead.")
  (move_aim_on m))

(cl:ensure-generic-function 'balance_enable-val :lambda-list '(m))
(cl:defmethod balance_enable-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:balance_enable-val is deprecated.  Use op3_walking_module_msgs-msg:balance_enable instead.")
  (balance_enable m))

(cl:ensure-generic-function 'balance_hip_roll_gain-val :lambda-list '(m))
(cl:defmethod balance_hip_roll_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:balance_hip_roll_gain-val is deprecated.  Use op3_walking_module_msgs-msg:balance_hip_roll_gain instead.")
  (balance_hip_roll_gain m))

(cl:ensure-generic-function 'balance_knee_gain-val :lambda-list '(m))
(cl:defmethod balance_knee_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:balance_knee_gain-val is deprecated.  Use op3_walking_module_msgs-msg:balance_knee_gain instead.")
  (balance_knee_gain m))

(cl:ensure-generic-function 'balance_ankle_roll_gain-val :lambda-list '(m))
(cl:defmethod balance_ankle_roll_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:balance_ankle_roll_gain-val is deprecated.  Use op3_walking_module_msgs-msg:balance_ankle_roll_gain instead.")
  (balance_ankle_roll_gain m))

(cl:ensure-generic-function 'balance_ankle_pitch_gain-val :lambda-list '(m))
(cl:defmethod balance_ankle_pitch_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:balance_ankle_pitch_gain-val is deprecated.  Use op3_walking_module_msgs-msg:balance_ankle_pitch_gain instead.")
  (balance_ankle_pitch_gain m))

(cl:ensure-generic-function 'y_swap_amplitude-val :lambda-list '(m))
(cl:defmethod y_swap_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:y_swap_amplitude-val is deprecated.  Use op3_walking_module_msgs-msg:y_swap_amplitude instead.")
  (y_swap_amplitude m))

(cl:ensure-generic-function 'z_swap_amplitude-val :lambda-list '(m))
(cl:defmethod z_swap_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:z_swap_amplitude-val is deprecated.  Use op3_walking_module_msgs-msg:z_swap_amplitude instead.")
  (z_swap_amplitude m))

(cl:ensure-generic-function 'arm_swing_gain-val :lambda-list '(m))
(cl:defmethod arm_swing_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:arm_swing_gain-val is deprecated.  Use op3_walking_module_msgs-msg:arm_swing_gain instead.")
  (arm_swing_gain m))

(cl:ensure-generic-function 'pelvis_offset-val :lambda-list '(m))
(cl:defmethod pelvis_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:pelvis_offset-val is deprecated.  Use op3_walking_module_msgs-msg:pelvis_offset instead.")
  (pelvis_offset m))

(cl:ensure-generic-function 'hip_pitch_offset-val :lambda-list '(m))
(cl:defmethod hip_pitch_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:hip_pitch_offset-val is deprecated.  Use op3_walking_module_msgs-msg:hip_pitch_offset instead.")
  (hip_pitch_offset m))

(cl:ensure-generic-function 'KP_P-val :lambda-list '(m))
(cl:defmethod KP_P-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:KP_P-val is deprecated.  Use op3_walking_module_msgs-msg:KP_P instead.")
  (KP_P m))

(cl:ensure-generic-function 'KD_P-val :lambda-list '(m))
(cl:defmethod KD_P-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:KD_P-val is deprecated.  Use op3_walking_module_msgs-msg:KD_P instead.")
  (KD_P m))

(cl:ensure-generic-function 'KI_P-val :lambda-list '(m))
(cl:defmethod KI_P-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:KI_P-val is deprecated.  Use op3_walking_module_msgs-msg:KI_P instead.")
  (KI_P m))

(cl:ensure-generic-function 'D_ANKLE_P-val :lambda-list '(m))
(cl:defmethod D_ANKLE_P-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:D_ANKLE_P-val is deprecated.  Use op3_walking_module_msgs-msg:D_ANKLE_P instead.")
  (D_ANKLE_P m))

(cl:ensure-generic-function 'D_KNEE-val :lambda-list '(m))
(cl:defmethod D_KNEE-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:D_KNEE-val is deprecated.  Use op3_walking_module_msgs-msg:D_KNEE instead.")
  (D_KNEE m))

(cl:ensure-generic-function 'D_HIP_P-val :lambda-list '(m))
(cl:defmethod D_HIP_P-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:D_HIP_P-val is deprecated.  Use op3_walking_module_msgs-msg:D_HIP_P instead.")
  (D_HIP_P m))

(cl:ensure-generic-function 'KP_R-val :lambda-list '(m))
(cl:defmethod KP_R-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:KP_R-val is deprecated.  Use op3_walking_module_msgs-msg:KP_R instead.")
  (KP_R m))

(cl:ensure-generic-function 'KD_R-val :lambda-list '(m))
(cl:defmethod KD_R-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:KD_R-val is deprecated.  Use op3_walking_module_msgs-msg:KD_R instead.")
  (KD_R m))

(cl:ensure-generic-function 'KI_R-val :lambda-list '(m))
(cl:defmethod KI_R-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:KI_R-val is deprecated.  Use op3_walking_module_msgs-msg:KI_R instead.")
  (KI_R m))

(cl:ensure-generic-function 'D_ANKLE_R-val :lambda-list '(m))
(cl:defmethod D_ANKLE_R-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:D_ANKLE_R-val is deprecated.  Use op3_walking_module_msgs-msg:D_ANKLE_R instead.")
  (D_ANKLE_R m))

(cl:ensure-generic-function 'D_HIP_R-val :lambda-list '(m))
(cl:defmethod D_HIP_R-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:D_HIP_R-val is deprecated.  Use op3_walking_module_msgs-msg:D_HIP_R instead.")
  (D_HIP_R m))

(cl:ensure-generic-function 'shoulder_gain-val :lambda-list '(m))
(cl:defmethod shoulder_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:shoulder_gain-val is deprecated.  Use op3_walking_module_msgs-msg:shoulder_gain instead.")
  (shoulder_gain m))

(cl:ensure-generic-function 'p_gain-val :lambda-list '(m))
(cl:defmethod p_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:p_gain-val is deprecated.  Use op3_walking_module_msgs-msg:p_gain instead.")
  (p_gain m))

(cl:ensure-generic-function 'i_gain-val :lambda-list '(m))
(cl:defmethod i_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:i_gain-val is deprecated.  Use op3_walking_module_msgs-msg:i_gain instead.")
  (i_gain m))

(cl:ensure-generic-function 'd_gain-val :lambda-list '(m))
(cl:defmethod d_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:d_gain-val is deprecated.  Use op3_walking_module_msgs-msg:d_gain instead.")
  (d_gain m))

(cl:ensure-generic-function 'zmp_vx-val :lambda-list '(m))
(cl:defmethod zmp_vx-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:zmp_vx-val is deprecated.  Use op3_walking_module_msgs-msg:zmp_vx instead.")
  (zmp_vx m))

(cl:ensure-generic-function 'zmp_vy-val :lambda-list '(m))
(cl:defmethod zmp_vy-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:zmp_vy-val is deprecated.  Use op3_walking_module_msgs-msg:zmp_vy instead.")
  (zmp_vy m))

(cl:ensure-generic-function 'zmp_vphi-val :lambda-list '(m))
(cl:defmethod zmp_vphi-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:zmp_vphi-val is deprecated.  Use op3_walking_module_msgs-msg:zmp_vphi instead.")
  (zmp_vphi m))

(cl:ensure-generic-function 'zmp_useGyro-val :lambda-list '(m))
(cl:defmethod zmp_useGyro-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader op3_walking_module_msgs-msg:zmp_useGyro-val is deprecated.  Use op3_walking_module_msgs-msg:zmp_useGyro instead.")
  (zmp_useGyro m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkingParam>) ostream)
  "Serializes a message object of type '<WalkingParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_x_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_y_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_z_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_roll_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_pitch_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_yaw_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_x_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_y_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_z_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_roll_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_pitch_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_yaw_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_x_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_y_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_z_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_roll_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_pitch_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_yaw_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'period_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dsp_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'step_fb_ratio))))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'move_aim_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'balance_enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'balance_hip_roll_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'balance_knee_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'balance_ankle_roll_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'balance_ankle_pitch_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_swap_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_swap_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_swing_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pelvis_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hip_pitch_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KI_P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D_ANKLE_P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D_KNEE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D_HIP_P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KI_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D_ANKLE_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D_HIP_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'shoulder_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'p_gain)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'i_gain)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'd_gain)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zmp_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zmp_vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zmp_vphi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'zmp_useGyro) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkingParam>) istream)
  "Deserializes a message object of type '<WalkingParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_x_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_y_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_z_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_roll_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_pitch_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_yaw_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_x_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_y_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_z_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_roll_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_pitch_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_yaw_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_x_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_y_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_z_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_roll_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_pitch_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_yaw_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'period_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dsp_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_fb_ratio) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'z_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'move_aim_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'balance_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'balance_hip_roll_gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'balance_knee_gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'balance_ankle_roll_gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'balance_ankle_pitch_gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_swap_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_swap_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_swing_gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pelvis_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hip_pitch_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_P) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_P) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KI_P) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_ANKLE_P) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_KNEE) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_HIP_P) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_R) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_R) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KI_R) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_ANKLE_R) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_HIP_R) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shoulder_gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'p_gain) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'i_gain) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'd_gain) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zmp_vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zmp_vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zmp_vphi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'zmp_useGyro) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkingParam>)))
  "Returns string type for a message object of type '<WalkingParam>"
  "op3_walking_module_msgs/WalkingParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkingParam)))
  "Returns string type for a message object of type 'WalkingParam"
  "op3_walking_module_msgs/WalkingParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkingParam>)))
  "Returns md5sum for a message object of type '<WalkingParam>"
  "29c5fd0a9fcd330b7de450bfe61e96dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkingParam)))
  "Returns md5sum for a message object of type 'WalkingParam"
  "29c5fd0a9fcd330b7de450bfe61e96dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkingParam>)))
  "Returns full string definition for message of type '<WalkingParam>"
  (cl:format cl:nil "####### walking init pose #######~%float32 init_x_offset~%float32 init_y_offset~%float32 init_z_offset~%float32 init_roll_offset~%float32 init_pitch_offset~%float32 init_yaw_offset~%float32 r_x_offset~%float32 r_y_offset~%float32 r_z_offset~%float32 r_roll_offset~%float32 r_pitch_offset~%float32 r_yaw_offset~%float32 l_x_offset~%float32 l_y_offset~%float32 l_z_offset~%float32 l_roll_offset~%float32 l_pitch_offset~%float32 l_yaw_offset~%~%~%####### time parameter #####~%float32 period_time~%float32 dsp_ratio~%float32 step_fb_ratio~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 z_move_amplitude~%float32 angle_move_amplitude~%bool move_aim_on~%~%########## balance parameter ##########~%bool balance_enable~%float32 balance_hip_roll_gain~%float32 balance_knee_gain~%float32 balance_ankle_roll_gain~%float32 balance_ankle_pitch_gain~%float32 y_swap_amplitude~%float32 z_swap_amplitude~%float32 arm_swing_gain~%float32 pelvis_offset~%float32 hip_pitch_offset~%~%########## balance parameter ##########~%float32 KP_P~%float32 KD_P~%float32 KI_P~%float32 D_ANKLE_P~%float32 D_KNEE~%float32 D_HIP_P~%~%float32 KP_R~%float32 KD_R~%float32 KI_R~%float32 D_ANKLE_R~%float32 D_HIP_R~%float32 shoulder_gain~%~%########## gain parameter ##########~%int32 p_gain~%int32 i_gain~%int32 d_gain~%~%########## ZMP WALKING BIT-BOTS ###########~%float32 zmp_vx~%float32 zmp_vy~%float32 zmp_vphi~%~%bool zmp_useGyro~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkingParam)))
  "Returns full string definition for message of type 'WalkingParam"
  (cl:format cl:nil "####### walking init pose #######~%float32 init_x_offset~%float32 init_y_offset~%float32 init_z_offset~%float32 init_roll_offset~%float32 init_pitch_offset~%float32 init_yaw_offset~%float32 r_x_offset~%float32 r_y_offset~%float32 r_z_offset~%float32 r_roll_offset~%float32 r_pitch_offset~%float32 r_yaw_offset~%float32 l_x_offset~%float32 l_y_offset~%float32 l_z_offset~%float32 l_roll_offset~%float32 l_pitch_offset~%float32 l_yaw_offset~%~%~%####### time parameter #####~%float32 period_time~%float32 dsp_ratio~%float32 step_fb_ratio~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 z_move_amplitude~%float32 angle_move_amplitude~%bool move_aim_on~%~%########## balance parameter ##########~%bool balance_enable~%float32 balance_hip_roll_gain~%float32 balance_knee_gain~%float32 balance_ankle_roll_gain~%float32 balance_ankle_pitch_gain~%float32 y_swap_amplitude~%float32 z_swap_amplitude~%float32 arm_swing_gain~%float32 pelvis_offset~%float32 hip_pitch_offset~%~%########## balance parameter ##########~%float32 KP_P~%float32 KD_P~%float32 KI_P~%float32 D_ANKLE_P~%float32 D_KNEE~%float32 D_HIP_P~%~%float32 KP_R~%float32 KD_R~%float32 KI_R~%float32 D_ANKLE_R~%float32 D_HIP_R~%float32 shoulder_gain~%~%########## gain parameter ##########~%int32 p_gain~%int32 i_gain~%int32 d_gain~%~%########## ZMP WALKING BIT-BOTS ###########~%float32 zmp_vx~%float32 zmp_vy~%float32 zmp_vphi~%~%bool zmp_useGyro~%~%~%"))
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
     1
     1
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkingParam>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkingParam
    (cl:cons ':init_x_offset (init_x_offset msg))
    (cl:cons ':init_y_offset (init_y_offset msg))
    (cl:cons ':init_z_offset (init_z_offset msg))
    (cl:cons ':init_roll_offset (init_roll_offset msg))
    (cl:cons ':init_pitch_offset (init_pitch_offset msg))
    (cl:cons ':init_yaw_offset (init_yaw_offset msg))
    (cl:cons ':r_x_offset (r_x_offset msg))
    (cl:cons ':r_y_offset (r_y_offset msg))
    (cl:cons ':r_z_offset (r_z_offset msg))
    (cl:cons ':r_roll_offset (r_roll_offset msg))
    (cl:cons ':r_pitch_offset (r_pitch_offset msg))
    (cl:cons ':r_yaw_offset (r_yaw_offset msg))
    (cl:cons ':l_x_offset (l_x_offset msg))
    (cl:cons ':l_y_offset (l_y_offset msg))
    (cl:cons ':l_z_offset (l_z_offset msg))
    (cl:cons ':l_roll_offset (l_roll_offset msg))
    (cl:cons ':l_pitch_offset (l_pitch_offset msg))
    (cl:cons ':l_yaw_offset (l_yaw_offset msg))
    (cl:cons ':period_time (period_time msg))
    (cl:cons ':dsp_ratio (dsp_ratio msg))
    (cl:cons ':step_fb_ratio (step_fb_ratio msg))
    (cl:cons ':x_move_amplitude (x_move_amplitude msg))
    (cl:cons ':y_move_amplitude (y_move_amplitude msg))
    (cl:cons ':z_move_amplitude (z_move_amplitude msg))
    (cl:cons ':angle_move_amplitude (angle_move_amplitude msg))
    (cl:cons ':move_aim_on (move_aim_on msg))
    (cl:cons ':balance_enable (balance_enable msg))
    (cl:cons ':balance_hip_roll_gain (balance_hip_roll_gain msg))
    (cl:cons ':balance_knee_gain (balance_knee_gain msg))
    (cl:cons ':balance_ankle_roll_gain (balance_ankle_roll_gain msg))
    (cl:cons ':balance_ankle_pitch_gain (balance_ankle_pitch_gain msg))
    (cl:cons ':y_swap_amplitude (y_swap_amplitude msg))
    (cl:cons ':z_swap_amplitude (z_swap_amplitude msg))
    (cl:cons ':arm_swing_gain (arm_swing_gain msg))
    (cl:cons ':pelvis_offset (pelvis_offset msg))
    (cl:cons ':hip_pitch_offset (hip_pitch_offset msg))
    (cl:cons ':KP_P (KP_P msg))
    (cl:cons ':KD_P (KD_P msg))
    (cl:cons ':KI_P (KI_P msg))
    (cl:cons ':D_ANKLE_P (D_ANKLE_P msg))
    (cl:cons ':D_KNEE (D_KNEE msg))
    (cl:cons ':D_HIP_P (D_HIP_P msg))
    (cl:cons ':KP_R (KP_R msg))
    (cl:cons ':KD_R (KD_R msg))
    (cl:cons ':KI_R (KI_R msg))
    (cl:cons ':D_ANKLE_R (D_ANKLE_R msg))
    (cl:cons ':D_HIP_R (D_HIP_R msg))
    (cl:cons ':shoulder_gain (shoulder_gain msg))
    (cl:cons ':p_gain (p_gain msg))
    (cl:cons ':i_gain (i_gain msg))
    (cl:cons ':d_gain (d_gain msg))
    (cl:cons ':zmp_vx (zmp_vx msg))
    (cl:cons ':zmp_vy (zmp_vy msg))
    (cl:cons ':zmp_vphi (zmp_vphi msg))
    (cl:cons ':zmp_useGyro (zmp_useGyro msg))
))
