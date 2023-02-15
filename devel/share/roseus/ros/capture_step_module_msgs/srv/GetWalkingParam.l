;; Auto-generated. Do not edit!


(when (boundp 'capture_step_module_msgs::GetWalkingParam)
  (if (not (find-package "CAPTURE_STEP_MODULE_MSGS"))
    (make-package "CAPTURE_STEP_MODULE_MSGS"))
  (shadow 'GetWalkingParam (find-package "CAPTURE_STEP_MODULE_MSGS")))
(unless (find-package "CAPTURE_STEP_MODULE_MSGS::GETWALKINGPARAM")
  (make-package "CAPTURE_STEP_MODULE_MSGS::GETWALKINGPARAM"))
(unless (find-package "CAPTURE_STEP_MODULE_MSGS::GETWALKINGPARAMREQUEST")
  (make-package "CAPTURE_STEP_MODULE_MSGS::GETWALKINGPARAMREQUEST"))
(unless (find-package "CAPTURE_STEP_MODULE_MSGS::GETWALKINGPARAMRESPONSE")
  (make-package "CAPTURE_STEP_MODULE_MSGS::GETWALKINGPARAMRESPONSE"))

(in-package "ROS")





(defclass capture_step_module_msgs::GetWalkingParamRequest
  :super ros::object
  :slots (_get_param ))

(defmethod capture_step_module_msgs::GetWalkingParamRequest
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

(defclass capture_step_module_msgs::GetWalkingParamResponse
  :super ros::object
  :slots (_parameters ))

(defmethod capture_step_module_msgs::GetWalkingParamResponse
  (:init
   (&key
    ((:parameters __parameters) (instance capture_step_module_msgs::WalkingParam :init))
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
    ;; capture_step_module_msgs/WalkingParam _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; capture_step_module_msgs/WalkingParam _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; capture_step_module_msgs/WalkingParam _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(defclass capture_step_module_msgs::GetWalkingParam
  :super ros::object
  :slots ())

(setf (get capture_step_module_msgs::GetWalkingParam :md5sum-) "33e093e1a36ede369994f83338945659")
(setf (get capture_step_module_msgs::GetWalkingParam :datatype-) "capture_step_module_msgs/GetWalkingParam")
(setf (get capture_step_module_msgs::GetWalkingParam :request) capture_step_module_msgs::GetWalkingParamRequest)
(setf (get capture_step_module_msgs::GetWalkingParam :response) capture_step_module_msgs::GetWalkingParamResponse)

(defmethod capture_step_module_msgs::GetWalkingParamRequest
  (:response () (instance capture_step_module_msgs::GetWalkingParamResponse :init)))

(setf (get capture_step_module_msgs::GetWalkingParamRequest :md5sum-) "33e093e1a36ede369994f83338945659")
(setf (get capture_step_module_msgs::GetWalkingParamRequest :datatype-) "capture_step_module_msgs/GetWalkingParamRequest")
(setf (get capture_step_module_msgs::GetWalkingParamRequest :definition-)
      "bool            get_param
---
WalkingParam    parameters

================================================================================
MSG: capture_step_module_msgs/WalkingParam
####### Halt Position #######
float32 halt_pos_leg_ext
float32 halt_pos_leg_roll_ext
float32 halt_pos_leg_pitch_ext
float32 halt_pos_foot_roll_ext
float32 halt_pos_foot_pitch_ext

####### Leg Lifting #####
float32 const_ground_push
float32 propt_ground_push
float32 const_step_height
float32 propt_step_height

########## Leg Swing ########
float32 swing_start
float32 swing_stop
float32 sagittal_swg_fwd
float32 sagittal_swg_bwd
float32 lateral_swg
float32 lateral_swg_offset
float32 trng_lateral_swg_offset
float32 rotational_swg
float32 rotational_swg_offset

########## Lateral Hip Swing ##########
float32 lateral_hip_swg

########## Leaning ##########
float32 fwd_lean
float32 bwd_lean
float32 fwd_trng_lean

########## Step ##########
float32 gait_vel_limit
float32 sagittal_acc
float32 lateral_acc
float32 rotational_acc
float32 const_step_freq
float32 sagittal_prop_step_freq
float32 lateral_prop_step_freq

########## walking parameter ########
float32 x_move_amplitude
float32 y_move_amplitude
float32 angle_move_amplitude
bool halt_position
bool leg_lifting
bool leg_swing
bool lateral_swing
bool leaning

")

(setf (get capture_step_module_msgs::GetWalkingParamResponse :md5sum-) "33e093e1a36ede369994f83338945659")
(setf (get capture_step_module_msgs::GetWalkingParamResponse :datatype-) "capture_step_module_msgs/GetWalkingParamResponse")
(setf (get capture_step_module_msgs::GetWalkingParamResponse :definition-)
      "bool            get_param
---
WalkingParam    parameters

================================================================================
MSG: capture_step_module_msgs/WalkingParam
####### Halt Position #######
float32 halt_pos_leg_ext
float32 halt_pos_leg_roll_ext
float32 halt_pos_leg_pitch_ext
float32 halt_pos_foot_roll_ext
float32 halt_pos_foot_pitch_ext

####### Leg Lifting #####
float32 const_ground_push
float32 propt_ground_push
float32 const_step_height
float32 propt_step_height

########## Leg Swing ########
float32 swing_start
float32 swing_stop
float32 sagittal_swg_fwd
float32 sagittal_swg_bwd
float32 lateral_swg
float32 lateral_swg_offset
float32 trng_lateral_swg_offset
float32 rotational_swg
float32 rotational_swg_offset

########## Lateral Hip Swing ##########
float32 lateral_hip_swg

########## Leaning ##########
float32 fwd_lean
float32 bwd_lean
float32 fwd_trng_lean

########## Step ##########
float32 gait_vel_limit
float32 sagittal_acc
float32 lateral_acc
float32 rotational_acc
float32 const_step_freq
float32 sagittal_prop_step_freq
float32 lateral_prop_step_freq

########## walking parameter ########
float32 x_move_amplitude
float32 y_move_amplitude
float32 angle_move_amplitude
bool halt_position
bool leg_lifting
bool leg_swing
bool lateral_swing
bool leaning

")



(provide :capture_step_module_msgs/GetWalkingParam "33e093e1a36ede369994f83338945659")


