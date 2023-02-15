;; Auto-generated. Do not edit!


(when (boundp 'op3_walking_module_msgs::GetWalkingParam)
  (if (not (find-package "OP3_WALKING_MODULE_MSGS"))
    (make-package "OP3_WALKING_MODULE_MSGS"))
  (shadow 'GetWalkingParam (find-package "OP3_WALKING_MODULE_MSGS")))
(unless (find-package "OP3_WALKING_MODULE_MSGS::GETWALKINGPARAM")
  (make-package "OP3_WALKING_MODULE_MSGS::GETWALKINGPARAM"))
(unless (find-package "OP3_WALKING_MODULE_MSGS::GETWALKINGPARAMREQUEST")
  (make-package "OP3_WALKING_MODULE_MSGS::GETWALKINGPARAMREQUEST"))
(unless (find-package "OP3_WALKING_MODULE_MSGS::GETWALKINGPARAMRESPONSE")
  (make-package "OP3_WALKING_MODULE_MSGS::GETWALKINGPARAMRESPONSE"))

(in-package "ROS")





(defclass op3_walking_module_msgs::GetWalkingParamRequest
  :super ros::object
  :slots (_get_param ))

(defmethod op3_walking_module_msgs::GetWalkingParamRequest
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

(defclass op3_walking_module_msgs::GetWalkingParamResponse
  :super ros::object
  :slots (_parameters ))

(defmethod op3_walking_module_msgs::GetWalkingParamResponse
  (:init
   (&key
    ((:parameters __parameters) (instance op3_walking_module_msgs::WalkingParam :init))
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
    ;; op3_walking_module_msgs/WalkingParam _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; op3_walking_module_msgs/WalkingParam _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; op3_walking_module_msgs/WalkingParam _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(defclass op3_walking_module_msgs::GetWalkingParam
  :super ros::object
  :slots ())

(setf (get op3_walking_module_msgs::GetWalkingParam :md5sum-) "e6bb9eb8d4f3aefc22cb83ac27afe08c")
(setf (get op3_walking_module_msgs::GetWalkingParam :datatype-) "op3_walking_module_msgs/GetWalkingParam")
(setf (get op3_walking_module_msgs::GetWalkingParam :request) op3_walking_module_msgs::GetWalkingParamRequest)
(setf (get op3_walking_module_msgs::GetWalkingParam :response) op3_walking_module_msgs::GetWalkingParamResponse)

(defmethod op3_walking_module_msgs::GetWalkingParamRequest
  (:response () (instance op3_walking_module_msgs::GetWalkingParamResponse :init)))

(setf (get op3_walking_module_msgs::GetWalkingParamRequest :md5sum-) "e6bb9eb8d4f3aefc22cb83ac27afe08c")
(setf (get op3_walking_module_msgs::GetWalkingParamRequest :datatype-) "op3_walking_module_msgs/GetWalkingParamRequest")
(setf (get op3_walking_module_msgs::GetWalkingParamRequest :definition-)
      "bool            get_param
---
WalkingParam    parameters

================================================================================
MSG: op3_walking_module_msgs/WalkingParam
####### walking init pose #######
float32 init_x_offset
float32 init_y_offset
float32 init_z_offset
float32 init_roll_offset
float32 init_pitch_offset
float32 init_yaw_offset
float32 r_x_offset
float32 r_y_offset
float32 r_z_offset
float32 r_roll_offset
float32 r_pitch_offset
float32 r_yaw_offset
float32 l_x_offset
float32 l_y_offset
float32 l_z_offset
float32 l_roll_offset
float32 l_pitch_offset
float32 l_yaw_offset


####### time parameter #####
float32 period_time
float32 dsp_ratio
float32 step_fb_ratio

########## walking parameter ########
float32 x_move_amplitude
float32 y_move_amplitude
float32 z_move_amplitude
float32 angle_move_amplitude
bool move_aim_on

########## balance parameter ##########
bool balance_enable
float32 balance_hip_roll_gain
float32 balance_knee_gain
float32 balance_ankle_roll_gain
float32 balance_ankle_pitch_gain
float32 y_swap_amplitude
float32 z_swap_amplitude
float32 arm_swing_gain
float32 pelvis_offset
float32 hip_pitch_offset

########## balance parameter ##########
float32 KP_P
float32 KD_P
float32 KI_P
float32 D_ANKLE_P
float32 D_KNEE
float32 D_HIP_P

float32 KP_R
float32 KD_R
float32 KI_R
float32 D_ANKLE_R
float32 D_HIP_R
float32 shoulder_gain

########## gain parameter ##########
int32 p_gain
int32 i_gain
int32 d_gain

########## ZMP WALKING BIT-BOTS ###########
float32 zmp_vx
float32 zmp_vy
float32 zmp_vphi

bool zmp_useGyro
")

(setf (get op3_walking_module_msgs::GetWalkingParamResponse :md5sum-) "e6bb9eb8d4f3aefc22cb83ac27afe08c")
(setf (get op3_walking_module_msgs::GetWalkingParamResponse :datatype-) "op3_walking_module_msgs/GetWalkingParamResponse")
(setf (get op3_walking_module_msgs::GetWalkingParamResponse :definition-)
      "bool            get_param
---
WalkingParam    parameters

================================================================================
MSG: op3_walking_module_msgs/WalkingParam
####### walking init pose #######
float32 init_x_offset
float32 init_y_offset
float32 init_z_offset
float32 init_roll_offset
float32 init_pitch_offset
float32 init_yaw_offset
float32 r_x_offset
float32 r_y_offset
float32 r_z_offset
float32 r_roll_offset
float32 r_pitch_offset
float32 r_yaw_offset
float32 l_x_offset
float32 l_y_offset
float32 l_z_offset
float32 l_roll_offset
float32 l_pitch_offset
float32 l_yaw_offset


####### time parameter #####
float32 period_time
float32 dsp_ratio
float32 step_fb_ratio

########## walking parameter ########
float32 x_move_amplitude
float32 y_move_amplitude
float32 z_move_amplitude
float32 angle_move_amplitude
bool move_aim_on

########## balance parameter ##########
bool balance_enable
float32 balance_hip_roll_gain
float32 balance_knee_gain
float32 balance_ankle_roll_gain
float32 balance_ankle_pitch_gain
float32 y_swap_amplitude
float32 z_swap_amplitude
float32 arm_swing_gain
float32 pelvis_offset
float32 hip_pitch_offset

########## balance parameter ##########
float32 KP_P
float32 KD_P
float32 KI_P
float32 D_ANKLE_P
float32 D_KNEE
float32 D_HIP_P

float32 KP_R
float32 KD_R
float32 KI_R
float32 D_ANKLE_R
float32 D_HIP_R
float32 shoulder_gain

########## gain parameter ##########
int32 p_gain
int32 i_gain
int32 d_gain

########## ZMP WALKING BIT-BOTS ###########
float32 zmp_vx
float32 zmp_vy
float32 zmp_vphi

bool zmp_useGyro
")



(provide :op3_walking_module_msgs/GetWalkingParam "e6bb9eb8d4f3aefc22cb83ac27afe08c")


