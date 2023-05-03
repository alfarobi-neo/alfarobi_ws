;; Auto-generated. Do not edit!


(when (boundp 'quintic_walk_msgs::WalkingParam)
  (if (not (find-package "QUINTIC_WALK_MSGS"))
    (make-package "QUINTIC_WALK_MSGS"))
  (shadow 'WalkingParam (find-package "QUINTIC_WALK_MSGS")))
(unless (find-package "QUINTIC_WALK_MSGS::WALKINGPARAM")
  (make-package "QUINTIC_WALK_MSGS::WALKINGPARAM"))

(in-package "ROS")
;;//! \htmlinclude WalkingParam.msg.html


(defclass quintic_walk_msgs::WalkingParam
  :super ros::object
  :slots (_freq _doubleSupportRatio _footDistance _footRise _footPutDownZOffset _footPutDownPhase _footApexPhase _footOvershootRatio _footOvershootPhase _trunkHeight _trunkPitch _trunkPhase _trunkXOffset _trunkYOffset _trunkSwing _trunkPause _trunkXOffsetPCoefForward _trunkXOffsetPCoefTurn _trunkPitchPCoefForward _trunkPitchPCoefTurn _trunkYOnlyInDoubleSupport _XMove _YMove _ZMove _mode _tuning _D_ANKLE_P_qw _D_KNEE_qw _D_HIP_P_qw _KP_P_qw _KD_P_qw _KI_P_qw _ShoulderGain_qw _setpointPitch _pitch_error_tol _KP_X_qw _KD_X_qw _KI_X_qw _Angle_0 _Angle_1 _Angle_2 _Angle_3 _Angle_4 _KD_0 _KD_1 _KD_2 _KD_3 _KD_4 _Gyro_0 _Gyro_1 _Gyro_2 _Gyro_3 _Gyro_4 _KP_0 _KP_1 _KP_2 _KP_3 _KP_4 ))

(defmethod quintic_walk_msgs::WalkingParam
  (:init
   (&key
    ((:freq __freq) 0.0)
    ((:doubleSupportRatio __doubleSupportRatio) 0.0)
    ((:footDistance __footDistance) 0.0)
    ((:footRise __footRise) 0.0)
    ((:footPutDownZOffset __footPutDownZOffset) 0.0)
    ((:footPutDownPhase __footPutDownPhase) 0.0)
    ((:footApexPhase __footApexPhase) 0.0)
    ((:footOvershootRatio __footOvershootRatio) 0.0)
    ((:footOvershootPhase __footOvershootPhase) 0.0)
    ((:trunkHeight __trunkHeight) 0.0)
    ((:trunkPitch __trunkPitch) 0.0)
    ((:trunkPhase __trunkPhase) 0.0)
    ((:trunkXOffset __trunkXOffset) 0.0)
    ((:trunkYOffset __trunkYOffset) 0.0)
    ((:trunkSwing __trunkSwing) 0.0)
    ((:trunkPause __trunkPause) 0.0)
    ((:trunkXOffsetPCoefForward __trunkXOffsetPCoefForward) 0.0)
    ((:trunkXOffsetPCoefTurn __trunkXOffsetPCoefTurn) 0.0)
    ((:trunkPitchPCoefForward __trunkPitchPCoefForward) 0.0)
    ((:trunkPitchPCoefTurn __trunkPitchPCoefTurn) 0.0)
    ((:trunkYOnlyInDoubleSupport __trunkYOnlyInDoubleSupport) nil)
    ((:XMove __XMove) 0.0)
    ((:YMove __YMove) 0.0)
    ((:ZMove __ZMove) 0.0)
    ((:mode __mode) "")
    ((:tuning __tuning) nil)
    ((:D_ANKLE_P_qw __D_ANKLE_P_qw) 0.0)
    ((:D_KNEE_qw __D_KNEE_qw) 0.0)
    ((:D_HIP_P_qw __D_HIP_P_qw) 0.0)
    ((:KP_P_qw __KP_P_qw) 0.0)
    ((:KD_P_qw __KD_P_qw) 0.0)
    ((:KI_P_qw __KI_P_qw) 0.0)
    ((:ShoulderGain_qw __ShoulderGain_qw) 0.0)
    ((:setpointPitch __setpointPitch) 0.0)
    ((:pitch_error_tol __pitch_error_tol) 0.0)
    ((:KP_X_qw __KP_X_qw) 0.0)
    ((:KD_X_qw __KD_X_qw) 0.0)
    ((:KI_X_qw __KI_X_qw) 0.0)
    ((:Angle_0 __Angle_0) 0.0)
    ((:Angle_1 __Angle_1) 0.0)
    ((:Angle_2 __Angle_2) 0.0)
    ((:Angle_3 __Angle_3) 0.0)
    ((:Angle_4 __Angle_4) 0.0)
    ((:KD_0 __KD_0) 0.0)
    ((:KD_1 __KD_1) 0.0)
    ((:KD_2 __KD_2) 0.0)
    ((:KD_3 __KD_3) 0.0)
    ((:KD_4 __KD_4) 0.0)
    ((:Gyro_0 __Gyro_0) 0.0)
    ((:Gyro_1 __Gyro_1) 0.0)
    ((:Gyro_2 __Gyro_2) 0.0)
    ((:Gyro_3 __Gyro_3) 0.0)
    ((:Gyro_4 __Gyro_4) 0.0)
    ((:KP_0 __KP_0) 0.0)
    ((:KP_1 __KP_1) 0.0)
    ((:KP_2 __KP_2) 0.0)
    ((:KP_3 __KP_3) 0.0)
    ((:KP_4 __KP_4) 0.0)
    )
   (send-super :init)
   (setq _freq (float __freq))
   (setq _doubleSupportRatio (float __doubleSupportRatio))
   (setq _footDistance (float __footDistance))
   (setq _footRise (float __footRise))
   (setq _footPutDownZOffset (float __footPutDownZOffset))
   (setq _footPutDownPhase (float __footPutDownPhase))
   (setq _footApexPhase (float __footApexPhase))
   (setq _footOvershootRatio (float __footOvershootRatio))
   (setq _footOvershootPhase (float __footOvershootPhase))
   (setq _trunkHeight (float __trunkHeight))
   (setq _trunkPitch (float __trunkPitch))
   (setq _trunkPhase (float __trunkPhase))
   (setq _trunkXOffset (float __trunkXOffset))
   (setq _trunkYOffset (float __trunkYOffset))
   (setq _trunkSwing (float __trunkSwing))
   (setq _trunkPause (float __trunkPause))
   (setq _trunkXOffsetPCoefForward (float __trunkXOffsetPCoefForward))
   (setq _trunkXOffsetPCoefTurn (float __trunkXOffsetPCoefTurn))
   (setq _trunkPitchPCoefForward (float __trunkPitchPCoefForward))
   (setq _trunkPitchPCoefTurn (float __trunkPitchPCoefTurn))
   (setq _trunkYOnlyInDoubleSupport __trunkYOnlyInDoubleSupport)
   (setq _XMove (float __XMove))
   (setq _YMove (float __YMove))
   (setq _ZMove (float __ZMove))
   (setq _mode (string __mode))
   (setq _tuning __tuning)
   (setq _D_ANKLE_P_qw (float __D_ANKLE_P_qw))
   (setq _D_KNEE_qw (float __D_KNEE_qw))
   (setq _D_HIP_P_qw (float __D_HIP_P_qw))
   (setq _KP_P_qw (float __KP_P_qw))
   (setq _KD_P_qw (float __KD_P_qw))
   (setq _KI_P_qw (float __KI_P_qw))
   (setq _ShoulderGain_qw (float __ShoulderGain_qw))
   (setq _setpointPitch (float __setpointPitch))
   (setq _pitch_error_tol (float __pitch_error_tol))
   (setq _KP_X_qw (float __KP_X_qw))
   (setq _KD_X_qw (float __KD_X_qw))
   (setq _KI_X_qw (float __KI_X_qw))
   (setq _Angle_0 (float __Angle_0))
   (setq _Angle_1 (float __Angle_1))
   (setq _Angle_2 (float __Angle_2))
   (setq _Angle_3 (float __Angle_3))
   (setq _Angle_4 (float __Angle_4))
   (setq _KD_0 (float __KD_0))
   (setq _KD_1 (float __KD_1))
   (setq _KD_2 (float __KD_2))
   (setq _KD_3 (float __KD_3))
   (setq _KD_4 (float __KD_4))
   (setq _Gyro_0 (float __Gyro_0))
   (setq _Gyro_1 (float __Gyro_1))
   (setq _Gyro_2 (float __Gyro_2))
   (setq _Gyro_3 (float __Gyro_3))
   (setq _Gyro_4 (float __Gyro_4))
   (setq _KP_0 (float __KP_0))
   (setq _KP_1 (float __KP_1))
   (setq _KP_2 (float __KP_2))
   (setq _KP_3 (float __KP_3))
   (setq _KP_4 (float __KP_4))
   self)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:doubleSupportRatio
   (&optional __doubleSupportRatio)
   (if __doubleSupportRatio (setq _doubleSupportRatio __doubleSupportRatio)) _doubleSupportRatio)
  (:footDistance
   (&optional __footDistance)
   (if __footDistance (setq _footDistance __footDistance)) _footDistance)
  (:footRise
   (&optional __footRise)
   (if __footRise (setq _footRise __footRise)) _footRise)
  (:footPutDownZOffset
   (&optional __footPutDownZOffset)
   (if __footPutDownZOffset (setq _footPutDownZOffset __footPutDownZOffset)) _footPutDownZOffset)
  (:footPutDownPhase
   (&optional __footPutDownPhase)
   (if __footPutDownPhase (setq _footPutDownPhase __footPutDownPhase)) _footPutDownPhase)
  (:footApexPhase
   (&optional __footApexPhase)
   (if __footApexPhase (setq _footApexPhase __footApexPhase)) _footApexPhase)
  (:footOvershootRatio
   (&optional __footOvershootRatio)
   (if __footOvershootRatio (setq _footOvershootRatio __footOvershootRatio)) _footOvershootRatio)
  (:footOvershootPhase
   (&optional __footOvershootPhase)
   (if __footOvershootPhase (setq _footOvershootPhase __footOvershootPhase)) _footOvershootPhase)
  (:trunkHeight
   (&optional __trunkHeight)
   (if __trunkHeight (setq _trunkHeight __trunkHeight)) _trunkHeight)
  (:trunkPitch
   (&optional __trunkPitch)
   (if __trunkPitch (setq _trunkPitch __trunkPitch)) _trunkPitch)
  (:trunkPhase
   (&optional __trunkPhase)
   (if __trunkPhase (setq _trunkPhase __trunkPhase)) _trunkPhase)
  (:trunkXOffset
   (&optional __trunkXOffset)
   (if __trunkXOffset (setq _trunkXOffset __trunkXOffset)) _trunkXOffset)
  (:trunkYOffset
   (&optional __trunkYOffset)
   (if __trunkYOffset (setq _trunkYOffset __trunkYOffset)) _trunkYOffset)
  (:trunkSwing
   (&optional __trunkSwing)
   (if __trunkSwing (setq _trunkSwing __trunkSwing)) _trunkSwing)
  (:trunkPause
   (&optional __trunkPause)
   (if __trunkPause (setq _trunkPause __trunkPause)) _trunkPause)
  (:trunkXOffsetPCoefForward
   (&optional __trunkXOffsetPCoefForward)
   (if __trunkXOffsetPCoefForward (setq _trunkXOffsetPCoefForward __trunkXOffsetPCoefForward)) _trunkXOffsetPCoefForward)
  (:trunkXOffsetPCoefTurn
   (&optional __trunkXOffsetPCoefTurn)
   (if __trunkXOffsetPCoefTurn (setq _trunkXOffsetPCoefTurn __trunkXOffsetPCoefTurn)) _trunkXOffsetPCoefTurn)
  (:trunkPitchPCoefForward
   (&optional __trunkPitchPCoefForward)
   (if __trunkPitchPCoefForward (setq _trunkPitchPCoefForward __trunkPitchPCoefForward)) _trunkPitchPCoefForward)
  (:trunkPitchPCoefTurn
   (&optional __trunkPitchPCoefTurn)
   (if __trunkPitchPCoefTurn (setq _trunkPitchPCoefTurn __trunkPitchPCoefTurn)) _trunkPitchPCoefTurn)
  (:trunkYOnlyInDoubleSupport
   (&optional (__trunkYOnlyInDoubleSupport :null))
   (if (not (eq __trunkYOnlyInDoubleSupport :null)) (setq _trunkYOnlyInDoubleSupport __trunkYOnlyInDoubleSupport)) _trunkYOnlyInDoubleSupport)
  (:XMove
   (&optional __XMove)
   (if __XMove (setq _XMove __XMove)) _XMove)
  (:YMove
   (&optional __YMove)
   (if __YMove (setq _YMove __YMove)) _YMove)
  (:ZMove
   (&optional __ZMove)
   (if __ZMove (setq _ZMove __ZMove)) _ZMove)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:tuning
   (&optional (__tuning :null))
   (if (not (eq __tuning :null)) (setq _tuning __tuning)) _tuning)
  (:D_ANKLE_P_qw
   (&optional __D_ANKLE_P_qw)
   (if __D_ANKLE_P_qw (setq _D_ANKLE_P_qw __D_ANKLE_P_qw)) _D_ANKLE_P_qw)
  (:D_KNEE_qw
   (&optional __D_KNEE_qw)
   (if __D_KNEE_qw (setq _D_KNEE_qw __D_KNEE_qw)) _D_KNEE_qw)
  (:D_HIP_P_qw
   (&optional __D_HIP_P_qw)
   (if __D_HIP_P_qw (setq _D_HIP_P_qw __D_HIP_P_qw)) _D_HIP_P_qw)
  (:KP_P_qw
   (&optional __KP_P_qw)
   (if __KP_P_qw (setq _KP_P_qw __KP_P_qw)) _KP_P_qw)
  (:KD_P_qw
   (&optional __KD_P_qw)
   (if __KD_P_qw (setq _KD_P_qw __KD_P_qw)) _KD_P_qw)
  (:KI_P_qw
   (&optional __KI_P_qw)
   (if __KI_P_qw (setq _KI_P_qw __KI_P_qw)) _KI_P_qw)
  (:ShoulderGain_qw
   (&optional __ShoulderGain_qw)
   (if __ShoulderGain_qw (setq _ShoulderGain_qw __ShoulderGain_qw)) _ShoulderGain_qw)
  (:setpointPitch
   (&optional __setpointPitch)
   (if __setpointPitch (setq _setpointPitch __setpointPitch)) _setpointPitch)
  (:pitch_error_tol
   (&optional __pitch_error_tol)
   (if __pitch_error_tol (setq _pitch_error_tol __pitch_error_tol)) _pitch_error_tol)
  (:KP_X_qw
   (&optional __KP_X_qw)
   (if __KP_X_qw (setq _KP_X_qw __KP_X_qw)) _KP_X_qw)
  (:KD_X_qw
   (&optional __KD_X_qw)
   (if __KD_X_qw (setq _KD_X_qw __KD_X_qw)) _KD_X_qw)
  (:KI_X_qw
   (&optional __KI_X_qw)
   (if __KI_X_qw (setq _KI_X_qw __KI_X_qw)) _KI_X_qw)
  (:Angle_0
   (&optional __Angle_0)
   (if __Angle_0 (setq _Angle_0 __Angle_0)) _Angle_0)
  (:Angle_1
   (&optional __Angle_1)
   (if __Angle_1 (setq _Angle_1 __Angle_1)) _Angle_1)
  (:Angle_2
   (&optional __Angle_2)
   (if __Angle_2 (setq _Angle_2 __Angle_2)) _Angle_2)
  (:Angle_3
   (&optional __Angle_3)
   (if __Angle_3 (setq _Angle_3 __Angle_3)) _Angle_3)
  (:Angle_4
   (&optional __Angle_4)
   (if __Angle_4 (setq _Angle_4 __Angle_4)) _Angle_4)
  (:KD_0
   (&optional __KD_0)
   (if __KD_0 (setq _KD_0 __KD_0)) _KD_0)
  (:KD_1
   (&optional __KD_1)
   (if __KD_1 (setq _KD_1 __KD_1)) _KD_1)
  (:KD_2
   (&optional __KD_2)
   (if __KD_2 (setq _KD_2 __KD_2)) _KD_2)
  (:KD_3
   (&optional __KD_3)
   (if __KD_3 (setq _KD_3 __KD_3)) _KD_3)
  (:KD_4
   (&optional __KD_4)
   (if __KD_4 (setq _KD_4 __KD_4)) _KD_4)
  (:Gyro_0
   (&optional __Gyro_0)
   (if __Gyro_0 (setq _Gyro_0 __Gyro_0)) _Gyro_0)
  (:Gyro_1
   (&optional __Gyro_1)
   (if __Gyro_1 (setq _Gyro_1 __Gyro_1)) _Gyro_1)
  (:Gyro_2
   (&optional __Gyro_2)
   (if __Gyro_2 (setq _Gyro_2 __Gyro_2)) _Gyro_2)
  (:Gyro_3
   (&optional __Gyro_3)
   (if __Gyro_3 (setq _Gyro_3 __Gyro_3)) _Gyro_3)
  (:Gyro_4
   (&optional __Gyro_4)
   (if __Gyro_4 (setq _Gyro_4 __Gyro_4)) _Gyro_4)
  (:KP_0
   (&optional __KP_0)
   (if __KP_0 (setq _KP_0 __KP_0)) _KP_0)
  (:KP_1
   (&optional __KP_1)
   (if __KP_1 (setq _KP_1 __KP_1)) _KP_1)
  (:KP_2
   (&optional __KP_2)
   (if __KP_2 (setq _KP_2 __KP_2)) _KP_2)
  (:KP_3
   (&optional __KP_3)
   (if __KP_3 (setq _KP_3 __KP_3)) _KP_3)
  (:KP_4
   (&optional __KP_4)
   (if __KP_4 (setq _KP_4 __KP_4)) _KP_4)
  (:serialization-length
   ()
   (+
    ;; float32 _freq
    4
    ;; float32 _doubleSupportRatio
    4
    ;; float32 _footDistance
    4
    ;; float32 _footRise
    4
    ;; float32 _footPutDownZOffset
    4
    ;; float32 _footPutDownPhase
    4
    ;; float32 _footApexPhase
    4
    ;; float32 _footOvershootRatio
    4
    ;; float32 _footOvershootPhase
    4
    ;; float32 _trunkHeight
    4
    ;; float32 _trunkPitch
    4
    ;; float32 _trunkPhase
    4
    ;; float32 _trunkXOffset
    4
    ;; float32 _trunkYOffset
    4
    ;; float32 _trunkSwing
    4
    ;; float32 _trunkPause
    4
    ;; float32 _trunkXOffsetPCoefForward
    4
    ;; float32 _trunkXOffsetPCoefTurn
    4
    ;; float32 _trunkPitchPCoefForward
    4
    ;; float32 _trunkPitchPCoefTurn
    4
    ;; bool _trunkYOnlyInDoubleSupport
    1
    ;; float32 _XMove
    4
    ;; float32 _YMove
    4
    ;; float32 _ZMove
    4
    ;; string _mode
    4 (length _mode)
    ;; bool _tuning
    1
    ;; float32 _D_ANKLE_P_qw
    4
    ;; float32 _D_KNEE_qw
    4
    ;; float32 _D_HIP_P_qw
    4
    ;; float32 _KP_P_qw
    4
    ;; float32 _KD_P_qw
    4
    ;; float32 _KI_P_qw
    4
    ;; float32 _ShoulderGain_qw
    4
    ;; float32 _setpointPitch
    4
    ;; float32 _pitch_error_tol
    4
    ;; float32 _KP_X_qw
    4
    ;; float32 _KD_X_qw
    4
    ;; float32 _KI_X_qw
    4
    ;; float32 _Angle_0
    4
    ;; float32 _Angle_1
    4
    ;; float32 _Angle_2
    4
    ;; float32 _Angle_3
    4
    ;; float32 _Angle_4
    4
    ;; float32 _KD_0
    4
    ;; float32 _KD_1
    4
    ;; float32 _KD_2
    4
    ;; float32 _KD_3
    4
    ;; float32 _KD_4
    4
    ;; float32 _Gyro_0
    4
    ;; float32 _Gyro_1
    4
    ;; float32 _Gyro_2
    4
    ;; float32 _Gyro_3
    4
    ;; float32 _Gyro_4
    4
    ;; float32 _KP_0
    4
    ;; float32 _KP_1
    4
    ;; float32 _KP_2
    4
    ;; float32 _KP_3
    4
    ;; float32 _KP_4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _freq
       (sys::poke _freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _doubleSupportRatio
       (sys::poke _doubleSupportRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _footDistance
       (sys::poke _footDistance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _footRise
       (sys::poke _footRise (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _footPutDownZOffset
       (sys::poke _footPutDownZOffset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _footPutDownPhase
       (sys::poke _footPutDownPhase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _footApexPhase
       (sys::poke _footApexPhase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _footOvershootRatio
       (sys::poke _footOvershootRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _footOvershootPhase
       (sys::poke _footOvershootPhase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkHeight
       (sys::poke _trunkHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkPitch
       (sys::poke _trunkPitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkPhase
       (sys::poke _trunkPhase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkXOffset
       (sys::poke _trunkXOffset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkYOffset
       (sys::poke _trunkYOffset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkSwing
       (sys::poke _trunkSwing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkPause
       (sys::poke _trunkPause (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkXOffsetPCoefForward
       (sys::poke _trunkXOffsetPCoefForward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkXOffsetPCoefTurn
       (sys::poke _trunkXOffsetPCoefTurn (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkPitchPCoefForward
       (sys::poke _trunkPitchPCoefForward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trunkPitchPCoefTurn
       (sys::poke _trunkPitchPCoefTurn (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _trunkYOnlyInDoubleSupport
       (if _trunkYOnlyInDoubleSupport (write-byte -1 s) (write-byte 0 s))
     ;; float32 _XMove
       (sys::poke _XMove (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _YMove
       (sys::poke _YMove (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ZMove
       (sys::poke _ZMove (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; bool _tuning
       (if _tuning (write-byte -1 s) (write-byte 0 s))
     ;; float32 _D_ANKLE_P_qw
       (sys::poke _D_ANKLE_P_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _D_KNEE_qw
       (sys::poke _D_KNEE_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _D_HIP_P_qw
       (sys::poke _D_HIP_P_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KP_P_qw
       (sys::poke _KP_P_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KD_P_qw
       (sys::poke _KD_P_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KI_P_qw
       (sys::poke _KI_P_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ShoulderGain_qw
       (sys::poke _ShoulderGain_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _setpointPitch
       (sys::poke _setpointPitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_error_tol
       (sys::poke _pitch_error_tol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KP_X_qw
       (sys::poke _KP_X_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KD_X_qw
       (sys::poke _KD_X_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KI_X_qw
       (sys::poke _KI_X_qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Angle_0
       (sys::poke _Angle_0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Angle_1
       (sys::poke _Angle_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Angle_2
       (sys::poke _Angle_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Angle_3
       (sys::poke _Angle_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Angle_4
       (sys::poke _Angle_4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KD_0
       (sys::poke _KD_0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KD_1
       (sys::poke _KD_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KD_2
       (sys::poke _KD_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KD_3
       (sys::poke _KD_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KD_4
       (sys::poke _KD_4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gyro_0
       (sys::poke _Gyro_0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gyro_1
       (sys::poke _Gyro_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gyro_2
       (sys::poke _Gyro_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gyro_3
       (sys::poke _Gyro_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gyro_4
       (sys::poke _Gyro_4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KP_0
       (sys::poke _KP_0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KP_1
       (sys::poke _KP_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KP_2
       (sys::poke _KP_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KP_3
       (sys::poke _KP_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _KP_4
       (sys::poke _KP_4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _freq
     (setq _freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _doubleSupportRatio
     (setq _doubleSupportRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _footDistance
     (setq _footDistance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _footRise
     (setq _footRise (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _footPutDownZOffset
     (setq _footPutDownZOffset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _footPutDownPhase
     (setq _footPutDownPhase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _footApexPhase
     (setq _footApexPhase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _footOvershootRatio
     (setq _footOvershootRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _footOvershootPhase
     (setq _footOvershootPhase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkHeight
     (setq _trunkHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkPitch
     (setq _trunkPitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkPhase
     (setq _trunkPhase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkXOffset
     (setq _trunkXOffset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkYOffset
     (setq _trunkYOffset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkSwing
     (setq _trunkSwing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkPause
     (setq _trunkPause (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkXOffsetPCoefForward
     (setq _trunkXOffsetPCoefForward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkXOffsetPCoefTurn
     (setq _trunkXOffsetPCoefTurn (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkPitchPCoefForward
     (setq _trunkPitchPCoefForward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trunkPitchPCoefTurn
     (setq _trunkPitchPCoefTurn (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _trunkYOnlyInDoubleSupport
     (setq _trunkYOnlyInDoubleSupport (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _XMove
     (setq _XMove (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _YMove
     (setq _YMove (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ZMove
     (setq _ZMove (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _tuning
     (setq _tuning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _D_ANKLE_P_qw
     (setq _D_ANKLE_P_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _D_KNEE_qw
     (setq _D_KNEE_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _D_HIP_P_qw
     (setq _D_HIP_P_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KP_P_qw
     (setq _KP_P_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KD_P_qw
     (setq _KD_P_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KI_P_qw
     (setq _KI_P_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ShoulderGain_qw
     (setq _ShoulderGain_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _setpointPitch
     (setq _setpointPitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_error_tol
     (setq _pitch_error_tol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KP_X_qw
     (setq _KP_X_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KD_X_qw
     (setq _KD_X_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KI_X_qw
     (setq _KI_X_qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Angle_0
     (setq _Angle_0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Angle_1
     (setq _Angle_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Angle_2
     (setq _Angle_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Angle_3
     (setq _Angle_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Angle_4
     (setq _Angle_4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KD_0
     (setq _KD_0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KD_1
     (setq _KD_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KD_2
     (setq _KD_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KD_3
     (setq _KD_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KD_4
     (setq _KD_4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gyro_0
     (setq _Gyro_0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gyro_1
     (setq _Gyro_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gyro_2
     (setq _Gyro_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gyro_3
     (setq _Gyro_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gyro_4
     (setq _Gyro_4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KP_0
     (setq _KP_0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KP_1
     (setq _KP_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KP_2
     (setq _KP_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KP_3
     (setq _KP_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _KP_4
     (setq _KP_4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get quintic_walk_msgs::WalkingParam :md5sum-) "9f884ae298d19a76dad330f2c4daca90")
(setf (get quintic_walk_msgs::WalkingParam :datatype-) "quintic_walk_msgs/WalkingParam")
(setf (get quintic_walk_msgs::WalkingParam :definition-)
      "float32 freq
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



(provide :quintic_walk_msgs/WalkingParam "9f884ae298d19a76dad330f2c4daca90")


