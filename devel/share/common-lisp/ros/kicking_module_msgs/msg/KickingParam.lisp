; Auto-generated. Do not edit!


(cl:in-package kicking_module_msgs-msg)


;//! \htmlinclude KickingParam.msg.html

(cl:defclass <KickingParam> (roslisp-msg-protocol:ros-message)
  ((Torso_X
    :reader Torso_X
    :initarg :Torso_X
    :type cl:float
    :initform 0.0)
   (Torso_Y
    :reader Torso_Y
    :initarg :Torso_Y
    :type cl:float
    :initform 0.0)
   (Torso_Z
    :reader Torso_Z
    :initarg :Torso_Z
    :type cl:float
    :initform 0.0)
   (L_Shift_X
    :reader L_Shift_X
    :initarg :L_Shift_X
    :type cl:float
    :initform 0.0)
   (L_Shift_Y
    :reader L_Shift_Y
    :initarg :L_Shift_Y
    :type cl:float
    :initform 0.0)
   (L_Shift_Z
    :reader L_Shift_Z
    :initarg :L_Shift_Z
    :type cl:float
    :initform 0.0)
   (R_Shift_X
    :reader R_Shift_X
    :initarg :R_Shift_X
    :type cl:float
    :initform 0.0)
   (R_Shift_Y
    :reader R_Shift_Y
    :initarg :R_Shift_Y
    :type cl:float
    :initform 0.0)
   (R_Shift_Z
    :reader R_Shift_Z
    :initarg :R_Shift_Z
    :type cl:float
    :initform 0.0)
   (L_Lift_X
    :reader L_Lift_X
    :initarg :L_Lift_X
    :type cl:float
    :initform 0.0)
   (L_Lift_Y
    :reader L_Lift_Y
    :initarg :L_Lift_Y
    :type cl:float
    :initform 0.0)
   (L_Lift_Z
    :reader L_Lift_Z
    :initarg :L_Lift_Z
    :type cl:float
    :initform 0.0)
   (R_Lift_X
    :reader R_Lift_X
    :initarg :R_Lift_X
    :type cl:float
    :initform 0.0)
   (R_Lift_Y
    :reader R_Lift_Y
    :initarg :R_Lift_Y
    :type cl:float
    :initform 0.0)
   (R_Lift_Z
    :reader R_Lift_Z
    :initarg :R_Lift_Z
    :type cl:float
    :initform 0.0)
   (L_Swing_X
    :reader L_Swing_X
    :initarg :L_Swing_X
    :type cl:float
    :initform 0.0)
   (L_Swing_Y
    :reader L_Swing_Y
    :initarg :L_Swing_Y
    :type cl:float
    :initform 0.0)
   (L_Swing_Z
    :reader L_Swing_Z
    :initarg :L_Swing_Z
    :type cl:float
    :initform 0.0)
   (R_Swing_X
    :reader R_Swing_X
    :initarg :R_Swing_X
    :type cl:float
    :initform 0.0)
   (R_Swing_Y
    :reader R_Swing_Y
    :initarg :R_Swing_Y
    :type cl:float
    :initform 0.0)
   (R_Swing_Z
    :reader R_Swing_Z
    :initarg :R_Swing_Z
    :type cl:float
    :initform 0.0)
   (L_Retract_X
    :reader L_Retract_X
    :initarg :L_Retract_X
    :type cl:float
    :initform 0.0)
   (L_Retract_Y
    :reader L_Retract_Y
    :initarg :L_Retract_Y
    :type cl:float
    :initform 0.0)
   (L_Retract_Z
    :reader L_Retract_Z
    :initarg :L_Retract_Z
    :type cl:float
    :initform 0.0)
   (R_Retract_X
    :reader R_Retract_X
    :initarg :R_Retract_X
    :type cl:float
    :initform 0.0)
   (R_Retract_Y
    :reader R_Retract_Y
    :initarg :R_Retract_Y
    :type cl:float
    :initform 0.0)
   (R_Retract_Z
    :reader R_Retract_Z
    :initarg :R_Retract_Z
    :type cl:float
    :initform 0.0)
   (Torso_Pitch
    :reader Torso_Pitch
    :initarg :Torso_Pitch
    :type cl:float
    :initform 0.0)
   (Shift_Roll
    :reader Shift_Roll
    :initarg :Shift_Roll
    :type cl:float
    :initform 0.0)
   (Lift_Roll
    :reader Lift_Roll
    :initarg :Lift_Roll
    :type cl:float
    :initform 0.0)
   (Lift_Pitch
    :reader Lift_Pitch
    :initarg :Lift_Pitch
    :type cl:float
    :initform 0.0)
   (Swing_Roll
    :reader Swing_Roll
    :initarg :Swing_Roll
    :type cl:float
    :initform 0.0)
   (Swing_Pitch
    :reader Swing_Pitch
    :initarg :Swing_Pitch
    :type cl:float
    :initform 0.0)
   (Retract_Roll
    :reader Retract_Roll
    :initarg :Retract_Roll
    :type cl:float
    :initform 0.0)
   (Retract_Pitch
    :reader Retract_Pitch
    :initarg :Retract_Pitch
    :type cl:float
    :initform 0.0)
   (SHIFT_TIME
    :reader SHIFT_TIME
    :initarg :SHIFT_TIME
    :type cl:float
    :initform 0.0)
   (LIFT_TIME
    :reader LIFT_TIME
    :initarg :LIFT_TIME
    :type cl:float
    :initform 0.0)
   (SWING_TIME
    :reader SWING_TIME
    :initarg :SWING_TIME
    :type cl:float
    :initform 0.0)
   (RETRACT_TIME
    :reader RETRACT_TIME
    :initarg :RETRACT_TIME
    :type cl:float
    :initform 0.0)
   (LANDING_TIME
    :reader LANDING_TIME
    :initarg :LANDING_TIME
    :type cl:float
    :initform 0.0)
   (FINISHED_TIME
    :reader FINISHED_TIME
    :initarg :FINISHED_TIME
    :type cl:float
    :initform 0.0))
)

(cl:defclass KickingParam (<KickingParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KickingParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KickingParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kicking_module_msgs-msg:<KickingParam> is deprecated: use kicking_module_msgs-msg:KickingParam instead.")))

(cl:ensure-generic-function 'Torso_X-val :lambda-list '(m))
(cl:defmethod Torso_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Torso_X-val is deprecated.  Use kicking_module_msgs-msg:Torso_X instead.")
  (Torso_X m))

(cl:ensure-generic-function 'Torso_Y-val :lambda-list '(m))
(cl:defmethod Torso_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Torso_Y-val is deprecated.  Use kicking_module_msgs-msg:Torso_Y instead.")
  (Torso_Y m))

(cl:ensure-generic-function 'Torso_Z-val :lambda-list '(m))
(cl:defmethod Torso_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Torso_Z-val is deprecated.  Use kicking_module_msgs-msg:Torso_Z instead.")
  (Torso_Z m))

(cl:ensure-generic-function 'L_Shift_X-val :lambda-list '(m))
(cl:defmethod L_Shift_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Shift_X-val is deprecated.  Use kicking_module_msgs-msg:L_Shift_X instead.")
  (L_Shift_X m))

(cl:ensure-generic-function 'L_Shift_Y-val :lambda-list '(m))
(cl:defmethod L_Shift_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Shift_Y-val is deprecated.  Use kicking_module_msgs-msg:L_Shift_Y instead.")
  (L_Shift_Y m))

(cl:ensure-generic-function 'L_Shift_Z-val :lambda-list '(m))
(cl:defmethod L_Shift_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Shift_Z-val is deprecated.  Use kicking_module_msgs-msg:L_Shift_Z instead.")
  (L_Shift_Z m))

(cl:ensure-generic-function 'R_Shift_X-val :lambda-list '(m))
(cl:defmethod R_Shift_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Shift_X-val is deprecated.  Use kicking_module_msgs-msg:R_Shift_X instead.")
  (R_Shift_X m))

(cl:ensure-generic-function 'R_Shift_Y-val :lambda-list '(m))
(cl:defmethod R_Shift_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Shift_Y-val is deprecated.  Use kicking_module_msgs-msg:R_Shift_Y instead.")
  (R_Shift_Y m))

(cl:ensure-generic-function 'R_Shift_Z-val :lambda-list '(m))
(cl:defmethod R_Shift_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Shift_Z-val is deprecated.  Use kicking_module_msgs-msg:R_Shift_Z instead.")
  (R_Shift_Z m))

(cl:ensure-generic-function 'L_Lift_X-val :lambda-list '(m))
(cl:defmethod L_Lift_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Lift_X-val is deprecated.  Use kicking_module_msgs-msg:L_Lift_X instead.")
  (L_Lift_X m))

(cl:ensure-generic-function 'L_Lift_Y-val :lambda-list '(m))
(cl:defmethod L_Lift_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Lift_Y-val is deprecated.  Use kicking_module_msgs-msg:L_Lift_Y instead.")
  (L_Lift_Y m))

(cl:ensure-generic-function 'L_Lift_Z-val :lambda-list '(m))
(cl:defmethod L_Lift_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Lift_Z-val is deprecated.  Use kicking_module_msgs-msg:L_Lift_Z instead.")
  (L_Lift_Z m))

(cl:ensure-generic-function 'R_Lift_X-val :lambda-list '(m))
(cl:defmethod R_Lift_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Lift_X-val is deprecated.  Use kicking_module_msgs-msg:R_Lift_X instead.")
  (R_Lift_X m))

(cl:ensure-generic-function 'R_Lift_Y-val :lambda-list '(m))
(cl:defmethod R_Lift_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Lift_Y-val is deprecated.  Use kicking_module_msgs-msg:R_Lift_Y instead.")
  (R_Lift_Y m))

(cl:ensure-generic-function 'R_Lift_Z-val :lambda-list '(m))
(cl:defmethod R_Lift_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Lift_Z-val is deprecated.  Use kicking_module_msgs-msg:R_Lift_Z instead.")
  (R_Lift_Z m))

(cl:ensure-generic-function 'L_Swing_X-val :lambda-list '(m))
(cl:defmethod L_Swing_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Swing_X-val is deprecated.  Use kicking_module_msgs-msg:L_Swing_X instead.")
  (L_Swing_X m))

(cl:ensure-generic-function 'L_Swing_Y-val :lambda-list '(m))
(cl:defmethod L_Swing_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Swing_Y-val is deprecated.  Use kicking_module_msgs-msg:L_Swing_Y instead.")
  (L_Swing_Y m))

(cl:ensure-generic-function 'L_Swing_Z-val :lambda-list '(m))
(cl:defmethod L_Swing_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Swing_Z-val is deprecated.  Use kicking_module_msgs-msg:L_Swing_Z instead.")
  (L_Swing_Z m))

(cl:ensure-generic-function 'R_Swing_X-val :lambda-list '(m))
(cl:defmethod R_Swing_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Swing_X-val is deprecated.  Use kicking_module_msgs-msg:R_Swing_X instead.")
  (R_Swing_X m))

(cl:ensure-generic-function 'R_Swing_Y-val :lambda-list '(m))
(cl:defmethod R_Swing_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Swing_Y-val is deprecated.  Use kicking_module_msgs-msg:R_Swing_Y instead.")
  (R_Swing_Y m))

(cl:ensure-generic-function 'R_Swing_Z-val :lambda-list '(m))
(cl:defmethod R_Swing_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Swing_Z-val is deprecated.  Use kicking_module_msgs-msg:R_Swing_Z instead.")
  (R_Swing_Z m))

(cl:ensure-generic-function 'L_Retract_X-val :lambda-list '(m))
(cl:defmethod L_Retract_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Retract_X-val is deprecated.  Use kicking_module_msgs-msg:L_Retract_X instead.")
  (L_Retract_X m))

(cl:ensure-generic-function 'L_Retract_Y-val :lambda-list '(m))
(cl:defmethod L_Retract_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Retract_Y-val is deprecated.  Use kicking_module_msgs-msg:L_Retract_Y instead.")
  (L_Retract_Y m))

(cl:ensure-generic-function 'L_Retract_Z-val :lambda-list '(m))
(cl:defmethod L_Retract_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:L_Retract_Z-val is deprecated.  Use kicking_module_msgs-msg:L_Retract_Z instead.")
  (L_Retract_Z m))

(cl:ensure-generic-function 'R_Retract_X-val :lambda-list '(m))
(cl:defmethod R_Retract_X-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Retract_X-val is deprecated.  Use kicking_module_msgs-msg:R_Retract_X instead.")
  (R_Retract_X m))

(cl:ensure-generic-function 'R_Retract_Y-val :lambda-list '(m))
(cl:defmethod R_Retract_Y-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Retract_Y-val is deprecated.  Use kicking_module_msgs-msg:R_Retract_Y instead.")
  (R_Retract_Y m))

(cl:ensure-generic-function 'R_Retract_Z-val :lambda-list '(m))
(cl:defmethod R_Retract_Z-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:R_Retract_Z-val is deprecated.  Use kicking_module_msgs-msg:R_Retract_Z instead.")
  (R_Retract_Z m))

(cl:ensure-generic-function 'Torso_Pitch-val :lambda-list '(m))
(cl:defmethod Torso_Pitch-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Torso_Pitch-val is deprecated.  Use kicking_module_msgs-msg:Torso_Pitch instead.")
  (Torso_Pitch m))

(cl:ensure-generic-function 'Shift_Roll-val :lambda-list '(m))
(cl:defmethod Shift_Roll-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Shift_Roll-val is deprecated.  Use kicking_module_msgs-msg:Shift_Roll instead.")
  (Shift_Roll m))

(cl:ensure-generic-function 'Lift_Roll-val :lambda-list '(m))
(cl:defmethod Lift_Roll-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Lift_Roll-val is deprecated.  Use kicking_module_msgs-msg:Lift_Roll instead.")
  (Lift_Roll m))

(cl:ensure-generic-function 'Lift_Pitch-val :lambda-list '(m))
(cl:defmethod Lift_Pitch-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Lift_Pitch-val is deprecated.  Use kicking_module_msgs-msg:Lift_Pitch instead.")
  (Lift_Pitch m))

(cl:ensure-generic-function 'Swing_Roll-val :lambda-list '(m))
(cl:defmethod Swing_Roll-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Swing_Roll-val is deprecated.  Use kicking_module_msgs-msg:Swing_Roll instead.")
  (Swing_Roll m))

(cl:ensure-generic-function 'Swing_Pitch-val :lambda-list '(m))
(cl:defmethod Swing_Pitch-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Swing_Pitch-val is deprecated.  Use kicking_module_msgs-msg:Swing_Pitch instead.")
  (Swing_Pitch m))

(cl:ensure-generic-function 'Retract_Roll-val :lambda-list '(m))
(cl:defmethod Retract_Roll-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Retract_Roll-val is deprecated.  Use kicking_module_msgs-msg:Retract_Roll instead.")
  (Retract_Roll m))

(cl:ensure-generic-function 'Retract_Pitch-val :lambda-list '(m))
(cl:defmethod Retract_Pitch-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:Retract_Pitch-val is deprecated.  Use kicking_module_msgs-msg:Retract_Pitch instead.")
  (Retract_Pitch m))

(cl:ensure-generic-function 'SHIFT_TIME-val :lambda-list '(m))
(cl:defmethod SHIFT_TIME-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:SHIFT_TIME-val is deprecated.  Use kicking_module_msgs-msg:SHIFT_TIME instead.")
  (SHIFT_TIME m))

(cl:ensure-generic-function 'LIFT_TIME-val :lambda-list '(m))
(cl:defmethod LIFT_TIME-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:LIFT_TIME-val is deprecated.  Use kicking_module_msgs-msg:LIFT_TIME instead.")
  (LIFT_TIME m))

(cl:ensure-generic-function 'SWING_TIME-val :lambda-list '(m))
(cl:defmethod SWING_TIME-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:SWING_TIME-val is deprecated.  Use kicking_module_msgs-msg:SWING_TIME instead.")
  (SWING_TIME m))

(cl:ensure-generic-function 'RETRACT_TIME-val :lambda-list '(m))
(cl:defmethod RETRACT_TIME-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:RETRACT_TIME-val is deprecated.  Use kicking_module_msgs-msg:RETRACT_TIME instead.")
  (RETRACT_TIME m))

(cl:ensure-generic-function 'LANDING_TIME-val :lambda-list '(m))
(cl:defmethod LANDING_TIME-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:LANDING_TIME-val is deprecated.  Use kicking_module_msgs-msg:LANDING_TIME instead.")
  (LANDING_TIME m))

(cl:ensure-generic-function 'FINISHED_TIME-val :lambda-list '(m))
(cl:defmethod FINISHED_TIME-val ((m <KickingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kicking_module_msgs-msg:FINISHED_TIME-val is deprecated.  Use kicking_module_msgs-msg:FINISHED_TIME instead.")
  (FINISHED_TIME m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KickingParam>) ostream)
  "Serializes a message object of type '<KickingParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Torso_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Torso_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Torso_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Shift_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Shift_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Shift_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Shift_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Shift_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Shift_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Lift_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Lift_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Lift_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Lift_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Lift_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Lift_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Swing_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Swing_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Swing_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Swing_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Swing_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Swing_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Retract_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Retract_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Retract_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Retract_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Retract_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Retract_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Torso_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Shift_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Lift_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Lift_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Swing_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Swing_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Retract_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Retract_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SHIFT_TIME))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LIFT_TIME))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SWING_TIME))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RETRACT_TIME))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LANDING_TIME))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'FINISHED_TIME))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KickingParam>) istream)
  "Deserializes a message object of type '<KickingParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Torso_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Torso_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Torso_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Shift_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Shift_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Shift_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Shift_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Shift_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Shift_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Lift_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Lift_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Lift_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Lift_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Lift_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Lift_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Swing_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Swing_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Swing_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Swing_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Swing_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Swing_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Retract_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Retract_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Retract_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Retract_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Retract_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Retract_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Torso_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Shift_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Lift_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Lift_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Swing_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Swing_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Retract_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Retract_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SHIFT_TIME) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LIFT_TIME) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SWING_TIME) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RETRACT_TIME) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LANDING_TIME) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'FINISHED_TIME) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KickingParam>)))
  "Returns string type for a message object of type '<KickingParam>"
  "kicking_module_msgs/KickingParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickingParam)))
  "Returns string type for a message object of type 'KickingParam"
  "kicking_module_msgs/KickingParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KickingParam>)))
  "Returns md5sum for a message object of type '<KickingParam>"
  "1544ae05e02ea9fbdc689d7fea677df9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KickingParam)))
  "Returns md5sum for a message object of type 'KickingParam"
  "1544ae05e02ea9fbdc689d7fea677df9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KickingParam>)))
  "Returns full string definition for message of type '<KickingParam>"
  (cl:format cl:nil "float32 Torso_X~%float32 Torso_Y~%float32 Torso_Z~%float32 L_Shift_X~%float32 L_Shift_Y~%float32 L_Shift_Z~%float32 R_Shift_X~%float32 R_Shift_Y~%float32 R_Shift_Z~%float32 L_Lift_X~%float32 L_Lift_Y~%float32 L_Lift_Z~%float32 R_Lift_X~%float32 R_Lift_Y~%float32 R_Lift_Z~%float32 L_Swing_X~%float32 L_Swing_Y~%float32 L_Swing_Z~%float32 R_Swing_X~%float32 R_Swing_Y~%float32 R_Swing_Z~%float32 L_Retract_X~%float32 L_Retract_Y~%float32 L_Retract_Z~%float32 R_Retract_X~%float32 R_Retract_Y~%float32 R_Retract_Z~%float32 Torso_Pitch~%float32 Shift_Roll~%float32 Lift_Roll~%float32 Lift_Pitch~%float32 Swing_Roll~%float32 Swing_Pitch~%float32 Retract_Roll~%float32 Retract_Pitch~%float32 SHIFT_TIME~%float32 LIFT_TIME~%float32 SWING_TIME~%float32 RETRACT_TIME~%float32 LANDING_TIME~%float32 FINISHED_TIME~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KickingParam)))
  "Returns full string definition for message of type 'KickingParam"
  (cl:format cl:nil "float32 Torso_X~%float32 Torso_Y~%float32 Torso_Z~%float32 L_Shift_X~%float32 L_Shift_Y~%float32 L_Shift_Z~%float32 R_Shift_X~%float32 R_Shift_Y~%float32 R_Shift_Z~%float32 L_Lift_X~%float32 L_Lift_Y~%float32 L_Lift_Z~%float32 R_Lift_X~%float32 R_Lift_Y~%float32 R_Lift_Z~%float32 L_Swing_X~%float32 L_Swing_Y~%float32 L_Swing_Z~%float32 R_Swing_X~%float32 R_Swing_Y~%float32 R_Swing_Z~%float32 L_Retract_X~%float32 L_Retract_Y~%float32 L_Retract_Z~%float32 R_Retract_X~%float32 R_Retract_Y~%float32 R_Retract_Z~%float32 Torso_Pitch~%float32 Shift_Roll~%float32 Lift_Roll~%float32 Lift_Pitch~%float32 Swing_Roll~%float32 Swing_Pitch~%float32 Retract_Roll~%float32 Retract_Pitch~%float32 SHIFT_TIME~%float32 LIFT_TIME~%float32 SWING_TIME~%float32 RETRACT_TIME~%float32 LANDING_TIME~%float32 FINISHED_TIME~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KickingParam>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KickingParam>))
  "Converts a ROS message object to a list"
  (cl:list 'KickingParam
    (cl:cons ':Torso_X (Torso_X msg))
    (cl:cons ':Torso_Y (Torso_Y msg))
    (cl:cons ':Torso_Z (Torso_Z msg))
    (cl:cons ':L_Shift_X (L_Shift_X msg))
    (cl:cons ':L_Shift_Y (L_Shift_Y msg))
    (cl:cons ':L_Shift_Z (L_Shift_Z msg))
    (cl:cons ':R_Shift_X (R_Shift_X msg))
    (cl:cons ':R_Shift_Y (R_Shift_Y msg))
    (cl:cons ':R_Shift_Z (R_Shift_Z msg))
    (cl:cons ':L_Lift_X (L_Lift_X msg))
    (cl:cons ':L_Lift_Y (L_Lift_Y msg))
    (cl:cons ':L_Lift_Z (L_Lift_Z msg))
    (cl:cons ':R_Lift_X (R_Lift_X msg))
    (cl:cons ':R_Lift_Y (R_Lift_Y msg))
    (cl:cons ':R_Lift_Z (R_Lift_Z msg))
    (cl:cons ':L_Swing_X (L_Swing_X msg))
    (cl:cons ':L_Swing_Y (L_Swing_Y msg))
    (cl:cons ':L_Swing_Z (L_Swing_Z msg))
    (cl:cons ':R_Swing_X (R_Swing_X msg))
    (cl:cons ':R_Swing_Y (R_Swing_Y msg))
    (cl:cons ':R_Swing_Z (R_Swing_Z msg))
    (cl:cons ':L_Retract_X (L_Retract_X msg))
    (cl:cons ':L_Retract_Y (L_Retract_Y msg))
    (cl:cons ':L_Retract_Z (L_Retract_Z msg))
    (cl:cons ':R_Retract_X (R_Retract_X msg))
    (cl:cons ':R_Retract_Y (R_Retract_Y msg))
    (cl:cons ':R_Retract_Z (R_Retract_Z msg))
    (cl:cons ':Torso_Pitch (Torso_Pitch msg))
    (cl:cons ':Shift_Roll (Shift_Roll msg))
    (cl:cons ':Lift_Roll (Lift_Roll msg))
    (cl:cons ':Lift_Pitch (Lift_Pitch msg))
    (cl:cons ':Swing_Roll (Swing_Roll msg))
    (cl:cons ':Swing_Pitch (Swing_Pitch msg))
    (cl:cons ':Retract_Roll (Retract_Roll msg))
    (cl:cons ':Retract_Pitch (Retract_Pitch msg))
    (cl:cons ':SHIFT_TIME (SHIFT_TIME msg))
    (cl:cons ':LIFT_TIME (LIFT_TIME msg))
    (cl:cons ':SWING_TIME (SWING_TIME msg))
    (cl:cons ':RETRACT_TIME (RETRACT_TIME msg))
    (cl:cons ':LANDING_TIME (LANDING_TIME msg))
    (cl:cons ':FINISHED_TIME (FINISHED_TIME msg))
))
