;; Auto-generated. Do not edit!


(when (boundp 'zmp_walking_module_msgs::SetZMPParam)
  (if (not (find-package "ZMP_WALKING_MODULE_MSGS"))
    (make-package "ZMP_WALKING_MODULE_MSGS"))
  (shadow 'SetZMPParam (find-package "ZMP_WALKING_MODULE_MSGS")))
(unless (find-package "ZMP_WALKING_MODULE_MSGS::SETZMPPARAM")
  (make-package "ZMP_WALKING_MODULE_MSGS::SETZMPPARAM"))
(unless (find-package "ZMP_WALKING_MODULE_MSGS::SETZMPPARAMREQUEST")
  (make-package "ZMP_WALKING_MODULE_MSGS::SETZMPPARAMREQUEST"))
(unless (find-package "ZMP_WALKING_MODULE_MSGS::SETZMPPARAMRESPONSE")
  (make-package "ZMP_WALKING_MODULE_MSGS::SETZMPPARAMRESPONSE"))

(in-package "ROS")





(defclass zmp_walking_module_msgs::SetZMPParamRequest
  :super ros::object
  :slots (_parameters ))

(defmethod zmp_walking_module_msgs::SetZMPParamRequest
  (:init
   (&key
    ((:parameters __parameters) (instance zmp_walking_module_msgs::ZMPWalkingParam :init))
    )
   (send-super :init)
   (setq _parameters __parameters)
   self)
  (:parameters
   (&rest __parameters)
   (if (keywordp (car __parameters))
       (send* _parameters __parameters)
     (progn
       (if __parameters (setq _parameters (car __parameters)))
       _parameters)))
  (:serialization-length
   ()
   (+
    ;; zmp_walking_module_msgs/ZMPWalkingParam _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zmp_walking_module_msgs/ZMPWalkingParam _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zmp_walking_module_msgs/ZMPWalkingParam _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(defclass zmp_walking_module_msgs::SetZMPParamResponse
  :super ros::object
  :slots (_result ))

(defmethod zmp_walking_module_msgs::SetZMPParamResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zmp_walking_module_msgs::SetZMPParam
  :super ros::object
  :slots ())

(setf (get zmp_walking_module_msgs::SetZMPParam :md5sum-) "5e9b025a73e0773bcc6bbe494dae167b")
(setf (get zmp_walking_module_msgs::SetZMPParam :datatype-) "zmp_walking_module_msgs/SetZMPParam")
(setf (get zmp_walking_module_msgs::SetZMPParam :request) zmp_walking_module_msgs::SetZMPParamRequest)
(setf (get zmp_walking_module_msgs::SetZMPParam :response) zmp_walking_module_msgs::SetZMPParamResponse)

(defmethod zmp_walking_module_msgs::SetZMPParamRequest
  (:response () (instance zmp_walking_module_msgs::SetZMPParamResponse :init)))

(setf (get zmp_walking_module_msgs::SetZMPParamRequest :md5sum-) "5e9b025a73e0773bcc6bbe494dae167b")
(setf (get zmp_walking_module_msgs::SetZMPParamRequest :datatype-) "zmp_walking_module_msgs/SetZMPParamRequest")
(setf (get zmp_walking_module_msgs::SetZMPParamRequest :definition-)
      "ZMPWalkingParam    parameters

================================================================================
MSG: zmp_walking_module_msgs/ZMPWalkingParam
########## ZMP WALKING BIT-BOTS ###########

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
---
bool            result

")

(setf (get zmp_walking_module_msgs::SetZMPParamResponse :md5sum-) "5e9b025a73e0773bcc6bbe494dae167b")
(setf (get zmp_walking_module_msgs::SetZMPParamResponse :datatype-) "zmp_walking_module_msgs/SetZMPParamResponse")
(setf (get zmp_walking_module_msgs::SetZMPParamResponse :definition-)
      "ZMPWalkingParam    parameters

================================================================================
MSG: zmp_walking_module_msgs/ZMPWalkingParam
########## ZMP WALKING BIT-BOTS ###########

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
---
bool            result

")



(provide :zmp_walking_module_msgs/SetZMPParam "5e9b025a73e0773bcc6bbe494dae167b")


