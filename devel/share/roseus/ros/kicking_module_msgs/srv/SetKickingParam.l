;; Auto-generated. Do not edit!


(when (boundp 'kicking_module_msgs::SetKickingParam)
  (if (not (find-package "KICKING_MODULE_MSGS"))
    (make-package "KICKING_MODULE_MSGS"))
  (shadow 'SetKickingParam (find-package "KICKING_MODULE_MSGS")))
(unless (find-package "KICKING_MODULE_MSGS::SETKICKINGPARAM")
  (make-package "KICKING_MODULE_MSGS::SETKICKINGPARAM"))
(unless (find-package "KICKING_MODULE_MSGS::SETKICKINGPARAMREQUEST")
  (make-package "KICKING_MODULE_MSGS::SETKICKINGPARAMREQUEST"))
(unless (find-package "KICKING_MODULE_MSGS::SETKICKINGPARAMRESPONSE")
  (make-package "KICKING_MODULE_MSGS::SETKICKINGPARAMRESPONSE"))

(in-package "ROS")





(defclass kicking_module_msgs::SetKickingParamRequest
  :super ros::object
  :slots (_parameters ))

(defmethod kicking_module_msgs::SetKickingParamRequest
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

(defclass kicking_module_msgs::SetKickingParamResponse
  :super ros::object
  :slots (_result ))

(defmethod kicking_module_msgs::SetKickingParamResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
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

(defclass kicking_module_msgs::SetKickingParam
  :super ros::object
  :slots ())

(setf (get kicking_module_msgs::SetKickingParam :md5sum-) "8cba598d747b079101cd9f0a83da30c3")
(setf (get kicking_module_msgs::SetKickingParam :datatype-) "kicking_module_msgs/SetKickingParam")
(setf (get kicking_module_msgs::SetKickingParam :request) kicking_module_msgs::SetKickingParamRequest)
(setf (get kicking_module_msgs::SetKickingParam :response) kicking_module_msgs::SetKickingParamResponse)

(defmethod kicking_module_msgs::SetKickingParamRequest
  (:response () (instance kicking_module_msgs::SetKickingParamResponse :init)))

(setf (get kicking_module_msgs::SetKickingParamRequest :md5sum-) "8cba598d747b079101cd9f0a83da30c3")
(setf (get kicking_module_msgs::SetKickingParamRequest :datatype-) "kicking_module_msgs/SetKickingParamRequest")
(setf (get kicking_module_msgs::SetKickingParamRequest :definition-)
      "KickingParam    parameters

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
---
bool            result

")

(setf (get kicking_module_msgs::SetKickingParamResponse :md5sum-) "8cba598d747b079101cd9f0a83da30c3")
(setf (get kicking_module_msgs::SetKickingParamResponse :datatype-) "kicking_module_msgs/SetKickingParamResponse")
(setf (get kicking_module_msgs::SetKickingParamResponse :definition-)
      "KickingParam    parameters

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
---
bool            result

")



(provide :kicking_module_msgs/SetKickingParam "8cba598d747b079101cd9f0a83da30c3")


