;; Auto-generated. Do not edit!


(when (boundp 'kicking_module_msgs::GetKickingParam)
  (if (not (find-package "KICKING_MODULE_MSGS"))
    (make-package "KICKING_MODULE_MSGS"))
  (shadow 'GetKickingParam (find-package "KICKING_MODULE_MSGS")))
(unless (find-package "KICKING_MODULE_MSGS::GETKICKINGPARAM")
  (make-package "KICKING_MODULE_MSGS::GETKICKINGPARAM"))
(unless (find-package "KICKING_MODULE_MSGS::GETKICKINGPARAMREQUEST")
  (make-package "KICKING_MODULE_MSGS::GETKICKINGPARAMREQUEST"))
(unless (find-package "KICKING_MODULE_MSGS::GETKICKINGPARAMRESPONSE")
  (make-package "KICKING_MODULE_MSGS::GETKICKINGPARAMRESPONSE"))

(in-package "ROS")





(defclass kicking_module_msgs::GetKickingParamRequest
  :super ros::object
  :slots (_get_param ))

(defmethod kicking_module_msgs::GetKickingParamRequest
  (:init
   (&key
    ((:get_param __get_param) nil)
    )
   (send-super :init)
   (setq _get_param __get_param)
   self)
  (:get_param
   (&optional (__get_param :null))
   (if (not (eq __get_param :null)) (setq _get_param __get_param)) _get_param)
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

(defclass kicking_module_msgs::GetKickingParamResponse
  :super ros::object
  :slots (_parameters ))

(defmethod kicking_module_msgs::GetKickingParamResponse
  (:init
   (&key
    ((:parameters __parameters) (instance kicking_module_msgs::KickingParam :init))
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
    ;; kicking_module_msgs/KickingParam _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kicking_module_msgs/KickingParam _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kicking_module_msgs/KickingParam _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(defclass kicking_module_msgs::GetKickingParam
  :super ros::object
  :slots ())

(setf (get kicking_module_msgs::GetKickingParam :md5sum-) "e283d303756e828e5a3f8f0cc145b425")
(setf (get kicking_module_msgs::GetKickingParam :datatype-) "kicking_module_msgs/GetKickingParam")
(setf (get kicking_module_msgs::GetKickingParam :request) kicking_module_msgs::GetKickingParamRequest)
(setf (get kicking_module_msgs::GetKickingParam :response) kicking_module_msgs::GetKickingParamResponse)

(defmethod kicking_module_msgs::GetKickingParamRequest
  (:response () (instance kicking_module_msgs::GetKickingParamResponse :init)))

(setf (get kicking_module_msgs::GetKickingParamRequest :md5sum-) "e283d303756e828e5a3f8f0cc145b425")
(setf (get kicking_module_msgs::GetKickingParamRequest :datatype-) "kicking_module_msgs/GetKickingParamRequest")
(setf (get kicking_module_msgs::GetKickingParamRequest :definition-)
      "bool            get_param
---
KickingParam    parameters


================================================================================
MSG: kicking_module_msgs/KickingParam
float32 Torso_X
float32 Torso_Y
float32 Torso_Z
float32 L_Shift_X
float32 L_Shift_Y
float32 L_Shift_Z
float32 R_Shift_X
float32 R_Shift_Y
float32 R_Shift_Z
float32 L_Lift_X
float32 L_Lift_Y
float32 L_Lift_Z
float32 R_Lift_X
float32 R_Lift_Y
float32 R_Lift_Z
float32 L_Swing_X
float32 L_Swing_Y
float32 L_Swing_Z
float32 R_Swing_X
float32 R_Swing_Y
float32 R_Swing_Z
float32 L_Retract_X
float32 L_Retract_Y
float32 L_Retract_Z
float32 R_Retract_X
float32 R_Retract_Y
float32 R_Retract_Z
float32 Torso_Pitch
float32 Shift_Roll
float32 Lift_Roll
float32 Lift_Pitch
float32 Swing_Roll
float32 Swing_Pitch
float32 Retract_Roll
float32 Retract_Pitch
float32 SHIFT_TIME
float32 LIFT_TIME
float32 SWING_TIME
float32 RETRACT_TIME
float32 LANDING_TIME
")

(setf (get kicking_module_msgs::GetKickingParamResponse :md5sum-) "e283d303756e828e5a3f8f0cc145b425")
(setf (get kicking_module_msgs::GetKickingParamResponse :datatype-) "kicking_module_msgs/GetKickingParamResponse")
(setf (get kicking_module_msgs::GetKickingParamResponse :definition-)
      "bool            get_param
---
KickingParam    parameters


================================================================================
MSG: kicking_module_msgs/KickingParam
float32 Torso_X
float32 Torso_Y
float32 Torso_Z
float32 L_Shift_X
float32 L_Shift_Y
float32 L_Shift_Z
float32 R_Shift_X
float32 R_Shift_Y
float32 R_Shift_Z
float32 L_Lift_X
float32 L_Lift_Y
float32 L_Lift_Z
float32 R_Lift_X
float32 R_Lift_Y
float32 R_Lift_Z
float32 L_Swing_X
float32 L_Swing_Y
float32 L_Swing_Z
float32 R_Swing_X
float32 R_Swing_Y
float32 R_Swing_Z
float32 L_Retract_X
float32 L_Retract_Y
float32 L_Retract_Z
float32 R_Retract_X
float32 R_Retract_Y
float32 R_Retract_Z
float32 Torso_Pitch
float32 Shift_Roll
float32 Lift_Roll
float32 Lift_Pitch
float32 Swing_Roll
float32 Swing_Pitch
float32 Retract_Roll
float32 Retract_Pitch
float32 SHIFT_TIME
float32 LIFT_TIME
float32 SWING_TIME
float32 RETRACT_TIME
float32 LANDING_TIME
")



(provide :kicking_module_msgs/GetKickingParam "e283d303756e828e5a3f8f0cc145b425")


