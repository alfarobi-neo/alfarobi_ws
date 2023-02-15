;; Auto-generated. Do not edit!


(when (boundp 'zmp_walking_module_msgs::GetZMPParam)
  (if (not (find-package "ZMP_WALKING_MODULE_MSGS"))
    (make-package "ZMP_WALKING_MODULE_MSGS"))
  (shadow 'GetZMPParam (find-package "ZMP_WALKING_MODULE_MSGS")))
(unless (find-package "ZMP_WALKING_MODULE_MSGS::GETZMPPARAM")
  (make-package "ZMP_WALKING_MODULE_MSGS::GETZMPPARAM"))
(unless (find-package "ZMP_WALKING_MODULE_MSGS::GETZMPPARAMREQUEST")
  (make-package "ZMP_WALKING_MODULE_MSGS::GETZMPPARAMREQUEST"))
(unless (find-package "ZMP_WALKING_MODULE_MSGS::GETZMPPARAMRESPONSE")
  (make-package "ZMP_WALKING_MODULE_MSGS::GETZMPPARAMRESPONSE"))

(in-package "ROS")





(defclass zmp_walking_module_msgs::GetZMPParamRequest
  :super ros::object
  :slots (_get_param ))

(defmethod zmp_walking_module_msgs::GetZMPParamRequest
  (:init
   (&key
    ((:get_param __get_param) nil)
    )
   (send-super :init)
   (setq _get_param __get_param)
   self)
  (:get_param
   (&optional __get_param)
   (if __get_param (setq _get_param __get_param)) _get_param)
  (:serialization-length
   ()
   (+
    ;; bool _get_param
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _get_param
       (if _get_param (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _get_param
     (setq _get_param (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zmp_walking_module_msgs::GetZMPParamResponse
  :super ros::object
  :slots (_parameters ))

(defmethod zmp_walking_module_msgs::GetZMPParamResponse
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

(defclass zmp_walking_module_msgs::GetZMPParam
  :super ros::object
  :slots ())

(setf (get zmp_walking_module_msgs::GetZMPParam :md5sum-) "345512f6abd01a81ac305105720e1009")
(setf (get zmp_walking_module_msgs::GetZMPParam :datatype-) "zmp_walking_module_msgs/GetZMPParam")
(setf (get zmp_walking_module_msgs::GetZMPParam :request) zmp_walking_module_msgs::GetZMPParamRequest)
(setf (get zmp_walking_module_msgs::GetZMPParam :response) zmp_walking_module_msgs::GetZMPParamResponse)

(defmethod zmp_walking_module_msgs::GetZMPParamRequest
  (:response () (instance zmp_walking_module_msgs::GetZMPParamResponse :init)))

(setf (get zmp_walking_module_msgs::GetZMPParamRequest :md5sum-) "345512f6abd01a81ac305105720e1009")
(setf (get zmp_walking_module_msgs::GetZMPParamRequest :datatype-) "zmp_walking_module_msgs/GetZMPParamRequest")
(setf (get zmp_walking_module_msgs::GetZMPParamRequest :definition-)
      "bool            get_param
---
ZMPWalkingParam    parameters


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
")

(setf (get zmp_walking_module_msgs::GetZMPParamResponse :md5sum-) "345512f6abd01a81ac305105720e1009")
(setf (get zmp_walking_module_msgs::GetZMPParamResponse :datatype-) "zmp_walking_module_msgs/GetZMPParamResponse")
(setf (get zmp_walking_module_msgs::GetZMPParamResponse :definition-)
      "bool            get_param
---
ZMPWalkingParam    parameters


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
")



(provide :zmp_walking_module_msgs/GetZMPParam "345512f6abd01a81ac305105720e1009")


