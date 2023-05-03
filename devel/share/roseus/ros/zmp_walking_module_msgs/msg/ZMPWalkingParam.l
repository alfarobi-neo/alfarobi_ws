;; Auto-generated. Do not edit!


(when (boundp 'zmp_walking_module_msgs::ZMPWalkingParam)
  (if (not (find-package "ZMP_WALKING_MODULE_MSGS"))
    (make-package "ZMP_WALKING_MODULE_MSGS"))
  (shadow 'ZMPWalkingParam (find-package "ZMP_WALKING_MODULE_MSGS")))
(unless (find-package "ZMP_WALKING_MODULE_MSGS::ZMPWALKINGPARAM")
  (make-package "ZMP_WALKING_MODULE_MSGS::ZMPWALKINGPARAM"))

(in-package "ROS")
;;//! \htmlinclude ZMPWalkingParam.msg.html


(defclass zmp_walking_module_msgs::ZMPWalkingParam
  :super ros::object
  :slots (_feedback_ _L_Shift _L_Lift _L_P_Kick _L_P_Cool _R_Shift _R_Lift _R_P_Kick _R_P_Cool _Kp _Kd _TH1 _TH2 _Acc _KpP _KpR _KdP _KdR _Ki _zmp_vx _zmp_vy _zmp_vphi _m_zmp_vx _m_zmp_vy _m_zmp_vphi _zmp_vx_man _zmp_useGyro _arm_pitch _arm_roll _arm_elbow _supp_front _supp_front2 _supp_turn _supp_side_x _supp_side_y _supp_x _supp_y _suppmod_y_init _turncomp_thrs _turn_comp _accel_comp _front_comp _hiproll_comp _tstep _tzmp _velfast_forward _velfast_turn _angkle_supp_factor _foot_y _foot_x _stand_offset _body_height _step_height _belly_roll _belly_hip _bodytilt _ankleX_fact _ankleX_deadband _ankleX_maxVal _ankleY_fact _ankleY_deadband _ankleY_maxVal _kneeX_fact _kneeX_deadband _kneeX_maxVal _hipY_fact _hipY_deadband _hipY_maxVal _armY_fact _armY_deadband _armY_maxVal _armX_fact _armX_deadband _armX_maxVal _ballPosX _ballPosY _ballPosZ _goalPosX _goalPosY _goalPosZ _power _TRetract _TKick _TRising _TDown ))

(defmethod zmp_walking_module_msgs::ZMPWalkingParam
  (:init
   (&key
    ((:feedback_ __feedback_) nil)
    ((:L_Shift __L_Shift) 0.0)
    ((:L_Lift __L_Lift) 0.0)
    ((:L_P_Kick __L_P_Kick) 0.0)
    ((:L_P_Cool __L_P_Cool) 0.0)
    ((:R_Shift __R_Shift) 0.0)
    ((:R_Lift __R_Lift) 0.0)
    ((:R_P_Kick __R_P_Kick) 0.0)
    ((:R_P_Cool __R_P_Cool) 0.0)
    ((:Kp __Kp) 0.0)
    ((:Kd __Kd) 0.0)
    ((:TH1 __TH1) 0.0)
    ((:TH2 __TH2) 0.0)
    ((:Acc __Acc) 0.0)
    ((:KpP __KpP) 0.0)
    ((:KpR __KpR) 0.0)
    ((:KdP __KdP) 0.0)
    ((:KdR __KdR) 0.0)
    ((:Ki __Ki) 0.0)
    ((:zmp_vx __zmp_vx) 0.0)
    ((:zmp_vy __zmp_vy) 0.0)
    ((:zmp_vphi __zmp_vphi) 0.0)
    ((:m_zmp_vx __m_zmp_vx) 0.0)
    ((:m_zmp_vy __m_zmp_vy) 0.0)
    ((:m_zmp_vphi __m_zmp_vphi) 0.0)
    ((:zmp_vx_man __zmp_vx_man) 0.0)
    ((:zmp_useGyro __zmp_useGyro) nil)
    ((:arm_pitch __arm_pitch) 0.0)
    ((:arm_roll __arm_roll) 0.0)
    ((:arm_elbow __arm_elbow) 0.0)
    ((:supp_front __supp_front) 0.0)
    ((:supp_front2 __supp_front2) 0.0)
    ((:supp_turn __supp_turn) 0.0)
    ((:supp_side_x __supp_side_x) 0.0)
    ((:supp_side_y __supp_side_y) 0.0)
    ((:supp_x __supp_x) 0.0)
    ((:supp_y __supp_y) 0.0)
    ((:suppmod_y_init __suppmod_y_init) 0.0)
    ((:turncomp_thrs __turncomp_thrs) 0.0)
    ((:turn_comp __turn_comp) 0.0)
    ((:accel_comp __accel_comp) 0.0)
    ((:front_comp __front_comp) 0.0)
    ((:hiproll_comp __hiproll_comp) 0.0)
    ((:tstep __tstep) 0.0)
    ((:tzmp __tzmp) 0.0)
    ((:velfast_forward __velfast_forward) 0.0)
    ((:velfast_turn __velfast_turn) 0.0)
    ((:angkle_supp_factor __angkle_supp_factor) 0.0)
    ((:foot_y __foot_y) 0.0)
    ((:foot_x __foot_x) 0.0)
    ((:stand_offset __stand_offset) 0.0)
    ((:body_height __body_height) 0.0)
    ((:step_height __step_height) 0.0)
    ((:belly_roll __belly_roll) 0.0)
    ((:belly_hip __belly_hip) 0.0)
    ((:bodytilt __bodytilt) 0.0)
    ((:ankleX_fact __ankleX_fact) 0.0)
    ((:ankleX_deadband __ankleX_deadband) 0.0)
    ((:ankleX_maxVal __ankleX_maxVal) 0.0)
    ((:ankleY_fact __ankleY_fact) 0.0)
    ((:ankleY_deadband __ankleY_deadband) 0.0)
    ((:ankleY_maxVal __ankleY_maxVal) 0.0)
    ((:kneeX_fact __kneeX_fact) 0.0)
    ((:kneeX_deadband __kneeX_deadband) 0.0)
    ((:kneeX_maxVal __kneeX_maxVal) 0.0)
    ((:hipY_fact __hipY_fact) 0.0)
    ((:hipY_deadband __hipY_deadband) 0.0)
    ((:hipY_maxVal __hipY_maxVal) 0.0)
    ((:armY_fact __armY_fact) 0.0)
    ((:armY_deadband __armY_deadband) 0.0)
    ((:armY_maxVal __armY_maxVal) 0.0)
    ((:armX_fact __armX_fact) 0.0)
    ((:armX_deadband __armX_deadband) 0.0)
    ((:armX_maxVal __armX_maxVal) 0.0)
    ((:ballPosX __ballPosX) 0.0)
    ((:ballPosY __ballPosY) 0.0)
    ((:ballPosZ __ballPosZ) 0.0)
    ((:goalPosX __goalPosX) 0.0)
    ((:goalPosY __goalPosY) 0.0)
    ((:goalPosZ __goalPosZ) 0.0)
    ((:power __power) 0.0)
    ((:TRetract __TRetract) 0.0)
    ((:TKick __TKick) 0.0)
    ((:TRising __TRising) 0.0)
    ((:TDown __TDown) 0.0)
    )
   (send-super :init)
   (setq _feedback_ __feedback_)
   (setq _L_Shift (float __L_Shift))
   (setq _L_Lift (float __L_Lift))
   (setq _L_P_Kick (float __L_P_Kick))
   (setq _L_P_Cool (float __L_P_Cool))
   (setq _R_Shift (float __R_Shift))
   (setq _R_Lift (float __R_Lift))
   (setq _R_P_Kick (float __R_P_Kick))
   (setq _R_P_Cool (float __R_P_Cool))
   (setq _Kp (float __Kp))
   (setq _Kd (float __Kd))
   (setq _TH1 (float __TH1))
   (setq _TH2 (float __TH2))
   (setq _Acc (float __Acc))
   (setq _KpP (float __KpP))
   (setq _KpR (float __KpR))
   (setq _KdP (float __KdP))
   (setq _KdR (float __KdR))
   (setq _Ki (float __Ki))
   (setq _zmp_vx (float __zmp_vx))
   (setq _zmp_vy (float __zmp_vy))
   (setq _zmp_vphi (float __zmp_vphi))
   (setq _m_zmp_vx (float __m_zmp_vx))
   (setq _m_zmp_vy (float __m_zmp_vy))
   (setq _m_zmp_vphi (float __m_zmp_vphi))
   (setq _zmp_vx_man (float __zmp_vx_man))
   (setq _zmp_useGyro __zmp_useGyro)
   (setq _arm_pitch (float __arm_pitch))
   (setq _arm_roll (float __arm_roll))
   (setq _arm_elbow (float __arm_elbow))
   (setq _supp_front (float __supp_front))
   (setq _supp_front2 (float __supp_front2))
   (setq _supp_turn (float __supp_turn))
   (setq _supp_side_x (float __supp_side_x))
   (setq _supp_side_y (float __supp_side_y))
   (setq _supp_x (float __supp_x))
   (setq _supp_y (float __supp_y))
   (setq _suppmod_y_init (float __suppmod_y_init))
   (setq _turncomp_thrs (float __turncomp_thrs))
   (setq _turn_comp (float __turn_comp))
   (setq _accel_comp (float __accel_comp))
   (setq _front_comp (float __front_comp))
   (setq _hiproll_comp (float __hiproll_comp))
   (setq _tstep (float __tstep))
   (setq _tzmp (float __tzmp))
   (setq _velfast_forward (float __velfast_forward))
   (setq _velfast_turn (float __velfast_turn))
   (setq _angkle_supp_factor (float __angkle_supp_factor))
   (setq _foot_y (float __foot_y))
   (setq _foot_x (float __foot_x))
   (setq _stand_offset (float __stand_offset))
   (setq _body_height (float __body_height))
   (setq _step_height (float __step_height))
   (setq _belly_roll (float __belly_roll))
   (setq _belly_hip (float __belly_hip))
   (setq _bodytilt (float __bodytilt))
   (setq _ankleX_fact (float __ankleX_fact))
   (setq _ankleX_deadband (float __ankleX_deadband))
   (setq _ankleX_maxVal (float __ankleX_maxVal))
   (setq _ankleY_fact (float __ankleY_fact))
   (setq _ankleY_deadband (float __ankleY_deadband))
   (setq _ankleY_maxVal (float __ankleY_maxVal))
   (setq _kneeX_fact (float __kneeX_fact))
   (setq _kneeX_deadband (float __kneeX_deadband))
   (setq _kneeX_maxVal (float __kneeX_maxVal))
   (setq _hipY_fact (float __hipY_fact))
   (setq _hipY_deadband (float __hipY_deadband))
   (setq _hipY_maxVal (float __hipY_maxVal))
   (setq _armY_fact (float __armY_fact))
   (setq _armY_deadband (float __armY_deadband))
   (setq _armY_maxVal (float __armY_maxVal))
   (setq _armX_fact (float __armX_fact))
   (setq _armX_deadband (float __armX_deadband))
   (setq _armX_maxVal (float __armX_maxVal))
   (setq _ballPosX (float __ballPosX))
   (setq _ballPosY (float __ballPosY))
   (setq _ballPosZ (float __ballPosZ))
   (setq _goalPosX (float __goalPosX))
   (setq _goalPosY (float __goalPosY))
   (setq _goalPosZ (float __goalPosZ))
   (setq _power (float __power))
   (setq _TRetract (float __TRetract))
   (setq _TKick (float __TKick))
   (setq _TRising (float __TRising))
   (setq _TDown (float __TDown))
   self)
  (:feedback_
   (&optional (__feedback_ :null))
   (if (not (eq __feedback_ :null)) (setq _feedback_ __feedback_)) _feedback_)
  (:L_Shift
   (&optional __L_Shift)
   (if __L_Shift (setq _L_Shift __L_Shift)) _L_Shift)
  (:L_Lift
   (&optional __L_Lift)
   (if __L_Lift (setq _L_Lift __L_Lift)) _L_Lift)
  (:L_P_Kick
   (&optional __L_P_Kick)
   (if __L_P_Kick (setq _L_P_Kick __L_P_Kick)) _L_P_Kick)
  (:L_P_Cool
   (&optional __L_P_Cool)
   (if __L_P_Cool (setq _L_P_Cool __L_P_Cool)) _L_P_Cool)
  (:R_Shift
   (&optional __R_Shift)
   (if __R_Shift (setq _R_Shift __R_Shift)) _R_Shift)
  (:R_Lift
   (&optional __R_Lift)
   (if __R_Lift (setq _R_Lift __R_Lift)) _R_Lift)
  (:R_P_Kick
   (&optional __R_P_Kick)
   (if __R_P_Kick (setq _R_P_Kick __R_P_Kick)) _R_P_Kick)
  (:R_P_Cool
   (&optional __R_P_Cool)
   (if __R_P_Cool (setq _R_P_Cool __R_P_Cool)) _R_P_Cool)
  (:Kp
   (&optional __Kp)
   (if __Kp (setq _Kp __Kp)) _Kp)
  (:Kd
   (&optional __Kd)
   (if __Kd (setq _Kd __Kd)) _Kd)
  (:TH1
   (&optional __TH1)
   (if __TH1 (setq _TH1 __TH1)) _TH1)
  (:TH2
   (&optional __TH2)
   (if __TH2 (setq _TH2 __TH2)) _TH2)
  (:Acc
   (&optional __Acc)
   (if __Acc (setq _Acc __Acc)) _Acc)
  (:KpP
   (&optional __KpP)
   (if __KpP (setq _KpP __KpP)) _KpP)
  (:KpR
   (&optional __KpR)
   (if __KpR (setq _KpR __KpR)) _KpR)
  (:KdP
   (&optional __KdP)
   (if __KdP (setq _KdP __KdP)) _KdP)
  (:KdR
   (&optional __KdR)
   (if __KdR (setq _KdR __KdR)) _KdR)
  (:Ki
   (&optional __Ki)
   (if __Ki (setq _Ki __Ki)) _Ki)
  (:zmp_vx
   (&optional __zmp_vx)
   (if __zmp_vx (setq _zmp_vx __zmp_vx)) _zmp_vx)
  (:zmp_vy
   (&optional __zmp_vy)
   (if __zmp_vy (setq _zmp_vy __zmp_vy)) _zmp_vy)
  (:zmp_vphi
   (&optional __zmp_vphi)
   (if __zmp_vphi (setq _zmp_vphi __zmp_vphi)) _zmp_vphi)
  (:m_zmp_vx
   (&optional __m_zmp_vx)
   (if __m_zmp_vx (setq _m_zmp_vx __m_zmp_vx)) _m_zmp_vx)
  (:m_zmp_vy
   (&optional __m_zmp_vy)
   (if __m_zmp_vy (setq _m_zmp_vy __m_zmp_vy)) _m_zmp_vy)
  (:m_zmp_vphi
   (&optional __m_zmp_vphi)
   (if __m_zmp_vphi (setq _m_zmp_vphi __m_zmp_vphi)) _m_zmp_vphi)
  (:zmp_vx_man
   (&optional __zmp_vx_man)
   (if __zmp_vx_man (setq _zmp_vx_man __zmp_vx_man)) _zmp_vx_man)
  (:zmp_useGyro
   (&optional (__zmp_useGyro :null))
   (if (not (eq __zmp_useGyro :null)) (setq _zmp_useGyro __zmp_useGyro)) _zmp_useGyro)
  (:arm_pitch
   (&optional __arm_pitch)
   (if __arm_pitch (setq _arm_pitch __arm_pitch)) _arm_pitch)
  (:arm_roll
   (&optional __arm_roll)
   (if __arm_roll (setq _arm_roll __arm_roll)) _arm_roll)
  (:arm_elbow
   (&optional __arm_elbow)
   (if __arm_elbow (setq _arm_elbow __arm_elbow)) _arm_elbow)
  (:supp_front
   (&optional __supp_front)
   (if __supp_front (setq _supp_front __supp_front)) _supp_front)
  (:supp_front2
   (&optional __supp_front2)
   (if __supp_front2 (setq _supp_front2 __supp_front2)) _supp_front2)
  (:supp_turn
   (&optional __supp_turn)
   (if __supp_turn (setq _supp_turn __supp_turn)) _supp_turn)
  (:supp_side_x
   (&optional __supp_side_x)
   (if __supp_side_x (setq _supp_side_x __supp_side_x)) _supp_side_x)
  (:supp_side_y
   (&optional __supp_side_y)
   (if __supp_side_y (setq _supp_side_y __supp_side_y)) _supp_side_y)
  (:supp_x
   (&optional __supp_x)
   (if __supp_x (setq _supp_x __supp_x)) _supp_x)
  (:supp_y
   (&optional __supp_y)
   (if __supp_y (setq _supp_y __supp_y)) _supp_y)
  (:suppmod_y_init
   (&optional __suppmod_y_init)
   (if __suppmod_y_init (setq _suppmod_y_init __suppmod_y_init)) _suppmod_y_init)
  (:turncomp_thrs
   (&optional __turncomp_thrs)
   (if __turncomp_thrs (setq _turncomp_thrs __turncomp_thrs)) _turncomp_thrs)
  (:turn_comp
   (&optional __turn_comp)
   (if __turn_comp (setq _turn_comp __turn_comp)) _turn_comp)
  (:accel_comp
   (&optional __accel_comp)
   (if __accel_comp (setq _accel_comp __accel_comp)) _accel_comp)
  (:front_comp
   (&optional __front_comp)
   (if __front_comp (setq _front_comp __front_comp)) _front_comp)
  (:hiproll_comp
   (&optional __hiproll_comp)
   (if __hiproll_comp (setq _hiproll_comp __hiproll_comp)) _hiproll_comp)
  (:tstep
   (&optional __tstep)
   (if __tstep (setq _tstep __tstep)) _tstep)
  (:tzmp
   (&optional __tzmp)
   (if __tzmp (setq _tzmp __tzmp)) _tzmp)
  (:velfast_forward
   (&optional __velfast_forward)
   (if __velfast_forward (setq _velfast_forward __velfast_forward)) _velfast_forward)
  (:velfast_turn
   (&optional __velfast_turn)
   (if __velfast_turn (setq _velfast_turn __velfast_turn)) _velfast_turn)
  (:angkle_supp_factor
   (&optional __angkle_supp_factor)
   (if __angkle_supp_factor (setq _angkle_supp_factor __angkle_supp_factor)) _angkle_supp_factor)
  (:foot_y
   (&optional __foot_y)
   (if __foot_y (setq _foot_y __foot_y)) _foot_y)
  (:foot_x
   (&optional __foot_x)
   (if __foot_x (setq _foot_x __foot_x)) _foot_x)
  (:stand_offset
   (&optional __stand_offset)
   (if __stand_offset (setq _stand_offset __stand_offset)) _stand_offset)
  (:body_height
   (&optional __body_height)
   (if __body_height (setq _body_height __body_height)) _body_height)
  (:step_height
   (&optional __step_height)
   (if __step_height (setq _step_height __step_height)) _step_height)
  (:belly_roll
   (&optional __belly_roll)
   (if __belly_roll (setq _belly_roll __belly_roll)) _belly_roll)
  (:belly_hip
   (&optional __belly_hip)
   (if __belly_hip (setq _belly_hip __belly_hip)) _belly_hip)
  (:bodytilt
   (&optional __bodytilt)
   (if __bodytilt (setq _bodytilt __bodytilt)) _bodytilt)
  (:ankleX_fact
   (&optional __ankleX_fact)
   (if __ankleX_fact (setq _ankleX_fact __ankleX_fact)) _ankleX_fact)
  (:ankleX_deadband
   (&optional __ankleX_deadband)
   (if __ankleX_deadband (setq _ankleX_deadband __ankleX_deadband)) _ankleX_deadband)
  (:ankleX_maxVal
   (&optional __ankleX_maxVal)
   (if __ankleX_maxVal (setq _ankleX_maxVal __ankleX_maxVal)) _ankleX_maxVal)
  (:ankleY_fact
   (&optional __ankleY_fact)
   (if __ankleY_fact (setq _ankleY_fact __ankleY_fact)) _ankleY_fact)
  (:ankleY_deadband
   (&optional __ankleY_deadband)
   (if __ankleY_deadband (setq _ankleY_deadband __ankleY_deadband)) _ankleY_deadband)
  (:ankleY_maxVal
   (&optional __ankleY_maxVal)
   (if __ankleY_maxVal (setq _ankleY_maxVal __ankleY_maxVal)) _ankleY_maxVal)
  (:kneeX_fact
   (&optional __kneeX_fact)
   (if __kneeX_fact (setq _kneeX_fact __kneeX_fact)) _kneeX_fact)
  (:kneeX_deadband
   (&optional __kneeX_deadband)
   (if __kneeX_deadband (setq _kneeX_deadband __kneeX_deadband)) _kneeX_deadband)
  (:kneeX_maxVal
   (&optional __kneeX_maxVal)
   (if __kneeX_maxVal (setq _kneeX_maxVal __kneeX_maxVal)) _kneeX_maxVal)
  (:hipY_fact
   (&optional __hipY_fact)
   (if __hipY_fact (setq _hipY_fact __hipY_fact)) _hipY_fact)
  (:hipY_deadband
   (&optional __hipY_deadband)
   (if __hipY_deadband (setq _hipY_deadband __hipY_deadband)) _hipY_deadband)
  (:hipY_maxVal
   (&optional __hipY_maxVal)
   (if __hipY_maxVal (setq _hipY_maxVal __hipY_maxVal)) _hipY_maxVal)
  (:armY_fact
   (&optional __armY_fact)
   (if __armY_fact (setq _armY_fact __armY_fact)) _armY_fact)
  (:armY_deadband
   (&optional __armY_deadband)
   (if __armY_deadband (setq _armY_deadband __armY_deadband)) _armY_deadband)
  (:armY_maxVal
   (&optional __armY_maxVal)
   (if __armY_maxVal (setq _armY_maxVal __armY_maxVal)) _armY_maxVal)
  (:armX_fact
   (&optional __armX_fact)
   (if __armX_fact (setq _armX_fact __armX_fact)) _armX_fact)
  (:armX_deadband
   (&optional __armX_deadband)
   (if __armX_deadband (setq _armX_deadband __armX_deadband)) _armX_deadband)
  (:armX_maxVal
   (&optional __armX_maxVal)
   (if __armX_maxVal (setq _armX_maxVal __armX_maxVal)) _armX_maxVal)
  (:ballPosX
   (&optional __ballPosX)
   (if __ballPosX (setq _ballPosX __ballPosX)) _ballPosX)
  (:ballPosY
   (&optional __ballPosY)
   (if __ballPosY (setq _ballPosY __ballPosY)) _ballPosY)
  (:ballPosZ
   (&optional __ballPosZ)
   (if __ballPosZ (setq _ballPosZ __ballPosZ)) _ballPosZ)
  (:goalPosX
   (&optional __goalPosX)
   (if __goalPosX (setq _goalPosX __goalPosX)) _goalPosX)
  (:goalPosY
   (&optional __goalPosY)
   (if __goalPosY (setq _goalPosY __goalPosY)) _goalPosY)
  (:goalPosZ
   (&optional __goalPosZ)
   (if __goalPosZ (setq _goalPosZ __goalPosZ)) _goalPosZ)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:TRetract
   (&optional __TRetract)
   (if __TRetract (setq _TRetract __TRetract)) _TRetract)
  (:TKick
   (&optional __TKick)
   (if __TKick (setq _TKick __TKick)) _TKick)
  (:TRising
   (&optional __TRising)
   (if __TRising (setq _TRising __TRising)) _TRising)
  (:TDown
   (&optional __TDown)
   (if __TDown (setq _TDown __TDown)) _TDown)
  (:serialization-length
   ()
   (+
    ;; bool _feedback_
    1
    ;; float32 _L_Shift
    4
    ;; float32 _L_Lift
    4
    ;; float32 _L_P_Kick
    4
    ;; float32 _L_P_Cool
    4
    ;; float32 _R_Shift
    4
    ;; float32 _R_Lift
    4
    ;; float32 _R_P_Kick
    4
    ;; float32 _R_P_Cool
    4
    ;; float32 _Kp
    4
    ;; float32 _Kd
    4
    ;; float32 _TH1
    4
    ;; float32 _TH2
    4
    ;; float32 _Acc
    4
    ;; float32 _KpP
    4
    ;; float32 _KpR
    4
    ;; float32 _KdP
    4
    ;; float32 _KdR
    4
    ;; float32 _Ki
    4
    ;; float32 _zmp_vx
    4
    ;; float32 _zmp_vy
    4
    ;; float32 _zmp_vphi
    4
    ;; float32 _m_zmp_vx
    4
    ;; float32 _m_zmp_vy
    4
    ;; float32 _m_zmp_vphi
    4
    ;; float32 _zmp_vx_man
    4
    ;; bool _zmp_useGyro
    1
    ;; float32 _arm_pitch
    4
    ;; float32 _arm_roll
    4
    ;; float32 _arm_elbow
    4
    ;; float32 _supp_front
    4
    ;; float32 _supp_front2
    4
    ;; float32 _supp_turn
    4
    ;; float32 _supp_side_x
    4
    ;; float32 _supp_side_y
    4
    ;; float32 _supp_x
    4
    ;; float32 _supp_y
    4
    ;; float32 _suppmod_y_init
    4
    ;; float32 _turncomp_thrs
    4
    ;; float32 _turn_comp
    4
    ;; float32 _accel_comp
    4
    ;; float32 _front_comp
    4
    ;; float32 _hiproll_comp
    4
    ;; float32 _tstep
    4
    ;; float32 _tzmp
    4
    ;; float32 _velfast_forward
    4
    ;; float32 _velfast_turn
    4
    ;; float32 _angkle_supp_factor
    4
    ;; float32 _foot_y
    4
    ;; float32 _foot_x
    4
    ;; float32 _stand_offset
    4
    ;; float32 _body_height
    4
    ;; float32 _step_height
    4
    ;; float32 _belly_roll
    4
    ;; float32 _belly_hip
    4
    ;; float32 _bodytilt
    4
    ;; float32 _ankleX_fact
    4
    ;; float32 _ankleX_deadband
    4
    ;; float32 _ankleX_maxVal
    4
    ;; float32 _ankleY_fact
    4
    ;; float32 _ankleY_deadband
    4
    ;; float32 _ankleY_maxVal
    4
    ;; float32 _kneeX_fact
    4
    ;; float32 _kneeX_deadband
    4
    ;; float32 _kneeX_maxVal
    4
    ;; float32 _hipY_fact
    4
    ;; float32 _hipY_deadband
    4
    ;; float32 _hipY_maxVal
    4
    ;; float32 _armY_fact
    4
    ;; float32 _armY_deadband
    4
    ;; float32 _armY_maxVal
    4
    ;; float32 _armX_fact
    4
    ;; float32 _armX_deadband
    4
    ;; float32 _armX_maxVal
    4
    ;; float32 _ballPosX
    4
    ;; float32 _ballPosY
    4
    ;; float32 _ballPosZ
    4
    ;; float32 _goalPosX
    4
    ;; float32 _goalPosY
    4
    ;; float32 _goalPosZ
    4
    ;; float32 _power
    4
    ;; float32 _TRetract
    4
    ;; float32 _TKick
    4
    ;; float32 _TRising
    4
    ;; float32 _TDown
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _feedback_
       (if _feedback_ (write-byte -1 s) (write-byte 0 s))
     ;; float32 _L_Shift
       (sys::poke _L_Shift (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Lift
       (sys::poke _L_Lift (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_P_Kick
       (sys::poke _L_P_Kick (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_P_Cool
       (sys::poke _L_P_Cool (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Shift
       (sys::poke _R_Shift (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Lift
       (sys::poke _R_Lift (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_P_Kick
       (sys::poke _R_P_Kick (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_P_Cool
       (sys::poke _R_P_Cool (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Kp
       (sys::poke _Kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Kd
       (sys::poke _Kd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TH1
       (sys::poke _TH1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TH2
       (sys::poke _TH2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Acc
       (sys::poke _Acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KpP
       (sys::poke _KpP (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KpR
       (sys::poke _KpR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KdP
       (sys::poke _KdP (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KdR
       (sys::poke _KdR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ki
       (sys::poke _Ki (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zmp_vx
       (sys::poke _zmp_vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zmp_vy
       (sys::poke _zmp_vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zmp_vphi
       (sys::poke _zmp_vphi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m_zmp_vx
       (sys::poke _m_zmp_vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m_zmp_vy
       (sys::poke _m_zmp_vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m_zmp_vphi
       (sys::poke _m_zmp_vphi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zmp_vx_man
       (sys::poke _zmp_vx_man (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _zmp_useGyro
       (if _zmp_useGyro (write-byte -1 s) (write-byte 0 s))
     ;; float32 _arm_pitch
       (sys::poke _arm_pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm_roll
       (sys::poke _arm_roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm_elbow
       (sys::poke _arm_elbow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _supp_front
       (sys::poke _supp_front (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _supp_front2
       (sys::poke _supp_front2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _supp_turn
       (sys::poke _supp_turn (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _supp_side_x
       (sys::poke _supp_side_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _supp_side_y
       (sys::poke _supp_side_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _supp_x
       (sys::poke _supp_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _supp_y
       (sys::poke _supp_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _suppmod_y_init
       (sys::poke _suppmod_y_init (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _turncomp_thrs
       (sys::poke _turncomp_thrs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _turn_comp
       (sys::poke _turn_comp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_comp
       (sys::poke _accel_comp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_comp
       (sys::poke _front_comp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hiproll_comp
       (sys::poke _hiproll_comp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tstep
       (sys::poke _tstep (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tzmp
       (sys::poke _tzmp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velfast_forward
       (sys::poke _velfast_forward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velfast_turn
       (sys::poke _velfast_turn (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angkle_supp_factor
       (sys::poke _angkle_supp_factor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _foot_y
       (sys::poke _foot_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _foot_x
       (sys::poke _foot_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stand_offset
       (sys::poke _stand_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _body_height
       (sys::poke _body_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _step_height
       (sys::poke _step_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _belly_roll
       (sys::poke _belly_roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _belly_hip
       (sys::poke _belly_hip (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bodytilt
       (sys::poke _bodytilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ankleX_fact
       (sys::poke _ankleX_fact (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ankleX_deadband
       (sys::poke _ankleX_deadband (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ankleX_maxVal
       (sys::poke _ankleX_maxVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ankleY_fact
       (sys::poke _ankleY_fact (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ankleY_deadband
       (sys::poke _ankleY_deadband (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ankleY_maxVal
       (sys::poke _ankleY_maxVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kneeX_fact
       (sys::poke _kneeX_fact (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kneeX_deadband
       (sys::poke _kneeX_deadband (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kneeX_maxVal
       (sys::poke _kneeX_maxVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hipY_fact
       (sys::poke _hipY_fact (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hipY_deadband
       (sys::poke _hipY_deadband (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hipY_maxVal
       (sys::poke _hipY_maxVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _armY_fact
       (sys::poke _armY_fact (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _armY_deadband
       (sys::poke _armY_deadband (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _armY_maxVal
       (sys::poke _armY_maxVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _armX_fact
       (sys::poke _armX_fact (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _armX_deadband
       (sys::poke _armX_deadband (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _armX_maxVal
       (sys::poke _armX_maxVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ballPosX
       (sys::poke _ballPosX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ballPosY
       (sys::poke _ballPosY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ballPosZ
       (sys::poke _ballPosZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _goalPosX
       (sys::poke _goalPosX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _goalPosY
       (sys::poke _goalPosY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _goalPosZ
       (sys::poke _goalPosZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _power
       (sys::poke _power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TRetract
       (sys::poke _TRetract (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TKick
       (sys::poke _TKick (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TRising
       (sys::poke _TRising (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TDown
       (sys::poke _TDown (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _feedback_
     (setq _feedback_ (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _L_Shift
     (setq _L_Shift (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Lift
     (setq _L_Lift (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_P_Kick
     (setq _L_P_Kick (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_P_Cool
     (setq _L_P_Cool (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Shift
     (setq _R_Shift (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Lift
     (setq _R_Lift (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_P_Kick
     (setq _R_P_Kick (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_P_Cool
     (setq _R_P_Cool (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Kp
     (setq _Kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Kd
     (setq _Kd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TH1
     (setq _TH1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TH2
     (setq _TH2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Acc
     (setq _Acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KpP
     (setq _KpP (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KpR
     (setq _KpR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KdP
     (setq _KdP (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KdR
     (setq _KdR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ki
     (setq _Ki (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zmp_vx
     (setq _zmp_vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zmp_vy
     (setq _zmp_vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zmp_vphi
     (setq _zmp_vphi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m_zmp_vx
     (setq _m_zmp_vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m_zmp_vy
     (setq _m_zmp_vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m_zmp_vphi
     (setq _m_zmp_vphi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zmp_vx_man
     (setq _zmp_vx_man (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _zmp_useGyro
     (setq _zmp_useGyro (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _arm_pitch
     (setq _arm_pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm_roll
     (setq _arm_roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm_elbow
     (setq _arm_elbow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _supp_front
     (setq _supp_front (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _supp_front2
     (setq _supp_front2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _supp_turn
     (setq _supp_turn (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _supp_side_x
     (setq _supp_side_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _supp_side_y
     (setq _supp_side_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _supp_x
     (setq _supp_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _supp_y
     (setq _supp_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _suppmod_y_init
     (setq _suppmod_y_init (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _turncomp_thrs
     (setq _turncomp_thrs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _turn_comp
     (setq _turn_comp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_comp
     (setq _accel_comp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_comp
     (setq _front_comp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hiproll_comp
     (setq _hiproll_comp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tstep
     (setq _tstep (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tzmp
     (setq _tzmp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velfast_forward
     (setq _velfast_forward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velfast_turn
     (setq _velfast_turn (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angkle_supp_factor
     (setq _angkle_supp_factor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _foot_y
     (setq _foot_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _foot_x
     (setq _foot_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stand_offset
     (setq _stand_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _body_height
     (setq _body_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _step_height
     (setq _step_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _belly_roll
     (setq _belly_roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _belly_hip
     (setq _belly_hip (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bodytilt
     (setq _bodytilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ankleX_fact
     (setq _ankleX_fact (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ankleX_deadband
     (setq _ankleX_deadband (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ankleX_maxVal
     (setq _ankleX_maxVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ankleY_fact
     (setq _ankleY_fact (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ankleY_deadband
     (setq _ankleY_deadband (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ankleY_maxVal
     (setq _ankleY_maxVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kneeX_fact
     (setq _kneeX_fact (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kneeX_deadband
     (setq _kneeX_deadband (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kneeX_maxVal
     (setq _kneeX_maxVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hipY_fact
     (setq _hipY_fact (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hipY_deadband
     (setq _hipY_deadband (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hipY_maxVal
     (setq _hipY_maxVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _armY_fact
     (setq _armY_fact (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _armY_deadband
     (setq _armY_deadband (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _armY_maxVal
     (setq _armY_maxVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _armX_fact
     (setq _armX_fact (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _armX_deadband
     (setq _armX_deadband (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _armX_maxVal
     (setq _armX_maxVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ballPosX
     (setq _ballPosX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ballPosY
     (setq _ballPosY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ballPosZ
     (setq _ballPosZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _goalPosX
     (setq _goalPosX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _goalPosY
     (setq _goalPosY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _goalPosZ
     (setq _goalPosZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _power
     (setq _power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TRetract
     (setq _TRetract (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TKick
     (setq _TKick (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TRising
     (setq _TRising (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TDown
     (setq _TDown (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zmp_walking_module_msgs::ZMPWalkingParam :md5sum-) "18fd4f4232f23b551ffb99639a489507")
(setf (get zmp_walking_module_msgs::ZMPWalkingParam :datatype-) "zmp_walking_module_msgs/ZMPWalkingParam")
(setf (get zmp_walking_module_msgs::ZMPWalkingParam :definition-)
      "########## ZMP WALKING BIT-BOTS ###########

bool feedback_

float32 L_Shift
float32 L_Lift
float32 L_P_Kick
float32 L_P_Cool

float32 R_Shift
float32 R_Lift
float32 R_P_Kick
float32 R_P_Cool

float32 Kp
float32 Kd
float32 TH1
float32 TH2
float32 Acc

float32 KpP
float32 KpR
float32 KdP
float32 KdR
float32 Ki

float32 zmp_vx
float32 zmp_vy
float32 zmp_vphi
float32 m_zmp_vx
float32 m_zmp_vy
float32 m_zmp_vphi
float32 zmp_vx_man

bool zmp_useGyro
float32 arm_pitch
float32 arm_roll
float32 arm_elbow

float32 supp_front
float32 supp_front2
float32 supp_turn
float32 supp_side_x
float32 supp_side_y
float32 supp_x
float32 supp_y

float32 suppmod_y_init
float32 turncomp_thrs
float32 turn_comp
float32 accel_comp
float32 front_comp
float32 hiproll_comp
float32 tstep
float32 tzmp
float32 velfast_forward
float32 velfast_turn
float32 angkle_supp_factor

float32 foot_y
float32 foot_x
float32 stand_offset
float32 body_height
float32 step_height
float32 belly_roll
float32 belly_hip
float32 bodytilt

float32 ankleX_fact
float32 ankleX_deadband
float32 ankleX_maxVal

float32 ankleY_fact
float32 ankleY_deadband
float32 ankleY_maxVal

float32 kneeX_fact
float32 kneeX_deadband
float32 kneeX_maxVal

float32 hipY_fact
float32 hipY_deadband
float32 hipY_maxVal

float32 armY_fact
float32 armY_deadband
float32 armY_maxVal

float32 armX_fact
float32 armX_deadband
float32 armX_maxVal

float32 ballPosX
float32 ballPosY
float32 ballPosZ

float32 goalPosX
float32 goalPosY
float32 goalPosZ

float32 power
float32 TRetract
float32 TKick
float32 TRising
float32 TDown

")



(provide :zmp_walking_module_msgs/ZMPWalkingParam "18fd4f4232f23b551ffb99639a489507")


