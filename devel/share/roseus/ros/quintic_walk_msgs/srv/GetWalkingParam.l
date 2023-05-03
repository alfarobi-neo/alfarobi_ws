;; Auto-generated. Do not edit!


(when (boundp 'quintic_walk_msgs::GetWalkingParam)
  (if (not (find-package "QUINTIC_WALK_MSGS"))
    (make-package "QUINTIC_WALK_MSGS"))
  (shadow 'GetWalkingParam (find-package "QUINTIC_WALK_MSGS")))
(unless (find-package "QUINTIC_WALK_MSGS::GETWALKINGPARAM")
  (make-package "QUINTIC_WALK_MSGS::GETWALKINGPARAM"))
(unless (find-package "QUINTIC_WALK_MSGS::GETWALKINGPARAMREQUEST")
  (make-package "QUINTIC_WALK_MSGS::GETWALKINGPARAMREQUEST"))
(unless (find-package "QUINTIC_WALK_MSGS::GETWALKINGPARAMRESPONSE")
  (make-package "QUINTIC_WALK_MSGS::GETWALKINGPARAMRESPONSE"))

(in-package "ROS")





(defclass quintic_walk_msgs::GetWalkingParamRequest
  :super ros::object
  :slots (_get_param ))

(defmethod quintic_walk_msgs::GetWalkingParamRequest
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

(defclass quintic_walk_msgs::GetWalkingParamResponse
  :super ros::object
  :slots (_parameters ))

(defmethod quintic_walk_msgs::GetWalkingParamResponse
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

(defclass quintic_walk_msgs::GetWalkingParam
  :super ros::object
  :slots ())

(setf (get quintic_walk_msgs::GetWalkingParam :md5sum-) "cc37d4e8b602e9bf4bc31537e92d2dca")
(setf (get quintic_walk_msgs::GetWalkingParam :datatype-) "quintic_walk_msgs/GetWalkingParam")
(setf (get quintic_walk_msgs::GetWalkingParam :request) quintic_walk_msgs::GetWalkingParamRequest)
(setf (get quintic_walk_msgs::GetWalkingParam :response) quintic_walk_msgs::GetWalkingParamResponse)

(defmethod quintic_walk_msgs::GetWalkingParamRequest
  (:response () (instance quintic_walk_msgs::GetWalkingParamResponse :init)))

(setf (get quintic_walk_msgs::GetWalkingParamRequest :md5sum-) "cc37d4e8b602e9bf4bc31537e92d2dca")
(setf (get quintic_walk_msgs::GetWalkingParamRequest :datatype-) "quintic_walk_msgs/GetWalkingParamRequest")
(setf (get quintic_walk_msgs::GetWalkingParamRequest :definition-)
      "bool            get_param
---
WalkingParam    parameters

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


")

(setf (get quintic_walk_msgs::GetWalkingParamResponse :md5sum-) "cc37d4e8b602e9bf4bc31537e92d2dca")
(setf (get quintic_walk_msgs::GetWalkingParamResponse :datatype-) "quintic_walk_msgs/GetWalkingParamResponse")
(setf (get quintic_walk_msgs::GetWalkingParamResponse :definition-)
      "bool            get_param
---
WalkingParam    parameters

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


")



(provide :quintic_walk_msgs/GetWalkingParam "cc37d4e8b602e9bf4bc31537e92d2dca")


