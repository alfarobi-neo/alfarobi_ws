;; Auto-generated. Do not edit!


(when (boundp 'kicking_module_msgs::KickingParam)
  (if (not (find-package "KICKING_MODULE_MSGS"))
    (make-package "KICKING_MODULE_MSGS"))
  (shadow 'KickingParam (find-package "KICKING_MODULE_MSGS")))
(unless (find-package "KICKING_MODULE_MSGS::KICKINGPARAM")
  (make-package "KICKING_MODULE_MSGS::KICKINGPARAM"))

(in-package "ROS")
;;//! \htmlinclude KickingParam.msg.html


(defclass kicking_module_msgs::KickingParam
  :super ros::object
  :slots (_Torso_X _Torso_Y _Torso_Z _L_Shift_X _L_Shift_Y _L_Shift_Z _R_Shift_X _R_Shift_Y _R_Shift_Z _L_Lift_X _L_Lift_Y _L_Lift_Z _R_Lift_X _R_Lift_Y _R_Lift_Z _L_Swing_X _L_Swing_Y _L_Swing_Z _R_Swing_X _R_Swing_Y _R_Swing_Z _L_Retract_X _L_Retract_Y _L_Retract_Z _R_Retract_X _R_Retract_Y _R_Retract_Z _Torso_Pitch _Shift_Roll _Lift_Roll _Lift_Pitch _Swing_Roll _Swing_Pitch _Retract_Roll _Retract_Pitch _SHIFT_TIME _LIFT_TIME _SWING_TIME _RETRACT_TIME _LANDING_TIME _FINISHED_TIME ))

(defmethod kicking_module_msgs::KickingParam
  (:init
   (&key
    ((:Torso_X __Torso_X) 0.0)
    ((:Torso_Y __Torso_Y) 0.0)
    ((:Torso_Z __Torso_Z) 0.0)
    ((:L_Shift_X __L_Shift_X) 0.0)
    ((:L_Shift_Y __L_Shift_Y) 0.0)
    ((:L_Shift_Z __L_Shift_Z) 0.0)
    ((:R_Shift_X __R_Shift_X) 0.0)
    ((:R_Shift_Y __R_Shift_Y) 0.0)
    ((:R_Shift_Z __R_Shift_Z) 0.0)
    ((:L_Lift_X __L_Lift_X) 0.0)
    ((:L_Lift_Y __L_Lift_Y) 0.0)
    ((:L_Lift_Z __L_Lift_Z) 0.0)
    ((:R_Lift_X __R_Lift_X) 0.0)
    ((:R_Lift_Y __R_Lift_Y) 0.0)
    ((:R_Lift_Z __R_Lift_Z) 0.0)
    ((:L_Swing_X __L_Swing_X) 0.0)
    ((:L_Swing_Y __L_Swing_Y) 0.0)
    ((:L_Swing_Z __L_Swing_Z) 0.0)
    ((:R_Swing_X __R_Swing_X) 0.0)
    ((:R_Swing_Y __R_Swing_Y) 0.0)
    ((:R_Swing_Z __R_Swing_Z) 0.0)
    ((:L_Retract_X __L_Retract_X) 0.0)
    ((:L_Retract_Y __L_Retract_Y) 0.0)
    ((:L_Retract_Z __L_Retract_Z) 0.0)
    ((:R_Retract_X __R_Retract_X) 0.0)
    ((:R_Retract_Y __R_Retract_Y) 0.0)
    ((:R_Retract_Z __R_Retract_Z) 0.0)
    ((:Torso_Pitch __Torso_Pitch) 0.0)
    ((:Shift_Roll __Shift_Roll) 0.0)
    ((:Lift_Roll __Lift_Roll) 0.0)
    ((:Lift_Pitch __Lift_Pitch) 0.0)
    ((:Swing_Roll __Swing_Roll) 0.0)
    ((:Swing_Pitch __Swing_Pitch) 0.0)
    ((:Retract_Roll __Retract_Roll) 0.0)
    ((:Retract_Pitch __Retract_Pitch) 0.0)
    ((:SHIFT_TIME __SHIFT_TIME) 0.0)
    ((:LIFT_TIME __LIFT_TIME) 0.0)
    ((:SWING_TIME __SWING_TIME) 0.0)
    ((:RETRACT_TIME __RETRACT_TIME) 0.0)
    ((:LANDING_TIME __LANDING_TIME) 0.0)
    ((:FINISHED_TIME __FINISHED_TIME) 0.0)
    )
   (send-super :init)
   (setq _Torso_X (float __Torso_X))
   (setq _Torso_Y (float __Torso_Y))
   (setq _Torso_Z (float __Torso_Z))
   (setq _L_Shift_X (float __L_Shift_X))
   (setq _L_Shift_Y (float __L_Shift_Y))
   (setq _L_Shift_Z (float __L_Shift_Z))
   (setq _R_Shift_X (float __R_Shift_X))
   (setq _R_Shift_Y (float __R_Shift_Y))
   (setq _R_Shift_Z (float __R_Shift_Z))
   (setq _L_Lift_X (float __L_Lift_X))
   (setq _L_Lift_Y (float __L_Lift_Y))
   (setq _L_Lift_Z (float __L_Lift_Z))
   (setq _R_Lift_X (float __R_Lift_X))
   (setq _R_Lift_Y (float __R_Lift_Y))
   (setq _R_Lift_Z (float __R_Lift_Z))
   (setq _L_Swing_X (float __L_Swing_X))
   (setq _L_Swing_Y (float __L_Swing_Y))
   (setq _L_Swing_Z (float __L_Swing_Z))
   (setq _R_Swing_X (float __R_Swing_X))
   (setq _R_Swing_Y (float __R_Swing_Y))
   (setq _R_Swing_Z (float __R_Swing_Z))
   (setq _L_Retract_X (float __L_Retract_X))
   (setq _L_Retract_Y (float __L_Retract_Y))
   (setq _L_Retract_Z (float __L_Retract_Z))
   (setq _R_Retract_X (float __R_Retract_X))
   (setq _R_Retract_Y (float __R_Retract_Y))
   (setq _R_Retract_Z (float __R_Retract_Z))
   (setq _Torso_Pitch (float __Torso_Pitch))
   (setq _Shift_Roll (float __Shift_Roll))
   (setq _Lift_Roll (float __Lift_Roll))
   (setq _Lift_Pitch (float __Lift_Pitch))
   (setq _Swing_Roll (float __Swing_Roll))
   (setq _Swing_Pitch (float __Swing_Pitch))
   (setq _Retract_Roll (float __Retract_Roll))
   (setq _Retract_Pitch (float __Retract_Pitch))
   (setq _SHIFT_TIME (float __SHIFT_TIME))
   (setq _LIFT_TIME (float __LIFT_TIME))
   (setq _SWING_TIME (float __SWING_TIME))
   (setq _RETRACT_TIME (float __RETRACT_TIME))
   (setq _LANDING_TIME (float __LANDING_TIME))
   (setq _FINISHED_TIME (float __FINISHED_TIME))
   self)
  (:Torso_X
   (&optional __Torso_X)
   (if __Torso_X (setq _Torso_X __Torso_X)) _Torso_X)
  (:Torso_Y
   (&optional __Torso_Y)
   (if __Torso_Y (setq _Torso_Y __Torso_Y)) _Torso_Y)
  (:Torso_Z
   (&optional __Torso_Z)
   (if __Torso_Z (setq _Torso_Z __Torso_Z)) _Torso_Z)
  (:L_Shift_X
   (&optional __L_Shift_X)
   (if __L_Shift_X (setq _L_Shift_X __L_Shift_X)) _L_Shift_X)
  (:L_Shift_Y
   (&optional __L_Shift_Y)
   (if __L_Shift_Y (setq _L_Shift_Y __L_Shift_Y)) _L_Shift_Y)
  (:L_Shift_Z
   (&optional __L_Shift_Z)
   (if __L_Shift_Z (setq _L_Shift_Z __L_Shift_Z)) _L_Shift_Z)
  (:R_Shift_X
   (&optional __R_Shift_X)
   (if __R_Shift_X (setq _R_Shift_X __R_Shift_X)) _R_Shift_X)
  (:R_Shift_Y
   (&optional __R_Shift_Y)
   (if __R_Shift_Y (setq _R_Shift_Y __R_Shift_Y)) _R_Shift_Y)
  (:R_Shift_Z
   (&optional __R_Shift_Z)
   (if __R_Shift_Z (setq _R_Shift_Z __R_Shift_Z)) _R_Shift_Z)
  (:L_Lift_X
   (&optional __L_Lift_X)
   (if __L_Lift_X (setq _L_Lift_X __L_Lift_X)) _L_Lift_X)
  (:L_Lift_Y
   (&optional __L_Lift_Y)
   (if __L_Lift_Y (setq _L_Lift_Y __L_Lift_Y)) _L_Lift_Y)
  (:L_Lift_Z
   (&optional __L_Lift_Z)
   (if __L_Lift_Z (setq _L_Lift_Z __L_Lift_Z)) _L_Lift_Z)
  (:R_Lift_X
   (&optional __R_Lift_X)
   (if __R_Lift_X (setq _R_Lift_X __R_Lift_X)) _R_Lift_X)
  (:R_Lift_Y
   (&optional __R_Lift_Y)
   (if __R_Lift_Y (setq _R_Lift_Y __R_Lift_Y)) _R_Lift_Y)
  (:R_Lift_Z
   (&optional __R_Lift_Z)
   (if __R_Lift_Z (setq _R_Lift_Z __R_Lift_Z)) _R_Lift_Z)
  (:L_Swing_X
   (&optional __L_Swing_X)
   (if __L_Swing_X (setq _L_Swing_X __L_Swing_X)) _L_Swing_X)
  (:L_Swing_Y
   (&optional __L_Swing_Y)
   (if __L_Swing_Y (setq _L_Swing_Y __L_Swing_Y)) _L_Swing_Y)
  (:L_Swing_Z
   (&optional __L_Swing_Z)
   (if __L_Swing_Z (setq _L_Swing_Z __L_Swing_Z)) _L_Swing_Z)
  (:R_Swing_X
   (&optional __R_Swing_X)
   (if __R_Swing_X (setq _R_Swing_X __R_Swing_X)) _R_Swing_X)
  (:R_Swing_Y
   (&optional __R_Swing_Y)
   (if __R_Swing_Y (setq _R_Swing_Y __R_Swing_Y)) _R_Swing_Y)
  (:R_Swing_Z
   (&optional __R_Swing_Z)
   (if __R_Swing_Z (setq _R_Swing_Z __R_Swing_Z)) _R_Swing_Z)
  (:L_Retract_X
   (&optional __L_Retract_X)
   (if __L_Retract_X (setq _L_Retract_X __L_Retract_X)) _L_Retract_X)
  (:L_Retract_Y
   (&optional __L_Retract_Y)
   (if __L_Retract_Y (setq _L_Retract_Y __L_Retract_Y)) _L_Retract_Y)
  (:L_Retract_Z
   (&optional __L_Retract_Z)
   (if __L_Retract_Z (setq _L_Retract_Z __L_Retract_Z)) _L_Retract_Z)
  (:R_Retract_X
   (&optional __R_Retract_X)
   (if __R_Retract_X (setq _R_Retract_X __R_Retract_X)) _R_Retract_X)
  (:R_Retract_Y
   (&optional __R_Retract_Y)
   (if __R_Retract_Y (setq _R_Retract_Y __R_Retract_Y)) _R_Retract_Y)
  (:R_Retract_Z
   (&optional __R_Retract_Z)
   (if __R_Retract_Z (setq _R_Retract_Z __R_Retract_Z)) _R_Retract_Z)
  (:Torso_Pitch
   (&optional __Torso_Pitch)
   (if __Torso_Pitch (setq _Torso_Pitch __Torso_Pitch)) _Torso_Pitch)
  (:Shift_Roll
   (&optional __Shift_Roll)
   (if __Shift_Roll (setq _Shift_Roll __Shift_Roll)) _Shift_Roll)
  (:Lift_Roll
   (&optional __Lift_Roll)
   (if __Lift_Roll (setq _Lift_Roll __Lift_Roll)) _Lift_Roll)
  (:Lift_Pitch
   (&optional __Lift_Pitch)
   (if __Lift_Pitch (setq _Lift_Pitch __Lift_Pitch)) _Lift_Pitch)
  (:Swing_Roll
   (&optional __Swing_Roll)
   (if __Swing_Roll (setq _Swing_Roll __Swing_Roll)) _Swing_Roll)
  (:Swing_Pitch
   (&optional __Swing_Pitch)
   (if __Swing_Pitch (setq _Swing_Pitch __Swing_Pitch)) _Swing_Pitch)
  (:Retract_Roll
   (&optional __Retract_Roll)
   (if __Retract_Roll (setq _Retract_Roll __Retract_Roll)) _Retract_Roll)
  (:Retract_Pitch
   (&optional __Retract_Pitch)
   (if __Retract_Pitch (setq _Retract_Pitch __Retract_Pitch)) _Retract_Pitch)
  (:SHIFT_TIME
   (&optional __SHIFT_TIME)
   (if __SHIFT_TIME (setq _SHIFT_TIME __SHIFT_TIME)) _SHIFT_TIME)
  (:LIFT_TIME
   (&optional __LIFT_TIME)
   (if __LIFT_TIME (setq _LIFT_TIME __LIFT_TIME)) _LIFT_TIME)
  (:SWING_TIME
   (&optional __SWING_TIME)
   (if __SWING_TIME (setq _SWING_TIME __SWING_TIME)) _SWING_TIME)
  (:RETRACT_TIME
   (&optional __RETRACT_TIME)
   (if __RETRACT_TIME (setq _RETRACT_TIME __RETRACT_TIME)) _RETRACT_TIME)
  (:LANDING_TIME
   (&optional __LANDING_TIME)
   (if __LANDING_TIME (setq _LANDING_TIME __LANDING_TIME)) _LANDING_TIME)
  (:FINISHED_TIME
   (&optional __FINISHED_TIME)
   (if __FINISHED_TIME (setq _FINISHED_TIME __FINISHED_TIME)) _FINISHED_TIME)
  (:serialization-length
   ()
   (+
    ;; float32 _Torso_X
    4
    ;; float32 _Torso_Y
    4
    ;; float32 _Torso_Z
    4
    ;; float32 _L_Shift_X
    4
    ;; float32 _L_Shift_Y
    4
    ;; float32 _L_Shift_Z
    4
    ;; float32 _R_Shift_X
    4
    ;; float32 _R_Shift_Y
    4
    ;; float32 _R_Shift_Z
    4
    ;; float32 _L_Lift_X
    4
    ;; float32 _L_Lift_Y
    4
    ;; float32 _L_Lift_Z
    4
    ;; float32 _R_Lift_X
    4
    ;; float32 _R_Lift_Y
    4
    ;; float32 _R_Lift_Z
    4
    ;; float32 _L_Swing_X
    4
    ;; float32 _L_Swing_Y
    4
    ;; float32 _L_Swing_Z
    4
    ;; float32 _R_Swing_X
    4
    ;; float32 _R_Swing_Y
    4
    ;; float32 _R_Swing_Z
    4
    ;; float32 _L_Retract_X
    4
    ;; float32 _L_Retract_Y
    4
    ;; float32 _L_Retract_Z
    4
    ;; float32 _R_Retract_X
    4
    ;; float32 _R_Retract_Y
    4
    ;; float32 _R_Retract_Z
    4
    ;; float32 _Torso_Pitch
    4
    ;; float32 _Shift_Roll
    4
    ;; float32 _Lift_Roll
    4
    ;; float32 _Lift_Pitch
    4
    ;; float32 _Swing_Roll
    4
    ;; float32 _Swing_Pitch
    4
    ;; float32 _Retract_Roll
    4
    ;; float32 _Retract_Pitch
    4
    ;; float32 _SHIFT_TIME
    4
    ;; float32 _LIFT_TIME
    4
    ;; float32 _SWING_TIME
    4
    ;; float32 _RETRACT_TIME
    4
    ;; float32 _LANDING_TIME
    4
    ;; float32 _FINISHED_TIME
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Torso_X
       (sys::poke _Torso_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Torso_Y
       (sys::poke _Torso_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Torso_Z
       (sys::poke _Torso_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Shift_X
       (sys::poke _L_Shift_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Shift_Y
       (sys::poke _L_Shift_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Shift_Z
       (sys::poke _L_Shift_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Shift_X
       (sys::poke _R_Shift_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Shift_Y
       (sys::poke _R_Shift_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Shift_Z
       (sys::poke _R_Shift_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Lift_X
       (sys::poke _L_Lift_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Lift_Y
       (sys::poke _L_Lift_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Lift_Z
       (sys::poke _L_Lift_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Lift_X
       (sys::poke _R_Lift_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Lift_Y
       (sys::poke _R_Lift_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Lift_Z
       (sys::poke _R_Lift_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Swing_X
       (sys::poke _L_Swing_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Swing_Y
       (sys::poke _L_Swing_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Swing_Z
       (sys::poke _L_Swing_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Swing_X
       (sys::poke _R_Swing_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Swing_Y
       (sys::poke _R_Swing_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Swing_Z
       (sys::poke _R_Swing_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Retract_X
       (sys::poke _L_Retract_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Retract_Y
       (sys::poke _L_Retract_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Retract_Z
       (sys::poke _L_Retract_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Retract_X
       (sys::poke _R_Retract_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Retract_Y
       (sys::poke _R_Retract_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Retract_Z
       (sys::poke _R_Retract_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Torso_Pitch
       (sys::poke _Torso_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Shift_Roll
       (sys::poke _Shift_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Lift_Roll
       (sys::poke _Lift_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Lift_Pitch
       (sys::poke _Lift_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Swing_Roll
       (sys::poke _Swing_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Swing_Pitch
       (sys::poke _Swing_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Retract_Roll
       (sys::poke _Retract_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Retract_Pitch
       (sys::poke _Retract_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _SHIFT_TIME
       (sys::poke _SHIFT_TIME (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LIFT_TIME
       (sys::poke _LIFT_TIME (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _SWING_TIME
       (sys::poke _SWING_TIME (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RETRACT_TIME
       (sys::poke _RETRACT_TIME (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LANDING_TIME
       (sys::poke _LANDING_TIME (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _FINISHED_TIME
       (sys::poke _FINISHED_TIME (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Torso_X
     (setq _Torso_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Torso_Y
     (setq _Torso_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Torso_Z
     (setq _Torso_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Shift_X
     (setq _L_Shift_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Shift_Y
     (setq _L_Shift_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Shift_Z
     (setq _L_Shift_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Shift_X
     (setq _R_Shift_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Shift_Y
     (setq _R_Shift_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Shift_Z
     (setq _R_Shift_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Lift_X
     (setq _L_Lift_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Lift_Y
     (setq _L_Lift_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Lift_Z
     (setq _L_Lift_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Lift_X
     (setq _R_Lift_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Lift_Y
     (setq _R_Lift_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Lift_Z
     (setq _R_Lift_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Swing_X
     (setq _L_Swing_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Swing_Y
     (setq _L_Swing_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Swing_Z
     (setq _L_Swing_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Swing_X
     (setq _R_Swing_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Swing_Y
     (setq _R_Swing_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Swing_Z
     (setq _R_Swing_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Retract_X
     (setq _L_Retract_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Retract_Y
     (setq _L_Retract_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Retract_Z
     (setq _L_Retract_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Retract_X
     (setq _R_Retract_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Retract_Y
     (setq _R_Retract_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Retract_Z
     (setq _R_Retract_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Torso_Pitch
     (setq _Torso_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Shift_Roll
     (setq _Shift_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Lift_Roll
     (setq _Lift_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Lift_Pitch
     (setq _Lift_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Swing_Roll
     (setq _Swing_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Swing_Pitch
     (setq _Swing_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Retract_Roll
     (setq _Retract_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Retract_Pitch
     (setq _Retract_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _SHIFT_TIME
     (setq _SHIFT_TIME (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LIFT_TIME
     (setq _LIFT_TIME (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _SWING_TIME
     (setq _SWING_TIME (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RETRACT_TIME
     (setq _RETRACT_TIME (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LANDING_TIME
     (setq _LANDING_TIME (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _FINISHED_TIME
     (setq _FINISHED_TIME (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kicking_module_msgs::KickingParam :md5sum-) "1544ae05e02ea9fbdc689d7fea677df9")
(setf (get kicking_module_msgs::KickingParam :datatype-) "kicking_module_msgs/KickingParam")
(setf (get kicking_module_msgs::KickingParam :definition-)
      "float32 Torso_X
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
float32 FINISHED_TIME
")



(provide :kicking_module_msgs/KickingParam "1544ae05e02ea9fbdc689d7fea677df9")


