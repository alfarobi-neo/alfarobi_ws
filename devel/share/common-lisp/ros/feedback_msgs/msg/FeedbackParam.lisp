; Auto-generated. Do not edit!


(cl:in-package feedback_msgs-msg)


;//! \htmlinclude FeedbackParam.msg.html

(cl:defclass <FeedbackParam> (roslisp-msg-protocol:ros-message)
  ((Body_Height
    :reader Body_Height
    :initarg :Body_Height
    :type cl:float
    :initform 0.0)
   (Body_Tilt
    :reader Body_Tilt
    :initarg :Body_Tilt
    :type cl:float
    :initform 0.0)
   (Leg_X
    :reader Leg_X
    :initarg :Leg_X
    :type cl:float
    :initform 0.0)
   (Leg_Y
    :reader Leg_Y
    :initarg :Leg_Y
    :type cl:float
    :initform 0.0)
   (Leg_Z
    :reader Leg_Z
    :initarg :Leg_Z
    :type cl:float
    :initform 0.0)
   (Leg_R_Z
    :reader Leg_R_Z
    :initarg :Leg_R_Z
    :type cl:float
    :initform 0.0)
   (Leg_L_Z
    :reader Leg_L_Z
    :initarg :Leg_L_Z
    :type cl:float
    :initform 0.0)
   (R_Roll
    :reader R_Roll
    :initarg :R_Roll
    :type cl:float
    :initform 0.0)
   (L_Roll
    :reader L_Roll
    :initarg :L_Roll
    :type cl:float
    :initform 0.0)
   (Setpoint_Pitch
    :reader Setpoint_Pitch
    :initarg :Setpoint_Pitch
    :type cl:float
    :initform 0.0)
   (Setpoint_Roll
    :reader Setpoint_Roll
    :initarg :Setpoint_Roll
    :type cl:float
    :initform 0.0)
   (Gain_Angle_Pitch
    :reader Gain_Angle_Pitch
    :initarg :Gain_Angle_Pitch
    :type cl:float
    :initform 0.0)
   (Gain_Angle_Roll
    :reader Gain_Angle_Roll
    :initarg :Gain_Angle_Roll
    :type cl:float
    :initform 0.0)
   (Gain_Velocity_Pitch
    :reader Gain_Velocity_Pitch
    :initarg :Gain_Velocity_Pitch
    :type cl:float
    :initform 0.0)
   (Gain_Velocity_Roll
    :reader Gain_Velocity_Roll
    :initarg :Gain_Velocity_Roll
    :type cl:float
    :initform 0.0)
   (Gain_Integral_Pitch
    :reader Gain_Integral_Pitch
    :initarg :Gain_Integral_Pitch
    :type cl:float
    :initform 0.0)
   (Gain_Integral_Roll
    :reader Gain_Integral_Roll
    :initarg :Gain_Integral_Roll
    :type cl:float
    :initform 0.0))
)

(cl:defclass FeedbackParam (<FeedbackParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeedbackParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeedbackParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name feedback_msgs-msg:<FeedbackParam> is deprecated: use feedback_msgs-msg:FeedbackParam instead.")))

(cl:ensure-generic-function 'Body_Height-val :lambda-list '(m))
(cl:defmethod Body_Height-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Body_Height-val is deprecated.  Use feedback_msgs-msg:Body_Height instead.")
  (Body_Height m))

(cl:ensure-generic-function 'Body_Tilt-val :lambda-list '(m))
(cl:defmethod Body_Tilt-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Body_Tilt-val is deprecated.  Use feedback_msgs-msg:Body_Tilt instead.")
  (Body_Tilt m))

(cl:ensure-generic-function 'Leg_X-val :lambda-list '(m))
(cl:defmethod Leg_X-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Leg_X-val is deprecated.  Use feedback_msgs-msg:Leg_X instead.")
  (Leg_X m))

(cl:ensure-generic-function 'Leg_Y-val :lambda-list '(m))
(cl:defmethod Leg_Y-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Leg_Y-val is deprecated.  Use feedback_msgs-msg:Leg_Y instead.")
  (Leg_Y m))

(cl:ensure-generic-function 'Leg_Z-val :lambda-list '(m))
(cl:defmethod Leg_Z-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Leg_Z-val is deprecated.  Use feedback_msgs-msg:Leg_Z instead.")
  (Leg_Z m))

(cl:ensure-generic-function 'Leg_R_Z-val :lambda-list '(m))
(cl:defmethod Leg_R_Z-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Leg_R_Z-val is deprecated.  Use feedback_msgs-msg:Leg_R_Z instead.")
  (Leg_R_Z m))

(cl:ensure-generic-function 'Leg_L_Z-val :lambda-list '(m))
(cl:defmethod Leg_L_Z-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Leg_L_Z-val is deprecated.  Use feedback_msgs-msg:Leg_L_Z instead.")
  (Leg_L_Z m))

(cl:ensure-generic-function 'R_Roll-val :lambda-list '(m))
(cl:defmethod R_Roll-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:R_Roll-val is deprecated.  Use feedback_msgs-msg:R_Roll instead.")
  (R_Roll m))

(cl:ensure-generic-function 'L_Roll-val :lambda-list '(m))
(cl:defmethod L_Roll-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:L_Roll-val is deprecated.  Use feedback_msgs-msg:L_Roll instead.")
  (L_Roll m))

(cl:ensure-generic-function 'Setpoint_Pitch-val :lambda-list '(m))
(cl:defmethod Setpoint_Pitch-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Setpoint_Pitch-val is deprecated.  Use feedback_msgs-msg:Setpoint_Pitch instead.")
  (Setpoint_Pitch m))

(cl:ensure-generic-function 'Setpoint_Roll-val :lambda-list '(m))
(cl:defmethod Setpoint_Roll-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Setpoint_Roll-val is deprecated.  Use feedback_msgs-msg:Setpoint_Roll instead.")
  (Setpoint_Roll m))

(cl:ensure-generic-function 'Gain_Angle_Pitch-val :lambda-list '(m))
(cl:defmethod Gain_Angle_Pitch-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Gain_Angle_Pitch-val is deprecated.  Use feedback_msgs-msg:Gain_Angle_Pitch instead.")
  (Gain_Angle_Pitch m))

(cl:ensure-generic-function 'Gain_Angle_Roll-val :lambda-list '(m))
(cl:defmethod Gain_Angle_Roll-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Gain_Angle_Roll-val is deprecated.  Use feedback_msgs-msg:Gain_Angle_Roll instead.")
  (Gain_Angle_Roll m))

(cl:ensure-generic-function 'Gain_Velocity_Pitch-val :lambda-list '(m))
(cl:defmethod Gain_Velocity_Pitch-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Gain_Velocity_Pitch-val is deprecated.  Use feedback_msgs-msg:Gain_Velocity_Pitch instead.")
  (Gain_Velocity_Pitch m))

(cl:ensure-generic-function 'Gain_Velocity_Roll-val :lambda-list '(m))
(cl:defmethod Gain_Velocity_Roll-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Gain_Velocity_Roll-val is deprecated.  Use feedback_msgs-msg:Gain_Velocity_Roll instead.")
  (Gain_Velocity_Roll m))

(cl:ensure-generic-function 'Gain_Integral_Pitch-val :lambda-list '(m))
(cl:defmethod Gain_Integral_Pitch-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Gain_Integral_Pitch-val is deprecated.  Use feedback_msgs-msg:Gain_Integral_Pitch instead.")
  (Gain_Integral_Pitch m))

(cl:ensure-generic-function 'Gain_Integral_Roll-val :lambda-list '(m))
(cl:defmethod Gain_Integral_Roll-val ((m <FeedbackParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader feedback_msgs-msg:Gain_Integral_Roll-val is deprecated.  Use feedback_msgs-msg:Gain_Integral_Roll instead.")
  (Gain_Integral_Roll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeedbackParam>) ostream)
  "Serializes a message object of type '<FeedbackParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Body_Height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Body_Tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Leg_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Leg_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Leg_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Leg_R_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Leg_L_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Setpoint_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Setpoint_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gain_Angle_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gain_Angle_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gain_Velocity_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gain_Velocity_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gain_Integral_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Gain_Integral_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeedbackParam>) istream)
  "Deserializes a message object of type '<FeedbackParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Body_Height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Body_Tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Leg_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Leg_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Leg_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Leg_R_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Leg_L_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Setpoint_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Setpoint_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gain_Angle_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gain_Angle_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gain_Velocity_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gain_Velocity_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gain_Integral_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Gain_Integral_Roll) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeedbackParam>)))
  "Returns string type for a message object of type '<FeedbackParam>"
  "feedback_msgs/FeedbackParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeedbackParam)))
  "Returns string type for a message object of type 'FeedbackParam"
  "feedback_msgs/FeedbackParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeedbackParam>)))
  "Returns md5sum for a message object of type '<FeedbackParam>"
  "b6dc619d19217c2ba9bca0b28f4e3fda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeedbackParam)))
  "Returns md5sum for a message object of type 'FeedbackParam"
  "b6dc619d19217c2ba9bca0b28f4e3fda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeedbackParam>)))
  "Returns full string definition for message of type '<FeedbackParam>"
  (cl:format cl:nil "float32 Body_Height~%float32 Body_Tilt~%float32 Leg_X~%float32 Leg_Y~%float32 Leg_Z~%~%float32 Leg_R_Z~%float32 Leg_L_Z~%float32 R_Roll~%float32 L_Roll~%~%float32 Setpoint_Pitch~%float32 Setpoint_Roll~%~%float32 Gain_Angle_Pitch~%float32 Gain_Angle_Roll~%~%float32 Gain_Velocity_Pitch~%float32 Gain_Velocity_Roll~%~%float32 Gain_Integral_Pitch~%float32 Gain_Integral_Roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeedbackParam)))
  "Returns full string definition for message of type 'FeedbackParam"
  (cl:format cl:nil "float32 Body_Height~%float32 Body_Tilt~%float32 Leg_X~%float32 Leg_Y~%float32 Leg_Z~%~%float32 Leg_R_Z~%float32 Leg_L_Z~%float32 R_Roll~%float32 L_Roll~%~%float32 Setpoint_Pitch~%float32 Setpoint_Roll~%~%float32 Gain_Angle_Pitch~%float32 Gain_Angle_Roll~%~%float32 Gain_Velocity_Pitch~%float32 Gain_Velocity_Roll~%~%float32 Gain_Integral_Pitch~%float32 Gain_Integral_Roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeedbackParam>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeedbackParam>))
  "Converts a ROS message object to a list"
  (cl:list 'FeedbackParam
    (cl:cons ':Body_Height (Body_Height msg))
    (cl:cons ':Body_Tilt (Body_Tilt msg))
    (cl:cons ':Leg_X (Leg_X msg))
    (cl:cons ':Leg_Y (Leg_Y msg))
    (cl:cons ':Leg_Z (Leg_Z msg))
    (cl:cons ':Leg_R_Z (Leg_R_Z msg))
    (cl:cons ':Leg_L_Z (Leg_L_Z msg))
    (cl:cons ':R_Roll (R_Roll msg))
    (cl:cons ':L_Roll (L_Roll msg))
    (cl:cons ':Setpoint_Pitch (Setpoint_Pitch msg))
    (cl:cons ':Setpoint_Roll (Setpoint_Roll msg))
    (cl:cons ':Gain_Angle_Pitch (Gain_Angle_Pitch msg))
    (cl:cons ':Gain_Angle_Roll (Gain_Angle_Roll msg))
    (cl:cons ':Gain_Velocity_Pitch (Gain_Velocity_Pitch msg))
    (cl:cons ':Gain_Velocity_Roll (Gain_Velocity_Roll msg))
    (cl:cons ':Gain_Integral_Pitch (Gain_Integral_Pitch msg))
    (cl:cons ':Gain_Integral_Roll (Gain_Integral_Roll msg))
))
