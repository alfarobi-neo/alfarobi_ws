; Auto-generated. Do not edit!


(cl:in-package quintic_walk_msgs-msg)


;//! \htmlinclude WalkingParam.msg.html

(cl:defclass <WalkingParam> (roslisp-msg-protocol:ros-message)
  ((freq
    :reader freq
    :initarg :freq
    :type cl:float
    :initform 0.0)
   (doubleSupportRatio
    :reader doubleSupportRatio
    :initarg :doubleSupportRatio
    :type cl:float
    :initform 0.0)
   (footDistance
    :reader footDistance
    :initarg :footDistance
    :type cl:float
    :initform 0.0)
   (footRise
    :reader footRise
    :initarg :footRise
    :type cl:float
    :initform 0.0)
   (footPutDownZOffset
    :reader footPutDownZOffset
    :initarg :footPutDownZOffset
    :type cl:float
    :initform 0.0)
   (footPutDownPhase
    :reader footPutDownPhase
    :initarg :footPutDownPhase
    :type cl:float
    :initform 0.0)
   (footApexPhase
    :reader footApexPhase
    :initarg :footApexPhase
    :type cl:float
    :initform 0.0)
   (footOvershootRatio
    :reader footOvershootRatio
    :initarg :footOvershootRatio
    :type cl:float
    :initform 0.0)
   (footOvershootPhase
    :reader footOvershootPhase
    :initarg :footOvershootPhase
    :type cl:float
    :initform 0.0)
   (trunkHeight
    :reader trunkHeight
    :initarg :trunkHeight
    :type cl:float
    :initform 0.0)
   (trunkPitch
    :reader trunkPitch
    :initarg :trunkPitch
    :type cl:float
    :initform 0.0)
   (trunkPhase
    :reader trunkPhase
    :initarg :trunkPhase
    :type cl:float
    :initform 0.0)
   (trunkXOffset
    :reader trunkXOffset
    :initarg :trunkXOffset
    :type cl:float
    :initform 0.0)
   (trunkYOffset
    :reader trunkYOffset
    :initarg :trunkYOffset
    :type cl:float
    :initform 0.0)
   (trunkSwing
    :reader trunkSwing
    :initarg :trunkSwing
    :type cl:float
    :initform 0.0)
   (trunkPause
    :reader trunkPause
    :initarg :trunkPause
    :type cl:float
    :initform 0.0)
   (trunkXOffsetPCoefForward
    :reader trunkXOffsetPCoefForward
    :initarg :trunkXOffsetPCoefForward
    :type cl:float
    :initform 0.0)
   (trunkXOffsetPCoefTurn
    :reader trunkXOffsetPCoefTurn
    :initarg :trunkXOffsetPCoefTurn
    :type cl:float
    :initform 0.0)
   (trunkPitchPCoefForward
    :reader trunkPitchPCoefForward
    :initarg :trunkPitchPCoefForward
    :type cl:float
    :initform 0.0)
   (trunkPitchPCoefTurn
    :reader trunkPitchPCoefTurn
    :initarg :trunkPitchPCoefTurn
    :type cl:float
    :initform 0.0)
   (trunkYOnlyInDoubleSupport
    :reader trunkYOnlyInDoubleSupport
    :initarg :trunkYOnlyInDoubleSupport
    :type cl:boolean
    :initform cl:nil)
   (XMove
    :reader XMove
    :initarg :XMove
    :type cl:float
    :initform 0.0)
   (YMove
    :reader YMove
    :initarg :YMove
    :type cl:float
    :initform 0.0)
   (ZMove
    :reader ZMove
    :initarg :ZMove
    :type cl:float
    :initform 0.0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (tuning
    :reader tuning
    :initarg :tuning
    :type cl:boolean
    :initform cl:nil)
   (D_ANKLE_P_qw
    :reader D_ANKLE_P_qw
    :initarg :D_ANKLE_P_qw
    :type cl:float
    :initform 0.0)
   (D_KNEE_qw
    :reader D_KNEE_qw
    :initarg :D_KNEE_qw
    :type cl:float
    :initform 0.0)
   (D_HIP_P_qw
    :reader D_HIP_P_qw
    :initarg :D_HIP_P_qw
    :type cl:float
    :initform 0.0)
   (KP_P_qw
    :reader KP_P_qw
    :initarg :KP_P_qw
    :type cl:float
    :initform 0.0)
   (KD_P_qw
    :reader KD_P_qw
    :initarg :KD_P_qw
    :type cl:float
    :initform 0.0)
   (KI_P_qw
    :reader KI_P_qw
    :initarg :KI_P_qw
    :type cl:float
    :initform 0.0)
   (ShoulderGain_qw
    :reader ShoulderGain_qw
    :initarg :ShoulderGain_qw
    :type cl:float
    :initform 0.0)
   (setpointPitch
    :reader setpointPitch
    :initarg :setpointPitch
    :type cl:float
    :initform 0.0)
   (pitch_error_tol
    :reader pitch_error_tol
    :initarg :pitch_error_tol
    :type cl:float
    :initform 0.0)
   (KP_X_qw
    :reader KP_X_qw
    :initarg :KP_X_qw
    :type cl:float
    :initform 0.0)
   (KD_X_qw
    :reader KD_X_qw
    :initarg :KD_X_qw
    :type cl:float
    :initform 0.0)
   (KI_X_qw
    :reader KI_X_qw
    :initarg :KI_X_qw
    :type cl:float
    :initform 0.0)
   (Angle_0
    :reader Angle_0
    :initarg :Angle_0
    :type cl:float
    :initform 0.0)
   (Angle_1
    :reader Angle_1
    :initarg :Angle_1
    :type cl:float
    :initform 0.0)
   (Angle_2
    :reader Angle_2
    :initarg :Angle_2
    :type cl:float
    :initform 0.0)
   (Angle_3
    :reader Angle_3
    :initarg :Angle_3
    :type cl:float
    :initform 0.0)
   (Angle_4
    :reader Angle_4
    :initarg :Angle_4
    :type cl:float
    :initform 0.0)
   (KD_0
    :reader KD_0
    :initarg :KD_0
    :type cl:float
    :initform 0.0)
   (KD_1
    :reader KD_1
    :initarg :KD_1
    :type cl:float
    :initform 0.0)
   (KD_2
    :reader KD_2
    :initarg :KD_2
    :type cl:float
    :initform 0.0)
   (KD_3
    :reader KD_3
    :initarg :KD_3
    :type cl:float
    :initform 0.0)
   (KD_4
    :reader KD_4
    :initarg :KD_4
    :type cl:float
    :initform 0.0)
   (Gyro_0
    :reader Gyro_0
    :initarg :Gyro_0
    :type cl:float
    :initform 0.0)
   (Gyro_1
    :reader Gyro_1
    :initarg :Gyro_1
    :type cl:float
    :initform 0.0)
   (Gyro_2
    :reader Gyro_2
    :initarg :Gyro_2
    :type cl:float
    :initform 0.0)
   (Gyro_3
    :reader Gyro_3
    :initarg :Gyro_3
    :type cl:float
    :initform 0.0)
   (Gyro_4
    :reader Gyro_4
    :initarg :Gyro_4
    :type cl:float
    :initform 0.0)
   (KP_0
    :reader KP_0
    :initarg :KP_0
    :type cl:float
    :initform 0.0)
   (KP_1
    :reader KP_1
    :initarg :KP_1
    :type cl:float
    :initform 0.0)
   (KP_2
    :reader KP_2
    :initarg :KP_2
    :type cl:float
    :initform 0.0)
   (KP_3
    :reader KP_3
    :initarg :KP_3
    :type cl:float
    :initform 0.0)
   (KP_4
    :reader KP_4
    :initarg :KP_4
    :type cl:float
    :initform 0.0))
)

(cl:defclass WalkingParam (<WalkingParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkingParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkingParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quintic_walk_msgs-msg:<WalkingParam> is deprecated: use quintic_walk_msgs-msg:WalkingParam instead.")))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:freq-val is deprecated.  Use quintic_walk_msgs-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'doubleSupportRatio-val :lambda-list '(m))
(cl:defmethod doubleSupportRatio-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:doubleSupportRatio-val is deprecated.  Use quintic_walk_msgs-msg:doubleSupportRatio instead.")
  (doubleSupportRatio m))

(cl:ensure-generic-function 'footDistance-val :lambda-list '(m))
(cl:defmethod footDistance-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:footDistance-val is deprecated.  Use quintic_walk_msgs-msg:footDistance instead.")
  (footDistance m))

(cl:ensure-generic-function 'footRise-val :lambda-list '(m))
(cl:defmethod footRise-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:footRise-val is deprecated.  Use quintic_walk_msgs-msg:footRise instead.")
  (footRise m))

(cl:ensure-generic-function 'footPutDownZOffset-val :lambda-list '(m))
(cl:defmethod footPutDownZOffset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:footPutDownZOffset-val is deprecated.  Use quintic_walk_msgs-msg:footPutDownZOffset instead.")
  (footPutDownZOffset m))

(cl:ensure-generic-function 'footPutDownPhase-val :lambda-list '(m))
(cl:defmethod footPutDownPhase-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:footPutDownPhase-val is deprecated.  Use quintic_walk_msgs-msg:footPutDownPhase instead.")
  (footPutDownPhase m))

(cl:ensure-generic-function 'footApexPhase-val :lambda-list '(m))
(cl:defmethod footApexPhase-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:footApexPhase-val is deprecated.  Use quintic_walk_msgs-msg:footApexPhase instead.")
  (footApexPhase m))

(cl:ensure-generic-function 'footOvershootRatio-val :lambda-list '(m))
(cl:defmethod footOvershootRatio-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:footOvershootRatio-val is deprecated.  Use quintic_walk_msgs-msg:footOvershootRatio instead.")
  (footOvershootRatio m))

(cl:ensure-generic-function 'footOvershootPhase-val :lambda-list '(m))
(cl:defmethod footOvershootPhase-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:footOvershootPhase-val is deprecated.  Use quintic_walk_msgs-msg:footOvershootPhase instead.")
  (footOvershootPhase m))

(cl:ensure-generic-function 'trunkHeight-val :lambda-list '(m))
(cl:defmethod trunkHeight-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkHeight-val is deprecated.  Use quintic_walk_msgs-msg:trunkHeight instead.")
  (trunkHeight m))

(cl:ensure-generic-function 'trunkPitch-val :lambda-list '(m))
(cl:defmethod trunkPitch-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkPitch-val is deprecated.  Use quintic_walk_msgs-msg:trunkPitch instead.")
  (trunkPitch m))

(cl:ensure-generic-function 'trunkPhase-val :lambda-list '(m))
(cl:defmethod trunkPhase-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkPhase-val is deprecated.  Use quintic_walk_msgs-msg:trunkPhase instead.")
  (trunkPhase m))

(cl:ensure-generic-function 'trunkXOffset-val :lambda-list '(m))
(cl:defmethod trunkXOffset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkXOffset-val is deprecated.  Use quintic_walk_msgs-msg:trunkXOffset instead.")
  (trunkXOffset m))

(cl:ensure-generic-function 'trunkYOffset-val :lambda-list '(m))
(cl:defmethod trunkYOffset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkYOffset-val is deprecated.  Use quintic_walk_msgs-msg:trunkYOffset instead.")
  (trunkYOffset m))

(cl:ensure-generic-function 'trunkSwing-val :lambda-list '(m))
(cl:defmethod trunkSwing-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkSwing-val is deprecated.  Use quintic_walk_msgs-msg:trunkSwing instead.")
  (trunkSwing m))

(cl:ensure-generic-function 'trunkPause-val :lambda-list '(m))
(cl:defmethod trunkPause-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkPause-val is deprecated.  Use quintic_walk_msgs-msg:trunkPause instead.")
  (trunkPause m))

(cl:ensure-generic-function 'trunkXOffsetPCoefForward-val :lambda-list '(m))
(cl:defmethod trunkXOffsetPCoefForward-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkXOffsetPCoefForward-val is deprecated.  Use quintic_walk_msgs-msg:trunkXOffsetPCoefForward instead.")
  (trunkXOffsetPCoefForward m))

(cl:ensure-generic-function 'trunkXOffsetPCoefTurn-val :lambda-list '(m))
(cl:defmethod trunkXOffsetPCoefTurn-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkXOffsetPCoefTurn-val is deprecated.  Use quintic_walk_msgs-msg:trunkXOffsetPCoefTurn instead.")
  (trunkXOffsetPCoefTurn m))

(cl:ensure-generic-function 'trunkPitchPCoefForward-val :lambda-list '(m))
(cl:defmethod trunkPitchPCoefForward-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkPitchPCoefForward-val is deprecated.  Use quintic_walk_msgs-msg:trunkPitchPCoefForward instead.")
  (trunkPitchPCoefForward m))

(cl:ensure-generic-function 'trunkPitchPCoefTurn-val :lambda-list '(m))
(cl:defmethod trunkPitchPCoefTurn-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkPitchPCoefTurn-val is deprecated.  Use quintic_walk_msgs-msg:trunkPitchPCoefTurn instead.")
  (trunkPitchPCoefTurn m))

(cl:ensure-generic-function 'trunkYOnlyInDoubleSupport-val :lambda-list '(m))
(cl:defmethod trunkYOnlyInDoubleSupport-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:trunkYOnlyInDoubleSupport-val is deprecated.  Use quintic_walk_msgs-msg:trunkYOnlyInDoubleSupport instead.")
  (trunkYOnlyInDoubleSupport m))

(cl:ensure-generic-function 'XMove-val :lambda-list '(m))
(cl:defmethod XMove-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:XMove-val is deprecated.  Use quintic_walk_msgs-msg:XMove instead.")
  (XMove m))

(cl:ensure-generic-function 'YMove-val :lambda-list '(m))
(cl:defmethod YMove-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:YMove-val is deprecated.  Use quintic_walk_msgs-msg:YMove instead.")
  (YMove m))

(cl:ensure-generic-function 'ZMove-val :lambda-list '(m))
(cl:defmethod ZMove-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:ZMove-val is deprecated.  Use quintic_walk_msgs-msg:ZMove instead.")
  (ZMove m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:mode-val is deprecated.  Use quintic_walk_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'tuning-val :lambda-list '(m))
(cl:defmethod tuning-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:tuning-val is deprecated.  Use quintic_walk_msgs-msg:tuning instead.")
  (tuning m))

(cl:ensure-generic-function 'D_ANKLE_P_qw-val :lambda-list '(m))
(cl:defmethod D_ANKLE_P_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:D_ANKLE_P_qw-val is deprecated.  Use quintic_walk_msgs-msg:D_ANKLE_P_qw instead.")
  (D_ANKLE_P_qw m))

(cl:ensure-generic-function 'D_KNEE_qw-val :lambda-list '(m))
(cl:defmethod D_KNEE_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:D_KNEE_qw-val is deprecated.  Use quintic_walk_msgs-msg:D_KNEE_qw instead.")
  (D_KNEE_qw m))

(cl:ensure-generic-function 'D_HIP_P_qw-val :lambda-list '(m))
(cl:defmethod D_HIP_P_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:D_HIP_P_qw-val is deprecated.  Use quintic_walk_msgs-msg:D_HIP_P_qw instead.")
  (D_HIP_P_qw m))

(cl:ensure-generic-function 'KP_P_qw-val :lambda-list '(m))
(cl:defmethod KP_P_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KP_P_qw-val is deprecated.  Use quintic_walk_msgs-msg:KP_P_qw instead.")
  (KP_P_qw m))

(cl:ensure-generic-function 'KD_P_qw-val :lambda-list '(m))
(cl:defmethod KD_P_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KD_P_qw-val is deprecated.  Use quintic_walk_msgs-msg:KD_P_qw instead.")
  (KD_P_qw m))

(cl:ensure-generic-function 'KI_P_qw-val :lambda-list '(m))
(cl:defmethod KI_P_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KI_P_qw-val is deprecated.  Use quintic_walk_msgs-msg:KI_P_qw instead.")
  (KI_P_qw m))

(cl:ensure-generic-function 'ShoulderGain_qw-val :lambda-list '(m))
(cl:defmethod ShoulderGain_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:ShoulderGain_qw-val is deprecated.  Use quintic_walk_msgs-msg:ShoulderGain_qw instead.")
  (ShoulderGain_qw m))

(cl:ensure-generic-function 'setpointPitch-val :lambda-list '(m))
(cl:defmethod setpointPitch-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:setpointPitch-val is deprecated.  Use quintic_walk_msgs-msg:setpointPitch instead.")
  (setpointPitch m))

(cl:ensure-generic-function 'pitch_error_tol-val :lambda-list '(m))
(cl:defmethod pitch_error_tol-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:pitch_error_tol-val is deprecated.  Use quintic_walk_msgs-msg:pitch_error_tol instead.")
  (pitch_error_tol m))

(cl:ensure-generic-function 'KP_X_qw-val :lambda-list '(m))
(cl:defmethod KP_X_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KP_X_qw-val is deprecated.  Use quintic_walk_msgs-msg:KP_X_qw instead.")
  (KP_X_qw m))

(cl:ensure-generic-function 'KD_X_qw-val :lambda-list '(m))
(cl:defmethod KD_X_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KD_X_qw-val is deprecated.  Use quintic_walk_msgs-msg:KD_X_qw instead.")
  (KD_X_qw m))

(cl:ensure-generic-function 'KI_X_qw-val :lambda-list '(m))
(cl:defmethod KI_X_qw-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KI_X_qw-val is deprecated.  Use quintic_walk_msgs-msg:KI_X_qw instead.")
  (KI_X_qw m))

(cl:ensure-generic-function 'Angle_0-val :lambda-list '(m))
(cl:defmethod Angle_0-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Angle_0-val is deprecated.  Use quintic_walk_msgs-msg:Angle_0 instead.")
  (Angle_0 m))

(cl:ensure-generic-function 'Angle_1-val :lambda-list '(m))
(cl:defmethod Angle_1-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Angle_1-val is deprecated.  Use quintic_walk_msgs-msg:Angle_1 instead.")
  (Angle_1 m))

(cl:ensure-generic-function 'Angle_2-val :lambda-list '(m))
(cl:defmethod Angle_2-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Angle_2-val is deprecated.  Use quintic_walk_msgs-msg:Angle_2 instead.")
  (Angle_2 m))

(cl:ensure-generic-function 'Angle_3-val :lambda-list '(m))
(cl:defmethod Angle_3-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Angle_3-val is deprecated.  Use quintic_walk_msgs-msg:Angle_3 instead.")
  (Angle_3 m))

(cl:ensure-generic-function 'Angle_4-val :lambda-list '(m))
(cl:defmethod Angle_4-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Angle_4-val is deprecated.  Use quintic_walk_msgs-msg:Angle_4 instead.")
  (Angle_4 m))

(cl:ensure-generic-function 'KD_0-val :lambda-list '(m))
(cl:defmethod KD_0-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KD_0-val is deprecated.  Use quintic_walk_msgs-msg:KD_0 instead.")
  (KD_0 m))

(cl:ensure-generic-function 'KD_1-val :lambda-list '(m))
(cl:defmethod KD_1-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KD_1-val is deprecated.  Use quintic_walk_msgs-msg:KD_1 instead.")
  (KD_1 m))

(cl:ensure-generic-function 'KD_2-val :lambda-list '(m))
(cl:defmethod KD_2-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KD_2-val is deprecated.  Use quintic_walk_msgs-msg:KD_2 instead.")
  (KD_2 m))

(cl:ensure-generic-function 'KD_3-val :lambda-list '(m))
(cl:defmethod KD_3-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KD_3-val is deprecated.  Use quintic_walk_msgs-msg:KD_3 instead.")
  (KD_3 m))

(cl:ensure-generic-function 'KD_4-val :lambda-list '(m))
(cl:defmethod KD_4-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KD_4-val is deprecated.  Use quintic_walk_msgs-msg:KD_4 instead.")
  (KD_4 m))

(cl:ensure-generic-function 'Gyro_0-val :lambda-list '(m))
(cl:defmethod Gyro_0-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Gyro_0-val is deprecated.  Use quintic_walk_msgs-msg:Gyro_0 instead.")
  (Gyro_0 m))

(cl:ensure-generic-function 'Gyro_1-val :lambda-list '(m))
(cl:defmethod Gyro_1-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Gyro_1-val is deprecated.  Use quintic_walk_msgs-msg:Gyro_1 instead.")
  (Gyro_1 m))

(cl:ensure-generic-function 'Gyro_2-val :lambda-list '(m))
(cl:defmethod Gyro_2-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Gyro_2-val is deprecated.  Use quintic_walk_msgs-msg:Gyro_2 instead.")
  (Gyro_2 m))

(cl:ensure-generic-function 'Gyro_3-val :lambda-list '(m))
(cl:defmethod Gyro_3-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Gyro_3-val is deprecated.  Use quintic_walk_msgs-msg:Gyro_3 instead.")
  (Gyro_3 m))

(cl:ensure-generic-function 'Gyro_4-val :lambda-list '(m))
(cl:defmethod Gyro_4-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:Gyro_4-val is deprecated.  Use quintic_walk_msgs-msg:Gyro_4 instead.")
  (Gyro_4 m))

(cl:ensure-generic-function 'KP_0-val :lambda-list '(m))
(cl:defmethod KP_0-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KP_0-val is deprecated.  Use quintic_walk_msgs-msg:KP_0 instead.")
  (KP_0 m))

(cl:ensure-generic-function 'KP_1-val :lambda-list '(m))
(cl:defmethod KP_1-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KP_1-val is deprecated.  Use quintic_walk_msgs-msg:KP_1 instead.")
  (KP_1 m))

(cl:ensure-generic-function 'KP_2-val :lambda-list '(m))
(cl:defmethod KP_2-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KP_2-val is deprecated.  Use quintic_walk_msgs-msg:KP_2 instead.")
  (KP_2 m))

(cl:ensure-generic-function 'KP_3-val :lambda-list '(m))
(cl:defmethod KP_3-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KP_3-val is deprecated.  Use quintic_walk_msgs-msg:KP_3 instead.")
  (KP_3 m))

(cl:ensure-generic-function 'KP_4-val :lambda-list '(m))
(cl:defmethod KP_4-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quintic_walk_msgs-msg:KP_4-val is deprecated.  Use quintic_walk_msgs-msg:KP_4 instead.")
  (KP_4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkingParam>) ostream)
  "Serializes a message object of type '<WalkingParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doubleSupportRatio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footRise))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footPutDownZOffset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footPutDownPhase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footApexPhase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footOvershootRatio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footOvershootPhase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkPitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkPhase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkXOffset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkYOffset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkSwing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkPause))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkXOffsetPCoefForward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkXOffsetPCoefTurn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkPitchPCoefForward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trunkPitchPCoefTurn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trunkYOnlyInDoubleSupport) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'XMove))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'YMove))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ZMove))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tuning) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D_ANKLE_P_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D_KNEE_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D_HIP_P_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_P_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_P_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KI_P_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ShoulderGain_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'setpointPitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_error_tol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_X_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_X_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KI_X_qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Angle_0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Angle_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Angle_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Angle_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Angle_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KD_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gyro_0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gyro_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gyro_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gyro_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gyro_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KP_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkingParam>) istream)
  "Deserializes a message object of type '<WalkingParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'freq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doubleSupportRatio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footDistance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footRise) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footPutDownZOffset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footPutDownPhase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footApexPhase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footOvershootRatio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footOvershootPhase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkHeight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkPitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkPhase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkXOffset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkYOffset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkSwing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkPause) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkXOffsetPCoefForward) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkXOffsetPCoefTurn) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkPitchPCoefForward) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trunkPitchPCoefTurn) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'trunkYOnlyInDoubleSupport) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'XMove) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'YMove) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ZMove) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'tuning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_ANKLE_P_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_KNEE_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_HIP_P_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_P_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_P_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KI_P_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ShoulderGain_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'setpointPitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_error_tol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_X_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_X_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KI_X_qw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angle_0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angle_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angle_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angle_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angle_4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KD_4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gyro_0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gyro_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gyro_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gyro_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gyro_4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KP_4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkingParam>)))
  "Returns string type for a message object of type '<WalkingParam>"
  "quintic_walk_msgs/WalkingParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkingParam)))
  "Returns string type for a message object of type 'WalkingParam"
  "quintic_walk_msgs/WalkingParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkingParam>)))
  "Returns md5sum for a message object of type '<WalkingParam>"
  "9f884ae298d19a76dad330f2c4daca90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkingParam)))
  "Returns md5sum for a message object of type 'WalkingParam"
  "9f884ae298d19a76dad330f2c4daca90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkingParam>)))
  "Returns full string definition for message of type '<WalkingParam>"
  (cl:format cl:nil "float32 freq~%float32 doubleSupportRatio~%float32 footDistance~%float32 footRise~%float32 footPutDownZOffset~%float32 footPutDownPhase~%float32 footApexPhase~%float32 footOvershootRatio~%float32 footOvershootPhase~%float32 trunkHeight~%float32 trunkPitch~%float32 trunkPhase~%float32 trunkXOffset~%float32 trunkYOffset~%float32 trunkSwing~%float32 trunkPause~%float32 trunkXOffsetPCoefForward~%float32 trunkXOffsetPCoefTurn~%float32 trunkPitchPCoefForward~%float32 trunkPitchPCoefTurn~%bool trunkYOnlyInDoubleSupport~%~%float32 XMove~%float32 YMove~%float32 ZMove~%string mode~%bool tuning~%~%float32 D_ANKLE_P_qw~%float32 D_KNEE_qw~%float32 D_HIP_P_qw~%~%~%float32 KP_P_qw~%float32 KD_P_qw~%float32 KI_P_qw~%~%~%~%float32 ShoulderGain_qw~%float32 setpointPitch~%float32 pitch_error_tol~%~%float32 KP_X_qw~%float32 KD_X_qw~%float32 KI_X_qw~%~%~%float32 Angle_0~%float32 Angle_1~%float32 Angle_2~%float32 Angle_3~%float32 Angle_4~%~%float32 KD_0~%float32 KD_1~%float32 KD_2~%float32 KD_3~%float32 KD_4~%~%float32 Gyro_0~%float32 Gyro_1~%float32 Gyro_2~%float32 Gyro_3~%float32 Gyro_4~%~%float32 KP_0~%float32 KP_1~%float32 KP_2~%float32 KP_3~%float32 KP_4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkingParam)))
  "Returns full string definition for message of type 'WalkingParam"
  (cl:format cl:nil "float32 freq~%float32 doubleSupportRatio~%float32 footDistance~%float32 footRise~%float32 footPutDownZOffset~%float32 footPutDownPhase~%float32 footApexPhase~%float32 footOvershootRatio~%float32 footOvershootPhase~%float32 trunkHeight~%float32 trunkPitch~%float32 trunkPhase~%float32 trunkXOffset~%float32 trunkYOffset~%float32 trunkSwing~%float32 trunkPause~%float32 trunkXOffsetPCoefForward~%float32 trunkXOffsetPCoefTurn~%float32 trunkPitchPCoefForward~%float32 trunkPitchPCoefTurn~%bool trunkYOnlyInDoubleSupport~%~%float32 XMove~%float32 YMove~%float32 ZMove~%string mode~%bool tuning~%~%float32 D_ANKLE_P_qw~%float32 D_KNEE_qw~%float32 D_HIP_P_qw~%~%~%float32 KP_P_qw~%float32 KD_P_qw~%float32 KI_P_qw~%~%~%~%float32 ShoulderGain_qw~%float32 setpointPitch~%float32 pitch_error_tol~%~%float32 KP_X_qw~%float32 KD_X_qw~%float32 KI_X_qw~%~%~%float32 Angle_0~%float32 Angle_1~%float32 Angle_2~%float32 Angle_3~%float32 Angle_4~%~%float32 KD_0~%float32 KD_1~%float32 KD_2~%float32 KD_3~%float32 KD_4~%~%float32 Gyro_0~%float32 Gyro_1~%float32 Gyro_2~%float32 Gyro_3~%float32 Gyro_4~%~%float32 KP_0~%float32 KP_1~%float32 KP_2~%float32 KP_3~%float32 KP_4~%~%~%~%~%"))
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
     1
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'mode))
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
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkingParam>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkingParam
    (cl:cons ':freq (freq msg))
    (cl:cons ':doubleSupportRatio (doubleSupportRatio msg))
    (cl:cons ':footDistance (footDistance msg))
    (cl:cons ':footRise (footRise msg))
    (cl:cons ':footPutDownZOffset (footPutDownZOffset msg))
    (cl:cons ':footPutDownPhase (footPutDownPhase msg))
    (cl:cons ':footApexPhase (footApexPhase msg))
    (cl:cons ':footOvershootRatio (footOvershootRatio msg))
    (cl:cons ':footOvershootPhase (footOvershootPhase msg))
    (cl:cons ':trunkHeight (trunkHeight msg))
    (cl:cons ':trunkPitch (trunkPitch msg))
    (cl:cons ':trunkPhase (trunkPhase msg))
    (cl:cons ':trunkXOffset (trunkXOffset msg))
    (cl:cons ':trunkYOffset (trunkYOffset msg))
    (cl:cons ':trunkSwing (trunkSwing msg))
    (cl:cons ':trunkPause (trunkPause msg))
    (cl:cons ':trunkXOffsetPCoefForward (trunkXOffsetPCoefForward msg))
    (cl:cons ':trunkXOffsetPCoefTurn (trunkXOffsetPCoefTurn msg))
    (cl:cons ':trunkPitchPCoefForward (trunkPitchPCoefForward msg))
    (cl:cons ':trunkPitchPCoefTurn (trunkPitchPCoefTurn msg))
    (cl:cons ':trunkYOnlyInDoubleSupport (trunkYOnlyInDoubleSupport msg))
    (cl:cons ':XMove (XMove msg))
    (cl:cons ':YMove (YMove msg))
    (cl:cons ':ZMove (ZMove msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':tuning (tuning msg))
    (cl:cons ':D_ANKLE_P_qw (D_ANKLE_P_qw msg))
    (cl:cons ':D_KNEE_qw (D_KNEE_qw msg))
    (cl:cons ':D_HIP_P_qw (D_HIP_P_qw msg))
    (cl:cons ':KP_P_qw (KP_P_qw msg))
    (cl:cons ':KD_P_qw (KD_P_qw msg))
    (cl:cons ':KI_P_qw (KI_P_qw msg))
    (cl:cons ':ShoulderGain_qw (ShoulderGain_qw msg))
    (cl:cons ':setpointPitch (setpointPitch msg))
    (cl:cons ':pitch_error_tol (pitch_error_tol msg))
    (cl:cons ':KP_X_qw (KP_X_qw msg))
    (cl:cons ':KD_X_qw (KD_X_qw msg))
    (cl:cons ':KI_X_qw (KI_X_qw msg))
    (cl:cons ':Angle_0 (Angle_0 msg))
    (cl:cons ':Angle_1 (Angle_1 msg))
    (cl:cons ':Angle_2 (Angle_2 msg))
    (cl:cons ':Angle_3 (Angle_3 msg))
    (cl:cons ':Angle_4 (Angle_4 msg))
    (cl:cons ':KD_0 (KD_0 msg))
    (cl:cons ':KD_1 (KD_1 msg))
    (cl:cons ':KD_2 (KD_2 msg))
    (cl:cons ':KD_3 (KD_3 msg))
    (cl:cons ':KD_4 (KD_4 msg))
    (cl:cons ':Gyro_0 (Gyro_0 msg))
    (cl:cons ':Gyro_1 (Gyro_1 msg))
    (cl:cons ':Gyro_2 (Gyro_2 msg))
    (cl:cons ':Gyro_3 (Gyro_3 msg))
    (cl:cons ':Gyro_4 (Gyro_4 msg))
    (cl:cons ':KP_0 (KP_0 msg))
    (cl:cons ':KP_1 (KP_1 msg))
    (cl:cons ':KP_2 (KP_2 msg))
    (cl:cons ':KP_3 (KP_3 msg))
    (cl:cons ':KP_4 (KP_4 msg))
))
