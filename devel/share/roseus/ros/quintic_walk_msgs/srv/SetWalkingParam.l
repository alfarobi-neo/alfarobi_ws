;; Auto-generated. Do not edit!


(when (boundp 'quintic_walk_msgs::SetWalkingParam)
  (if (not (find-package "QUINTIC_WALK_MSGS"))
    (make-package "QUINTIC_WALK_MSGS"))
  (shadow 'SetWalkingParam (find-package "QUINTIC_WALK_MSGS")))
(unless (find-package "QUINTIC_WALK_MSGS::SETWALKINGPARAM")
  (make-package "QUINTIC_WALK_MSGS::SETWALKINGPARAM"))
(unless (find-package "QUINTIC_WALK_MSGS::SETWALKINGPARAMREQUEST")
  (make-package "QUINTIC_WALK_MSGS::SETWALKINGPARAMREQUEST"))
(unless (find-package "QUINTIC_WALK_MSGS::SETWALKINGPARAMRESPONSE")
  (make-package "QUINTIC_WALK_MSGS::SETWALKINGPARAMRESPONSE"))

(in-package "ROS")





(defclass quintic_walk_msgs::SetWalkingParamRequest
  :super ros::object
  :slots (_parameters ))

(defmethod quintic_walk_msgs::SetWalkingParamRequest
  (:init
   (&key
    ((:parameters __parameters) (instance quintic_walk_msgs::WalkingParam :init))
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
    ;; quintic_walk_msgs/WalkingParam _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; quintic_walk_msgs/WalkingParam _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; quintic_walk_msgs/WalkingParam _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(defclass quintic_walk_msgs::SetWalkingParamResponse
  :super ros::object
  :slots (_result ))

(defmethod quintic_walk_msgs::SetWalkingParamResponse
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

(defclass quintic_walk_msgs::SetWalkingParam
  :super ros::object
  :slots ())

(setf (get quintic_walk_msgs::SetWalkingParam :md5sum-) "a9df0fee7c93a59d59f41082ca94adfb")
(setf (get quintic_walk_msgs::SetWalkingParam :datatype-) "quintic_walk_msgs/SetWalkingParam")
(setf (get quintic_walk_msgs::SetWalkingParam :request) quintic_walk_msgs::SetWalkingParamRequest)
(setf (get quintic_walk_msgs::SetWalkingParam :response) quintic_walk_msgs::SetWalkingParamResponse)

(defmethod quintic_walk_msgs::SetWalkingParamRequest
  (:response () (instance quintic_walk_msgs::SetWalkingParamResponse :init)))

(setf (get quintic_walk_msgs::SetWalkingParamRequest :md5sum-) "a9df0fee7c93a59d59f41082ca94adfb")
(setf (get quintic_walk_msgs::SetWalkingParamRequest :datatype-) "quintic_walk_msgs/SetWalkingParamRequest")
(setf (get quintic_walk_msgs::SetWalkingParamRequest :definition-)
      "WalkingParam    parameters

================================================================================
MSG: quintic_walk_msgs/WalkingParam
float32 freq
float32 doubleSupportRatio
float32 footDistance
float32 footRise
float32 footPutDownZOffset
float32 footPutDownPhase
float32 footApexPhase
float32 footOvershootRatio
float32 footOvershootPhase
float32 trunkHeight
float32 trunkPitch
float32 trunkPhase
float32 trunkXOffset
float32 trunkYOffset
float32 trunkSwing
float32 trunkPause
float32 trunkXOffsetPCoefForward
float32 trunkXOffsetPCoefTurn
float32 trunkPitchPCoefForward
float32 trunkPitchPCoefTurn
bool trunkYOnlyInDoubleSupport

float32 XMove
float32 YMove
float32 ZMove
string mode
bool tuning

float32 D_ANKLE_P_qw
float32 D_KNEE_qw
float32 D_HIP_P_qw


float32 KP_P_qw
float32 KD_P_qw
float32 KI_P_qw



float32 ShoulderGain_qw
float32 setpointPitch
float32 pitch_error_tol

float32 KP_X_qw
float32 KD_X_qw
float32 KI_X_qw


float32 Angle_0
float32 Angle_1
float32 Angle_2
float32 Angle_3
float32 Angle_4

float32 KD_0
float32 KD_1
float32 KD_2
float32 KD_3
float32 KD_4

float32 Gyro_0
float32 Gyro_1
float32 Gyro_2
float32 Gyro_3
float32 Gyro_4

float32 KP_0
float32 KP_1
float32 KP_2
float32 KP_3
float32 KP_4


---
bool            result
")

(setf (get quintic_walk_msgs::SetWalkingParamResponse :md5sum-) "a9df0fee7c93a59d59f41082ca94adfb")
(setf (get quintic_walk_msgs::SetWalkingParamResponse :datatype-) "quintic_walk_msgs/SetWalkingParamResponse")
(setf (get quintic_walk_msgs::SetWalkingParamResponse :definition-)
      "WalkingParam    parameters

================================================================================
MSG: quintic_walk_msgs/WalkingParam
float32 freq
float32 doubleSupportRatio
float32 footDistance
float32 footRise
float32 footPutDownZOffset
float32 footPutDownPhase
float32 footApexPhase
float32 footOvershootRatio
float32 footOvershootPhase
float32 trunkHeight
float32 trunkPitch
float32 trunkPhase
float32 trunkXOffset
float32 trunkYOffset
float32 trunkSwing
float32 trunkPause
float32 trunkXOffsetPCoefForward
float32 trunkXOffsetPCoefTurn
float32 trunkPitchPCoefForward
float32 trunkPitchPCoefTurn
bool trunkYOnlyInDoubleSupport

float32 XMove
float32 YMove
float32 ZMove
string mode
bool tuning

float32 D_ANKLE_P_qw
float32 D_KNEE_qw
float32 D_HIP_P_qw


float32 KP_P_qw
float32 KD_P_qw
float32 KI_P_qw



float32 ShoulderGain_qw
float32 setpointPitch
float32 pitch_error_tol

float32 KP_X_qw
float32 KD_X_qw
float32 KI_X_qw


float32 Angle_0
float32 Angle_1
float32 Angle_2
float32 Angle_3
float32 Angle_4

float32 KD_0
float32 KD_1
float32 KD_2
float32 KD_3
float32 KD_4

float32 Gyro_0
float32 Gyro_1
float32 Gyro_2
float32 Gyro_3
float32 Gyro_4

float32 KP_0
float32 KP_1
float32 KP_2
float32 KP_3
float32 KP_4


---
bool            result
")



(provide :quintic_walk_msgs/SetWalkingParam "a9df0fee7c93a59d59f41082ca94adfb")


