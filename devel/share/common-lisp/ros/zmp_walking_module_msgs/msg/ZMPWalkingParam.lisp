; Auto-generated. Do not edit!


(cl:in-package zmp_walking_module_msgs-msg)


;//! \htmlinclude ZMPWalkingParam.msg.html

(cl:defclass <ZMPWalkingParam> (roslisp-msg-protocol:ros-message)
  ((feedback_
    :reader feedback_
    :initarg :feedback_
    :type cl:boolean
    :initform cl:nil)
   (L_Shift
    :reader L_Shift
    :initarg :L_Shift
    :type cl:float
    :initform 0.0)
   (L_Lift
    :reader L_Lift
    :initarg :L_Lift
    :type cl:float
    :initform 0.0)
   (L_P_Kick
    :reader L_P_Kick
    :initarg :L_P_Kick
    :type cl:float
    :initform 0.0)
   (L_P_Cool
    :reader L_P_Cool
    :initarg :L_P_Cool
    :type cl:float
    :initform 0.0)
   (R_Shift
    :reader R_Shift
    :initarg :R_Shift
    :type cl:float
    :initform 0.0)
   (R_Lift
    :reader R_Lift
    :initarg :R_Lift
    :type cl:float
    :initform 0.0)
   (R_P_Kick
    :reader R_P_Kick
    :initarg :R_P_Kick
    :type cl:float
    :initform 0.0)
   (R_P_Cool
    :reader R_P_Cool
    :initarg :R_P_Cool
    :type cl:float
    :initform 0.0)
   (Kp
    :reader Kp
    :initarg :Kp
    :type cl:float
    :initform 0.0)
   (Kd
    :reader Kd
    :initarg :Kd
    :type cl:float
    :initform 0.0)
   (TH1
    :reader TH1
    :initarg :TH1
    :type cl:float
    :initform 0.0)
   (TH2
    :reader TH2
    :initarg :TH2
    :type cl:float
    :initform 0.0)
   (Acc
    :reader Acc
    :initarg :Acc
    :type cl:float
    :initform 0.0)
   (KpP
    :reader KpP
    :initarg :KpP
    :type cl:float
    :initform 0.0)
   (KpR
    :reader KpR
    :initarg :KpR
    :type cl:float
    :initform 0.0)
   (KdP
    :reader KdP
    :initarg :KdP
    :type cl:float
    :initform 0.0)
   (KdR
    :reader KdR
    :initarg :KdR
    :type cl:float
    :initform 0.0)
   (Ki
    :reader Ki
    :initarg :Ki
    :type cl:float
    :initform 0.0)
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
   (m_zmp_vx
    :reader m_zmp_vx
    :initarg :m_zmp_vx
    :type cl:float
    :initform 0.0)
   (m_zmp_vy
    :reader m_zmp_vy
    :initarg :m_zmp_vy
    :type cl:float
    :initform 0.0)
   (m_zmp_vphi
    :reader m_zmp_vphi
    :initarg :m_zmp_vphi
    :type cl:float
    :initform 0.0)
   (zmp_vx_man
    :reader zmp_vx_man
    :initarg :zmp_vx_man
    :type cl:float
    :initform 0.0)
   (zmp_useGyro
    :reader zmp_useGyro
    :initarg :zmp_useGyro
    :type cl:boolean
    :initform cl:nil)
   (arm_pitch
    :reader arm_pitch
    :initarg :arm_pitch
    :type cl:float
    :initform 0.0)
   (arm_roll
    :reader arm_roll
    :initarg :arm_roll
    :type cl:float
    :initform 0.0)
   (arm_elbow
    :reader arm_elbow
    :initarg :arm_elbow
    :type cl:float
    :initform 0.0)
   (supp_front
    :reader supp_front
    :initarg :supp_front
    :type cl:float
    :initform 0.0)
   (supp_front2
    :reader supp_front2
    :initarg :supp_front2
    :type cl:float
    :initform 0.0)
   (supp_turn
    :reader supp_turn
    :initarg :supp_turn
    :type cl:float
    :initform 0.0)
   (supp_side_x
    :reader supp_side_x
    :initarg :supp_side_x
    :type cl:float
    :initform 0.0)
   (supp_side_y
    :reader supp_side_y
    :initarg :supp_side_y
    :type cl:float
    :initform 0.0)
   (supp_x
    :reader supp_x
    :initarg :supp_x
    :type cl:float
    :initform 0.0)
   (supp_y
    :reader supp_y
    :initarg :supp_y
    :type cl:float
    :initform 0.0)
   (suppmod_y_init
    :reader suppmod_y_init
    :initarg :suppmod_y_init
    :type cl:float
    :initform 0.0)
   (turncomp_thrs
    :reader turncomp_thrs
    :initarg :turncomp_thrs
    :type cl:float
    :initform 0.0)
   (turn_comp
    :reader turn_comp
    :initarg :turn_comp
    :type cl:float
    :initform 0.0)
   (accel_comp
    :reader accel_comp
    :initarg :accel_comp
    :type cl:float
    :initform 0.0)
   (front_comp
    :reader front_comp
    :initarg :front_comp
    :type cl:float
    :initform 0.0)
   (hiproll_comp
    :reader hiproll_comp
    :initarg :hiproll_comp
    :type cl:float
    :initform 0.0)
   (tstep
    :reader tstep
    :initarg :tstep
    :type cl:float
    :initform 0.0)
   (tzmp
    :reader tzmp
    :initarg :tzmp
    :type cl:float
    :initform 0.0)
   (velfast_forward
    :reader velfast_forward
    :initarg :velfast_forward
    :type cl:float
    :initform 0.0)
   (velfast_turn
    :reader velfast_turn
    :initarg :velfast_turn
    :type cl:float
    :initform 0.0)
   (angkle_supp_factor
    :reader angkle_supp_factor
    :initarg :angkle_supp_factor
    :type cl:float
    :initform 0.0)
   (foot_y
    :reader foot_y
    :initarg :foot_y
    :type cl:float
    :initform 0.0)
   (foot_x
    :reader foot_x
    :initarg :foot_x
    :type cl:float
    :initform 0.0)
   (stand_offset
    :reader stand_offset
    :initarg :stand_offset
    :type cl:float
    :initform 0.0)
   (body_height
    :reader body_height
    :initarg :body_height
    :type cl:float
    :initform 0.0)
   (step_height
    :reader step_height
    :initarg :step_height
    :type cl:float
    :initform 0.0)
   (belly_roll
    :reader belly_roll
    :initarg :belly_roll
    :type cl:float
    :initform 0.0)
   (belly_hip
    :reader belly_hip
    :initarg :belly_hip
    :type cl:float
    :initform 0.0)
   (bodytilt
    :reader bodytilt
    :initarg :bodytilt
    :type cl:float
    :initform 0.0)
   (ankleX_fact
    :reader ankleX_fact
    :initarg :ankleX_fact
    :type cl:float
    :initform 0.0)
   (ankleX_deadband
    :reader ankleX_deadband
    :initarg :ankleX_deadband
    :type cl:float
    :initform 0.0)
   (ankleX_maxVal
    :reader ankleX_maxVal
    :initarg :ankleX_maxVal
    :type cl:float
    :initform 0.0)
   (ankleY_fact
    :reader ankleY_fact
    :initarg :ankleY_fact
    :type cl:float
    :initform 0.0)
   (ankleY_deadband
    :reader ankleY_deadband
    :initarg :ankleY_deadband
    :type cl:float
    :initform 0.0)
   (ankleY_maxVal
    :reader ankleY_maxVal
    :initarg :ankleY_maxVal
    :type cl:float
    :initform 0.0)
   (kneeX_fact
    :reader kneeX_fact
    :initarg :kneeX_fact
    :type cl:float
    :initform 0.0)
   (kneeX_deadband
    :reader kneeX_deadband
    :initarg :kneeX_deadband
    :type cl:float
    :initform 0.0)
   (kneeX_maxVal
    :reader kneeX_maxVal
    :initarg :kneeX_maxVal
    :type cl:float
    :initform 0.0)
   (hipY_fact
    :reader hipY_fact
    :initarg :hipY_fact
    :type cl:float
    :initform 0.0)
   (hipY_deadband
    :reader hipY_deadband
    :initarg :hipY_deadband
    :type cl:float
    :initform 0.0)
   (hipY_maxVal
    :reader hipY_maxVal
    :initarg :hipY_maxVal
    :type cl:float
    :initform 0.0)
   (armY_fact
    :reader armY_fact
    :initarg :armY_fact
    :type cl:float
    :initform 0.0)
   (armY_deadband
    :reader armY_deadband
    :initarg :armY_deadband
    :type cl:float
    :initform 0.0)
   (armY_maxVal
    :reader armY_maxVal
    :initarg :armY_maxVal
    :type cl:float
    :initform 0.0)
   (armX_fact
    :reader armX_fact
    :initarg :armX_fact
    :type cl:float
    :initform 0.0)
   (armX_deadband
    :reader armX_deadband
    :initarg :armX_deadband
    :type cl:float
    :initform 0.0)
   (armX_maxVal
    :reader armX_maxVal
    :initarg :armX_maxVal
    :type cl:float
    :initform 0.0)
   (ballPosX
    :reader ballPosX
    :initarg :ballPosX
    :type cl:float
    :initform 0.0)
   (ballPosY
    :reader ballPosY
    :initarg :ballPosY
    :type cl:float
    :initform 0.0)
   (ballPosZ
    :reader ballPosZ
    :initarg :ballPosZ
    :type cl:float
    :initform 0.0)
   (goalPosX
    :reader goalPosX
    :initarg :goalPosX
    :type cl:float
    :initform 0.0)
   (goalPosY
    :reader goalPosY
    :initarg :goalPosY
    :type cl:float
    :initform 0.0)
   (goalPosZ
    :reader goalPosZ
    :initarg :goalPosZ
    :type cl:float
    :initform 0.0)
   (power
    :reader power
    :initarg :power
    :type cl:float
    :initform 0.0)
   (TRetract
    :reader TRetract
    :initarg :TRetract
    :type cl:float
    :initform 0.0)
   (TKick
    :reader TKick
    :initarg :TKick
    :type cl:float
    :initform 0.0)
   (TRising
    :reader TRising
    :initarg :TRising
    :type cl:float
    :initform 0.0)
   (TDown
    :reader TDown
    :initarg :TDown
    :type cl:float
    :initform 0.0))
)

(cl:defclass ZMPWalkingParam (<ZMPWalkingParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZMPWalkingParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZMPWalkingParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zmp_walking_module_msgs-msg:<ZMPWalkingParam> is deprecated: use zmp_walking_module_msgs-msg:ZMPWalkingParam instead.")))

(cl:ensure-generic-function 'feedback_-val :lambda-list '(m))
(cl:defmethod feedback_-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:feedback_-val is deprecated.  Use zmp_walking_module_msgs-msg:feedback_ instead.")
  (feedback_ m))

(cl:ensure-generic-function 'L_Shift-val :lambda-list '(m))
(cl:defmethod L_Shift-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:L_Shift-val is deprecated.  Use zmp_walking_module_msgs-msg:L_Shift instead.")
  (L_Shift m))

(cl:ensure-generic-function 'L_Lift-val :lambda-list '(m))
(cl:defmethod L_Lift-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:L_Lift-val is deprecated.  Use zmp_walking_module_msgs-msg:L_Lift instead.")
  (L_Lift m))

(cl:ensure-generic-function 'L_P_Kick-val :lambda-list '(m))
(cl:defmethod L_P_Kick-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:L_P_Kick-val is deprecated.  Use zmp_walking_module_msgs-msg:L_P_Kick instead.")
  (L_P_Kick m))

(cl:ensure-generic-function 'L_P_Cool-val :lambda-list '(m))
(cl:defmethod L_P_Cool-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:L_P_Cool-val is deprecated.  Use zmp_walking_module_msgs-msg:L_P_Cool instead.")
  (L_P_Cool m))

(cl:ensure-generic-function 'R_Shift-val :lambda-list '(m))
(cl:defmethod R_Shift-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:R_Shift-val is deprecated.  Use zmp_walking_module_msgs-msg:R_Shift instead.")
  (R_Shift m))

(cl:ensure-generic-function 'R_Lift-val :lambda-list '(m))
(cl:defmethod R_Lift-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:R_Lift-val is deprecated.  Use zmp_walking_module_msgs-msg:R_Lift instead.")
  (R_Lift m))

(cl:ensure-generic-function 'R_P_Kick-val :lambda-list '(m))
(cl:defmethod R_P_Kick-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:R_P_Kick-val is deprecated.  Use zmp_walking_module_msgs-msg:R_P_Kick instead.")
  (R_P_Kick m))

(cl:ensure-generic-function 'R_P_Cool-val :lambda-list '(m))
(cl:defmethod R_P_Cool-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:R_P_Cool-val is deprecated.  Use zmp_walking_module_msgs-msg:R_P_Cool instead.")
  (R_P_Cool m))

(cl:ensure-generic-function 'Kp-val :lambda-list '(m))
(cl:defmethod Kp-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:Kp-val is deprecated.  Use zmp_walking_module_msgs-msg:Kp instead.")
  (Kp m))

(cl:ensure-generic-function 'Kd-val :lambda-list '(m))
(cl:defmethod Kd-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:Kd-val is deprecated.  Use zmp_walking_module_msgs-msg:Kd instead.")
  (Kd m))

(cl:ensure-generic-function 'TH1-val :lambda-list '(m))
(cl:defmethod TH1-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:TH1-val is deprecated.  Use zmp_walking_module_msgs-msg:TH1 instead.")
  (TH1 m))

(cl:ensure-generic-function 'TH2-val :lambda-list '(m))
(cl:defmethod TH2-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:TH2-val is deprecated.  Use zmp_walking_module_msgs-msg:TH2 instead.")
  (TH2 m))

(cl:ensure-generic-function 'Acc-val :lambda-list '(m))
(cl:defmethod Acc-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:Acc-val is deprecated.  Use zmp_walking_module_msgs-msg:Acc instead.")
  (Acc m))

(cl:ensure-generic-function 'KpP-val :lambda-list '(m))
(cl:defmethod KpP-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:KpP-val is deprecated.  Use zmp_walking_module_msgs-msg:KpP instead.")
  (KpP m))

(cl:ensure-generic-function 'KpR-val :lambda-list '(m))
(cl:defmethod KpR-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:KpR-val is deprecated.  Use zmp_walking_module_msgs-msg:KpR instead.")
  (KpR m))

(cl:ensure-generic-function 'KdP-val :lambda-list '(m))
(cl:defmethod KdP-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:KdP-val is deprecated.  Use zmp_walking_module_msgs-msg:KdP instead.")
  (KdP m))

(cl:ensure-generic-function 'KdR-val :lambda-list '(m))
(cl:defmethod KdR-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:KdR-val is deprecated.  Use zmp_walking_module_msgs-msg:KdR instead.")
  (KdR m))

(cl:ensure-generic-function 'Ki-val :lambda-list '(m))
(cl:defmethod Ki-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:Ki-val is deprecated.  Use zmp_walking_module_msgs-msg:Ki instead.")
  (Ki m))

(cl:ensure-generic-function 'zmp_vx-val :lambda-list '(m))
(cl:defmethod zmp_vx-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:zmp_vx-val is deprecated.  Use zmp_walking_module_msgs-msg:zmp_vx instead.")
  (zmp_vx m))

(cl:ensure-generic-function 'zmp_vy-val :lambda-list '(m))
(cl:defmethod zmp_vy-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:zmp_vy-val is deprecated.  Use zmp_walking_module_msgs-msg:zmp_vy instead.")
  (zmp_vy m))

(cl:ensure-generic-function 'zmp_vphi-val :lambda-list '(m))
(cl:defmethod zmp_vphi-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:zmp_vphi-val is deprecated.  Use zmp_walking_module_msgs-msg:zmp_vphi instead.")
  (zmp_vphi m))

(cl:ensure-generic-function 'm_zmp_vx-val :lambda-list '(m))
(cl:defmethod m_zmp_vx-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:m_zmp_vx-val is deprecated.  Use zmp_walking_module_msgs-msg:m_zmp_vx instead.")
  (m_zmp_vx m))

(cl:ensure-generic-function 'm_zmp_vy-val :lambda-list '(m))
(cl:defmethod m_zmp_vy-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:m_zmp_vy-val is deprecated.  Use zmp_walking_module_msgs-msg:m_zmp_vy instead.")
  (m_zmp_vy m))

(cl:ensure-generic-function 'm_zmp_vphi-val :lambda-list '(m))
(cl:defmethod m_zmp_vphi-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:m_zmp_vphi-val is deprecated.  Use zmp_walking_module_msgs-msg:m_zmp_vphi instead.")
  (m_zmp_vphi m))

(cl:ensure-generic-function 'zmp_vx_man-val :lambda-list '(m))
(cl:defmethod zmp_vx_man-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:zmp_vx_man-val is deprecated.  Use zmp_walking_module_msgs-msg:zmp_vx_man instead.")
  (zmp_vx_man m))

(cl:ensure-generic-function 'zmp_useGyro-val :lambda-list '(m))
(cl:defmethod zmp_useGyro-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:zmp_useGyro-val is deprecated.  Use zmp_walking_module_msgs-msg:zmp_useGyro instead.")
  (zmp_useGyro m))

(cl:ensure-generic-function 'arm_pitch-val :lambda-list '(m))
(cl:defmethod arm_pitch-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:arm_pitch-val is deprecated.  Use zmp_walking_module_msgs-msg:arm_pitch instead.")
  (arm_pitch m))

(cl:ensure-generic-function 'arm_roll-val :lambda-list '(m))
(cl:defmethod arm_roll-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:arm_roll-val is deprecated.  Use zmp_walking_module_msgs-msg:arm_roll instead.")
  (arm_roll m))

(cl:ensure-generic-function 'arm_elbow-val :lambda-list '(m))
(cl:defmethod arm_elbow-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:arm_elbow-val is deprecated.  Use zmp_walking_module_msgs-msg:arm_elbow instead.")
  (arm_elbow m))

(cl:ensure-generic-function 'supp_front-val :lambda-list '(m))
(cl:defmethod supp_front-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:supp_front-val is deprecated.  Use zmp_walking_module_msgs-msg:supp_front instead.")
  (supp_front m))

(cl:ensure-generic-function 'supp_front2-val :lambda-list '(m))
(cl:defmethod supp_front2-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:supp_front2-val is deprecated.  Use zmp_walking_module_msgs-msg:supp_front2 instead.")
  (supp_front2 m))

(cl:ensure-generic-function 'supp_turn-val :lambda-list '(m))
(cl:defmethod supp_turn-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:supp_turn-val is deprecated.  Use zmp_walking_module_msgs-msg:supp_turn instead.")
  (supp_turn m))

(cl:ensure-generic-function 'supp_side_x-val :lambda-list '(m))
(cl:defmethod supp_side_x-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:supp_side_x-val is deprecated.  Use zmp_walking_module_msgs-msg:supp_side_x instead.")
  (supp_side_x m))

(cl:ensure-generic-function 'supp_side_y-val :lambda-list '(m))
(cl:defmethod supp_side_y-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:supp_side_y-val is deprecated.  Use zmp_walking_module_msgs-msg:supp_side_y instead.")
  (supp_side_y m))

(cl:ensure-generic-function 'supp_x-val :lambda-list '(m))
(cl:defmethod supp_x-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:supp_x-val is deprecated.  Use zmp_walking_module_msgs-msg:supp_x instead.")
  (supp_x m))

(cl:ensure-generic-function 'supp_y-val :lambda-list '(m))
(cl:defmethod supp_y-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:supp_y-val is deprecated.  Use zmp_walking_module_msgs-msg:supp_y instead.")
  (supp_y m))

(cl:ensure-generic-function 'suppmod_y_init-val :lambda-list '(m))
(cl:defmethod suppmod_y_init-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:suppmod_y_init-val is deprecated.  Use zmp_walking_module_msgs-msg:suppmod_y_init instead.")
  (suppmod_y_init m))

(cl:ensure-generic-function 'turncomp_thrs-val :lambda-list '(m))
(cl:defmethod turncomp_thrs-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:turncomp_thrs-val is deprecated.  Use zmp_walking_module_msgs-msg:turncomp_thrs instead.")
  (turncomp_thrs m))

(cl:ensure-generic-function 'turn_comp-val :lambda-list '(m))
(cl:defmethod turn_comp-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:turn_comp-val is deprecated.  Use zmp_walking_module_msgs-msg:turn_comp instead.")
  (turn_comp m))

(cl:ensure-generic-function 'accel_comp-val :lambda-list '(m))
(cl:defmethod accel_comp-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:accel_comp-val is deprecated.  Use zmp_walking_module_msgs-msg:accel_comp instead.")
  (accel_comp m))

(cl:ensure-generic-function 'front_comp-val :lambda-list '(m))
(cl:defmethod front_comp-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:front_comp-val is deprecated.  Use zmp_walking_module_msgs-msg:front_comp instead.")
  (front_comp m))

(cl:ensure-generic-function 'hiproll_comp-val :lambda-list '(m))
(cl:defmethod hiproll_comp-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:hiproll_comp-val is deprecated.  Use zmp_walking_module_msgs-msg:hiproll_comp instead.")
  (hiproll_comp m))

(cl:ensure-generic-function 'tstep-val :lambda-list '(m))
(cl:defmethod tstep-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:tstep-val is deprecated.  Use zmp_walking_module_msgs-msg:tstep instead.")
  (tstep m))

(cl:ensure-generic-function 'tzmp-val :lambda-list '(m))
(cl:defmethod tzmp-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:tzmp-val is deprecated.  Use zmp_walking_module_msgs-msg:tzmp instead.")
  (tzmp m))

(cl:ensure-generic-function 'velfast_forward-val :lambda-list '(m))
(cl:defmethod velfast_forward-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:velfast_forward-val is deprecated.  Use zmp_walking_module_msgs-msg:velfast_forward instead.")
  (velfast_forward m))

(cl:ensure-generic-function 'velfast_turn-val :lambda-list '(m))
(cl:defmethod velfast_turn-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:velfast_turn-val is deprecated.  Use zmp_walking_module_msgs-msg:velfast_turn instead.")
  (velfast_turn m))

(cl:ensure-generic-function 'angkle_supp_factor-val :lambda-list '(m))
(cl:defmethod angkle_supp_factor-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:angkle_supp_factor-val is deprecated.  Use zmp_walking_module_msgs-msg:angkle_supp_factor instead.")
  (angkle_supp_factor m))

(cl:ensure-generic-function 'foot_y-val :lambda-list '(m))
(cl:defmethod foot_y-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:foot_y-val is deprecated.  Use zmp_walking_module_msgs-msg:foot_y instead.")
  (foot_y m))

(cl:ensure-generic-function 'foot_x-val :lambda-list '(m))
(cl:defmethod foot_x-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:foot_x-val is deprecated.  Use zmp_walking_module_msgs-msg:foot_x instead.")
  (foot_x m))

(cl:ensure-generic-function 'stand_offset-val :lambda-list '(m))
(cl:defmethod stand_offset-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:stand_offset-val is deprecated.  Use zmp_walking_module_msgs-msg:stand_offset instead.")
  (stand_offset m))

(cl:ensure-generic-function 'body_height-val :lambda-list '(m))
(cl:defmethod body_height-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:body_height-val is deprecated.  Use zmp_walking_module_msgs-msg:body_height instead.")
  (body_height m))

(cl:ensure-generic-function 'step_height-val :lambda-list '(m))
(cl:defmethod step_height-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:step_height-val is deprecated.  Use zmp_walking_module_msgs-msg:step_height instead.")
  (step_height m))

(cl:ensure-generic-function 'belly_roll-val :lambda-list '(m))
(cl:defmethod belly_roll-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:belly_roll-val is deprecated.  Use zmp_walking_module_msgs-msg:belly_roll instead.")
  (belly_roll m))

(cl:ensure-generic-function 'belly_hip-val :lambda-list '(m))
(cl:defmethod belly_hip-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:belly_hip-val is deprecated.  Use zmp_walking_module_msgs-msg:belly_hip instead.")
  (belly_hip m))

(cl:ensure-generic-function 'bodytilt-val :lambda-list '(m))
(cl:defmethod bodytilt-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:bodytilt-val is deprecated.  Use zmp_walking_module_msgs-msg:bodytilt instead.")
  (bodytilt m))

(cl:ensure-generic-function 'ankleX_fact-val :lambda-list '(m))
(cl:defmethod ankleX_fact-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ankleX_fact-val is deprecated.  Use zmp_walking_module_msgs-msg:ankleX_fact instead.")
  (ankleX_fact m))

(cl:ensure-generic-function 'ankleX_deadband-val :lambda-list '(m))
(cl:defmethod ankleX_deadband-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ankleX_deadband-val is deprecated.  Use zmp_walking_module_msgs-msg:ankleX_deadband instead.")
  (ankleX_deadband m))

(cl:ensure-generic-function 'ankleX_maxVal-val :lambda-list '(m))
(cl:defmethod ankleX_maxVal-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ankleX_maxVal-val is deprecated.  Use zmp_walking_module_msgs-msg:ankleX_maxVal instead.")
  (ankleX_maxVal m))

(cl:ensure-generic-function 'ankleY_fact-val :lambda-list '(m))
(cl:defmethod ankleY_fact-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ankleY_fact-val is deprecated.  Use zmp_walking_module_msgs-msg:ankleY_fact instead.")
  (ankleY_fact m))

(cl:ensure-generic-function 'ankleY_deadband-val :lambda-list '(m))
(cl:defmethod ankleY_deadband-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ankleY_deadband-val is deprecated.  Use zmp_walking_module_msgs-msg:ankleY_deadband instead.")
  (ankleY_deadband m))

(cl:ensure-generic-function 'ankleY_maxVal-val :lambda-list '(m))
(cl:defmethod ankleY_maxVal-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ankleY_maxVal-val is deprecated.  Use zmp_walking_module_msgs-msg:ankleY_maxVal instead.")
  (ankleY_maxVal m))

(cl:ensure-generic-function 'kneeX_fact-val :lambda-list '(m))
(cl:defmethod kneeX_fact-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:kneeX_fact-val is deprecated.  Use zmp_walking_module_msgs-msg:kneeX_fact instead.")
  (kneeX_fact m))

(cl:ensure-generic-function 'kneeX_deadband-val :lambda-list '(m))
(cl:defmethod kneeX_deadband-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:kneeX_deadband-val is deprecated.  Use zmp_walking_module_msgs-msg:kneeX_deadband instead.")
  (kneeX_deadband m))

(cl:ensure-generic-function 'kneeX_maxVal-val :lambda-list '(m))
(cl:defmethod kneeX_maxVal-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:kneeX_maxVal-val is deprecated.  Use zmp_walking_module_msgs-msg:kneeX_maxVal instead.")
  (kneeX_maxVal m))

(cl:ensure-generic-function 'hipY_fact-val :lambda-list '(m))
(cl:defmethod hipY_fact-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:hipY_fact-val is deprecated.  Use zmp_walking_module_msgs-msg:hipY_fact instead.")
  (hipY_fact m))

(cl:ensure-generic-function 'hipY_deadband-val :lambda-list '(m))
(cl:defmethod hipY_deadband-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:hipY_deadband-val is deprecated.  Use zmp_walking_module_msgs-msg:hipY_deadband instead.")
  (hipY_deadband m))

(cl:ensure-generic-function 'hipY_maxVal-val :lambda-list '(m))
(cl:defmethod hipY_maxVal-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:hipY_maxVal-val is deprecated.  Use zmp_walking_module_msgs-msg:hipY_maxVal instead.")
  (hipY_maxVal m))

(cl:ensure-generic-function 'armY_fact-val :lambda-list '(m))
(cl:defmethod armY_fact-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:armY_fact-val is deprecated.  Use zmp_walking_module_msgs-msg:armY_fact instead.")
  (armY_fact m))

(cl:ensure-generic-function 'armY_deadband-val :lambda-list '(m))
(cl:defmethod armY_deadband-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:armY_deadband-val is deprecated.  Use zmp_walking_module_msgs-msg:armY_deadband instead.")
  (armY_deadband m))

(cl:ensure-generic-function 'armY_maxVal-val :lambda-list '(m))
(cl:defmethod armY_maxVal-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:armY_maxVal-val is deprecated.  Use zmp_walking_module_msgs-msg:armY_maxVal instead.")
  (armY_maxVal m))

(cl:ensure-generic-function 'armX_fact-val :lambda-list '(m))
(cl:defmethod armX_fact-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:armX_fact-val is deprecated.  Use zmp_walking_module_msgs-msg:armX_fact instead.")
  (armX_fact m))

(cl:ensure-generic-function 'armX_deadband-val :lambda-list '(m))
(cl:defmethod armX_deadband-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:armX_deadband-val is deprecated.  Use zmp_walking_module_msgs-msg:armX_deadband instead.")
  (armX_deadband m))

(cl:ensure-generic-function 'armX_maxVal-val :lambda-list '(m))
(cl:defmethod armX_maxVal-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:armX_maxVal-val is deprecated.  Use zmp_walking_module_msgs-msg:armX_maxVal instead.")
  (armX_maxVal m))

(cl:ensure-generic-function 'ballPosX-val :lambda-list '(m))
(cl:defmethod ballPosX-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ballPosX-val is deprecated.  Use zmp_walking_module_msgs-msg:ballPosX instead.")
  (ballPosX m))

(cl:ensure-generic-function 'ballPosY-val :lambda-list '(m))
(cl:defmethod ballPosY-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ballPosY-val is deprecated.  Use zmp_walking_module_msgs-msg:ballPosY instead.")
  (ballPosY m))

(cl:ensure-generic-function 'ballPosZ-val :lambda-list '(m))
(cl:defmethod ballPosZ-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:ballPosZ-val is deprecated.  Use zmp_walking_module_msgs-msg:ballPosZ instead.")
  (ballPosZ m))

(cl:ensure-generic-function 'goalPosX-val :lambda-list '(m))
(cl:defmethod goalPosX-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:goalPosX-val is deprecated.  Use zmp_walking_module_msgs-msg:goalPosX instead.")
  (goalPosX m))

(cl:ensure-generic-function 'goalPosY-val :lambda-list '(m))
(cl:defmethod goalPosY-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:goalPosY-val is deprecated.  Use zmp_walking_module_msgs-msg:goalPosY instead.")
  (goalPosY m))

(cl:ensure-generic-function 'goalPosZ-val :lambda-list '(m))
(cl:defmethod goalPosZ-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:goalPosZ-val is deprecated.  Use zmp_walking_module_msgs-msg:goalPosZ instead.")
  (goalPosZ m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:power-val is deprecated.  Use zmp_walking_module_msgs-msg:power instead.")
  (power m))

(cl:ensure-generic-function 'TRetract-val :lambda-list '(m))
(cl:defmethod TRetract-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:TRetract-val is deprecated.  Use zmp_walking_module_msgs-msg:TRetract instead.")
  (TRetract m))

(cl:ensure-generic-function 'TKick-val :lambda-list '(m))
(cl:defmethod TKick-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:TKick-val is deprecated.  Use zmp_walking_module_msgs-msg:TKick instead.")
  (TKick m))

(cl:ensure-generic-function 'TRising-val :lambda-list '(m))
(cl:defmethod TRising-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:TRising-val is deprecated.  Use zmp_walking_module_msgs-msg:TRising instead.")
  (TRising m))

(cl:ensure-generic-function 'TDown-val :lambda-list '(m))
(cl:defmethod TDown-val ((m <ZMPWalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-msg:TDown-val is deprecated.  Use zmp_walking_module_msgs-msg:TDown instead.")
  (TDown m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZMPWalkingParam>) ostream)
  "Serializes a message object of type '<ZMPWalkingParam>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback_) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Shift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Lift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_P_Kick))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_P_Cool))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Shift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Lift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_P_Kick))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_P_Cool))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TH1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TH2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KpP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KpR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KdP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'KdR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Ki))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm_zmp_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm_zmp_vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm_zmp_vphi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zmp_vx_man))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'zmp_useGyro) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_elbow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'supp_front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'supp_front2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'supp_turn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'supp_side_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'supp_side_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'supp_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'supp_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'suppmod_y_init))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'turncomp_thrs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'turn_comp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_comp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_comp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hiproll_comp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tstep))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tzmp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velfast_forward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velfast_turn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angkle_supp_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'foot_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'foot_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stand_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'body_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'step_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'belly_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'belly_hip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bodytilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ankleX_fact))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ankleX_deadband))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ankleX_maxVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ankleY_fact))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ankleY_deadband))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ankleY_maxVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kneeX_fact))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kneeX_deadband))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kneeX_maxVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hipY_fact))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hipY_deadband))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hipY_maxVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armY_fact))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armY_deadband))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armY_maxVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armX_fact))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armX_deadband))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'armX_maxVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ballPosX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ballPosY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ballPosZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goalPosX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goalPosY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goalPosZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TRetract))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TKick))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TRising))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TDown))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZMPWalkingParam>) istream)
  "Deserializes a message object of type '<ZMPWalkingParam>"
    (cl:setf (cl:slot-value msg 'feedback_) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Shift) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Lift) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_P_Kick) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_P_Cool) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Shift) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Lift) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_P_Kick) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_P_Cool) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TH1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TH2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KpP) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KpR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KdP) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'KdR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ki) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm_zmp_vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm_zmp_vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm_zmp_vphi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zmp_vx_man) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'zmp_useGyro) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_elbow) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'supp_front) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'supp_front2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'supp_turn) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'supp_side_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'supp_side_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'supp_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'supp_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'suppmod_y_init) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turncomp_thrs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turn_comp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_comp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_comp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hiproll_comp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tstep) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tzmp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velfast_forward) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velfast_turn) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angkle_supp_factor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'foot_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'foot_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stand_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'body_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'belly_roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'belly_hip) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bodytilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ankleX_fact) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ankleX_deadband) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ankleX_maxVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ankleY_fact) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ankleY_deadband) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ankleY_maxVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kneeX_fact) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kneeX_deadband) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kneeX_maxVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hipY_fact) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hipY_deadband) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hipY_maxVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armY_fact) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armY_deadband) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armY_maxVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armX_fact) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armX_deadband) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armX_maxVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ballPosX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ballPosY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ballPosZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goalPosX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goalPosY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goalPosZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TRetract) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TKick) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TRising) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TDown) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZMPWalkingParam>)))
  "Returns string type for a message object of type '<ZMPWalkingParam>"
  "zmp_walking_module_msgs/ZMPWalkingParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZMPWalkingParam)))
  "Returns string type for a message object of type 'ZMPWalkingParam"
  "zmp_walking_module_msgs/ZMPWalkingParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZMPWalkingParam>)))
  "Returns md5sum for a message object of type '<ZMPWalkingParam>"
  "18fd4f4232f23b551ffb99639a489507")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZMPWalkingParam)))
  "Returns md5sum for a message object of type 'ZMPWalkingParam"
  "18fd4f4232f23b551ffb99639a489507")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZMPWalkingParam>)))
  "Returns full string definition for message of type '<ZMPWalkingParam>"
  (cl:format cl:nil "########## ZMP WALKING BIT-BOTS ###########~%~%bool feedback_~%~%float32 L_Shift~%float32 L_Lift~%float32 L_P_Kick~%float32 L_P_Cool~%~%float32 R_Shift~%float32 R_Lift~%float32 R_P_Kick~%float32 R_P_Cool~%~%float32 Kp~%float32 Kd~%float32 TH1~%float32 TH2~%float32 Acc~%~%float32 KpP~%float32 KpR~%float32 KdP~%float32 KdR~%float32 Ki~%~%float32 zmp_vx~%float32 zmp_vy~%float32 zmp_vphi~%float32 m_zmp_vx~%float32 m_zmp_vy~%float32 m_zmp_vphi~%float32 zmp_vx_man~%~%bool zmp_useGyro~%float32 arm_pitch~%float32 arm_roll~%float32 arm_elbow~%~%float32 supp_front~%float32 supp_front2~%float32 supp_turn~%float32 supp_side_x~%float32 supp_side_y~%float32 supp_x~%float32 supp_y~%~%float32 suppmod_y_init~%float32 turncomp_thrs~%float32 turn_comp~%float32 accel_comp~%float32 front_comp~%float32 hiproll_comp~%float32 tstep~%float32 tzmp~%float32 velfast_forward~%float32 velfast_turn~%float32 angkle_supp_factor~%~%float32 foot_y~%float32 foot_x~%float32 stand_offset~%float32 body_height~%float32 step_height~%float32 belly_roll~%float32 belly_hip~%float32 bodytilt~%~%float32 ankleX_fact~%float32 ankleX_deadband~%float32 ankleX_maxVal~%~%float32 ankleY_fact~%float32 ankleY_deadband~%float32 ankleY_maxVal~%~%float32 kneeX_fact~%float32 kneeX_deadband~%float32 kneeX_maxVal~%~%float32 hipY_fact~%float32 hipY_deadband~%float32 hipY_maxVal~%~%float32 armY_fact~%float32 armY_deadband~%float32 armY_maxVal~%~%float32 armX_fact~%float32 armX_deadband~%float32 armX_maxVal~%~%float32 ballPosX~%float32 ballPosY~%float32 ballPosZ~%~%float32 goalPosX~%float32 goalPosY~%float32 goalPosZ~%~%float32 power~%float32 TRetract~%float32 TKick~%float32 TRising~%float32 TDown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZMPWalkingParam)))
  "Returns full string definition for message of type 'ZMPWalkingParam"
  (cl:format cl:nil "########## ZMP WALKING BIT-BOTS ###########~%~%bool feedback_~%~%float32 L_Shift~%float32 L_Lift~%float32 L_P_Kick~%float32 L_P_Cool~%~%float32 R_Shift~%float32 R_Lift~%float32 R_P_Kick~%float32 R_P_Cool~%~%float32 Kp~%float32 Kd~%float32 TH1~%float32 TH2~%float32 Acc~%~%float32 KpP~%float32 KpR~%float32 KdP~%float32 KdR~%float32 Ki~%~%float32 zmp_vx~%float32 zmp_vy~%float32 zmp_vphi~%float32 m_zmp_vx~%float32 m_zmp_vy~%float32 m_zmp_vphi~%float32 zmp_vx_man~%~%bool zmp_useGyro~%float32 arm_pitch~%float32 arm_roll~%float32 arm_elbow~%~%float32 supp_front~%float32 supp_front2~%float32 supp_turn~%float32 supp_side_x~%float32 supp_side_y~%float32 supp_x~%float32 supp_y~%~%float32 suppmod_y_init~%float32 turncomp_thrs~%float32 turn_comp~%float32 accel_comp~%float32 front_comp~%float32 hiproll_comp~%float32 tstep~%float32 tzmp~%float32 velfast_forward~%float32 velfast_turn~%float32 angkle_supp_factor~%~%float32 foot_y~%float32 foot_x~%float32 stand_offset~%float32 body_height~%float32 step_height~%float32 belly_roll~%float32 belly_hip~%float32 bodytilt~%~%float32 ankleX_fact~%float32 ankleX_deadband~%float32 ankleX_maxVal~%~%float32 ankleY_fact~%float32 ankleY_deadband~%float32 ankleY_maxVal~%~%float32 kneeX_fact~%float32 kneeX_deadband~%float32 kneeX_maxVal~%~%float32 hipY_fact~%float32 hipY_deadband~%float32 hipY_maxVal~%~%float32 armY_fact~%float32 armY_deadband~%float32 armY_maxVal~%~%float32 armX_fact~%float32 armX_deadband~%float32 armX_maxVal~%~%float32 ballPosX~%float32 ballPosY~%float32 ballPosZ~%~%float32 goalPosX~%float32 goalPosY~%float32 goalPosZ~%~%float32 power~%float32 TRetract~%float32 TKick~%float32 TRising~%float32 TDown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZMPWalkingParam>))
  (cl:+ 0
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZMPWalkingParam>))
  "Converts a ROS message object to a list"
  (cl:list 'ZMPWalkingParam
    (cl:cons ':feedback_ (feedback_ msg))
    (cl:cons ':L_Shift (L_Shift msg))
    (cl:cons ':L_Lift (L_Lift msg))
    (cl:cons ':L_P_Kick (L_P_Kick msg))
    (cl:cons ':L_P_Cool (L_P_Cool msg))
    (cl:cons ':R_Shift (R_Shift msg))
    (cl:cons ':R_Lift (R_Lift msg))
    (cl:cons ':R_P_Kick (R_P_Kick msg))
    (cl:cons ':R_P_Cool (R_P_Cool msg))
    (cl:cons ':Kp (Kp msg))
    (cl:cons ':Kd (Kd msg))
    (cl:cons ':TH1 (TH1 msg))
    (cl:cons ':TH2 (TH2 msg))
    (cl:cons ':Acc (Acc msg))
    (cl:cons ':KpP (KpP msg))
    (cl:cons ':KpR (KpR msg))
    (cl:cons ':KdP (KdP msg))
    (cl:cons ':KdR (KdR msg))
    (cl:cons ':Ki (Ki msg))
    (cl:cons ':zmp_vx (zmp_vx msg))
    (cl:cons ':zmp_vy (zmp_vy msg))
    (cl:cons ':zmp_vphi (zmp_vphi msg))
    (cl:cons ':m_zmp_vx (m_zmp_vx msg))
    (cl:cons ':m_zmp_vy (m_zmp_vy msg))
    (cl:cons ':m_zmp_vphi (m_zmp_vphi msg))
    (cl:cons ':zmp_vx_man (zmp_vx_man msg))
    (cl:cons ':zmp_useGyro (zmp_useGyro msg))
    (cl:cons ':arm_pitch (arm_pitch msg))
    (cl:cons ':arm_roll (arm_roll msg))
    (cl:cons ':arm_elbow (arm_elbow msg))
    (cl:cons ':supp_front (supp_front msg))
    (cl:cons ':supp_front2 (supp_front2 msg))
    (cl:cons ':supp_turn (supp_turn msg))
    (cl:cons ':supp_side_x (supp_side_x msg))
    (cl:cons ':supp_side_y (supp_side_y msg))
    (cl:cons ':supp_x (supp_x msg))
    (cl:cons ':supp_y (supp_y msg))
    (cl:cons ':suppmod_y_init (suppmod_y_init msg))
    (cl:cons ':turncomp_thrs (turncomp_thrs msg))
    (cl:cons ':turn_comp (turn_comp msg))
    (cl:cons ':accel_comp (accel_comp msg))
    (cl:cons ':front_comp (front_comp msg))
    (cl:cons ':hiproll_comp (hiproll_comp msg))
    (cl:cons ':tstep (tstep msg))
    (cl:cons ':tzmp (tzmp msg))
    (cl:cons ':velfast_forward (velfast_forward msg))
    (cl:cons ':velfast_turn (velfast_turn msg))
    (cl:cons ':angkle_supp_factor (angkle_supp_factor msg))
    (cl:cons ':foot_y (foot_y msg))
    (cl:cons ':foot_x (foot_x msg))
    (cl:cons ':stand_offset (stand_offset msg))
    (cl:cons ':body_height (body_height msg))
    (cl:cons ':step_height (step_height msg))
    (cl:cons ':belly_roll (belly_roll msg))
    (cl:cons ':belly_hip (belly_hip msg))
    (cl:cons ':bodytilt (bodytilt msg))
    (cl:cons ':ankleX_fact (ankleX_fact msg))
    (cl:cons ':ankleX_deadband (ankleX_deadband msg))
    (cl:cons ':ankleX_maxVal (ankleX_maxVal msg))
    (cl:cons ':ankleY_fact (ankleY_fact msg))
    (cl:cons ':ankleY_deadband (ankleY_deadband msg))
    (cl:cons ':ankleY_maxVal (ankleY_maxVal msg))
    (cl:cons ':kneeX_fact (kneeX_fact msg))
    (cl:cons ':kneeX_deadband (kneeX_deadband msg))
    (cl:cons ':kneeX_maxVal (kneeX_maxVal msg))
    (cl:cons ':hipY_fact (hipY_fact msg))
    (cl:cons ':hipY_deadband (hipY_deadband msg))
    (cl:cons ':hipY_maxVal (hipY_maxVal msg))
    (cl:cons ':armY_fact (armY_fact msg))
    (cl:cons ':armY_deadband (armY_deadband msg))
    (cl:cons ':armY_maxVal (armY_maxVal msg))
    (cl:cons ':armX_fact (armX_fact msg))
    (cl:cons ':armX_deadband (armX_deadband msg))
    (cl:cons ':armX_maxVal (armX_maxVal msg))
    (cl:cons ':ballPosX (ballPosX msg))
    (cl:cons ':ballPosY (ballPosY msg))
    (cl:cons ':ballPosZ (ballPosZ msg))
    (cl:cons ':goalPosX (goalPosX msg))
    (cl:cons ':goalPosY (goalPosY msg))
    (cl:cons ':goalPosZ (goalPosZ msg))
    (cl:cons ':power (power msg))
    (cl:cons ':TRetract (TRetract msg))
    (cl:cons ':TKick (TKick msg))
    (cl:cons ':TRising (TRising msg))
    (cl:cons ':TDown (TDown msg))
))
