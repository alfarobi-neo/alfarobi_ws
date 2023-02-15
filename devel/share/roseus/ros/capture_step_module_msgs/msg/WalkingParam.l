;; Auto-generated. Do not edit!


(when (boundp 'capture_step_module_msgs::WalkingParam)
  (if (not (find-package "CAPTURE_STEP_MODULE_MSGS"))
    (make-package "CAPTURE_STEP_MODULE_MSGS"))
  (shadow 'WalkingParam (find-package "CAPTURE_STEP_MODULE_MSGS")))
(unless (find-package "CAPTURE_STEP_MODULE_MSGS::WALKINGPARAM")
  (make-package "CAPTURE_STEP_MODULE_MSGS::WALKINGPARAM"))

(in-package "ROS")
;;//! \htmlinclude WalkingParam.msg.html


(defclass capture_step_module_msgs::WalkingParam
  :super ros::object
  :slots (_halt_pos_leg_ext _halt_pos_leg_roll_ext _halt_pos_leg_pitch_ext _halt_pos_foot_roll_ext _halt_pos_foot_pitch_ext _const_ground_push _propt_ground_push _const_step_height _propt_step_height _swing_start _swing_stop _sagittal_swg_fwd _sagittal_swg_bwd _lateral_swg _lateral_swg_offset _trng_lateral_swg_offset _rotational_swg _rotational_swg_offset _lateral_hip_swg _fwd_lean _bwd_lean _fwd_trng_lean _gait_vel_limit _sagittal_acc _lateral_acc _rotational_acc _const_step_freq _sagittal_prop_step_freq _lateral_prop_step_freq _x_move_amplitude _y_move_amplitude _angle_move_amplitude _halt_position _leg_lifting _leg_swing _lateral_swing _leaning ))

(defmethod capture_step_module_msgs::WalkingParam
  (:init
   (&key
    ((:halt_pos_leg_ext __halt_pos_leg_ext) 0.0)
    ((:halt_pos_leg_roll_ext __halt_pos_leg_roll_ext) 0.0)
    ((:halt_pos_leg_pitch_ext __halt_pos_leg_pitch_ext) 0.0)
    ((:halt_pos_foot_roll_ext __halt_pos_foot_roll_ext) 0.0)
    ((:halt_pos_foot_pitch_ext __halt_pos_foot_pitch_ext) 0.0)
    ((:const_ground_push __const_ground_push) 0.0)
    ((:propt_ground_push __propt_ground_push) 0.0)
    ((:const_step_height __const_step_height) 0.0)
    ((:propt_step_height __propt_step_height) 0.0)
    ((:swing_start __swing_start) 0.0)
    ((:swing_stop __swing_stop) 0.0)
    ((:sagittal_swg_fwd __sagittal_swg_fwd) 0.0)
    ((:sagittal_swg_bwd __sagittal_swg_bwd) 0.0)
    ((:lateral_swg __lateral_swg) 0.0)
    ((:lateral_swg_offset __lateral_swg_offset) 0.0)
    ((:trng_lateral_swg_offset __trng_lateral_swg_offset) 0.0)
    ((:rotational_swg __rotational_swg) 0.0)
    ((:rotational_swg_offset __rotational_swg_offset) 0.0)
    ((:lateral_hip_swg __lateral_hip_swg) 0.0)
    ((:fwd_lean __fwd_lean) 0.0)
    ((:bwd_lean __bwd_lean) 0.0)
    ((:fwd_trng_lean __fwd_trng_lean) 0.0)
    ((:gait_vel_limit __gait_vel_limit) 0.0)
    ((:sagittal_acc __sagittal_acc) 0.0)
    ((:lateral_acc __lateral_acc) 0.0)
    ((:rotational_acc __rotational_acc) 0.0)
    ((:const_step_freq __const_step_freq) 0.0)
    ((:sagittal_prop_step_freq __sagittal_prop_step_freq) 0.0)
    ((:lateral_prop_step_freq __lateral_prop_step_freq) 0.0)
    ((:x_move_amplitude __x_move_amplitude) 0.0)
    ((:y_move_amplitude __y_move_amplitude) 0.0)
    ((:angle_move_amplitude __angle_move_amplitude) 0.0)
    ((:halt_position __halt_position) nil)
    ((:leg_lifting __leg_lifting) nil)
    ((:leg_swing __leg_swing) nil)
    ((:lateral_swing __lateral_swing) nil)
    ((:leaning __leaning) nil)
    )
   (send-super :init)
   (setq _halt_pos_leg_ext (float __halt_pos_leg_ext))
   (setq _halt_pos_leg_roll_ext (float __halt_pos_leg_roll_ext))
   (setq _halt_pos_leg_pitch_ext (float __halt_pos_leg_pitch_ext))
   (setq _halt_pos_foot_roll_ext (float __halt_pos_foot_roll_ext))
   (setq _halt_pos_foot_pitch_ext (float __halt_pos_foot_pitch_ext))
   (setq _const_ground_push (float __const_ground_push))
   (setq _propt_ground_push (float __propt_ground_push))
   (setq _const_step_height (float __const_step_height))
   (setq _propt_step_height (float __propt_step_height))
   (setq _swing_start (float __swing_start))
   (setq _swing_stop (float __swing_stop))
   (setq _sagittal_swg_fwd (float __sagittal_swg_fwd))
   (setq _sagittal_swg_bwd (float __sagittal_swg_bwd))
   (setq _lateral_swg (float __lateral_swg))
   (setq _lateral_swg_offset (float __lateral_swg_offset))
   (setq _trng_lateral_swg_offset (float __trng_lateral_swg_offset))
   (setq _rotational_swg (float __rotational_swg))
   (setq _rotational_swg_offset (float __rotational_swg_offset))
   (setq _lateral_hip_swg (float __lateral_hip_swg))
   (setq _fwd_lean (float __fwd_lean))
   (setq _bwd_lean (float __bwd_lean))
   (setq _fwd_trng_lean (float __fwd_trng_lean))
   (setq _gait_vel_limit (float __gait_vel_limit))
   (setq _sagittal_acc (float __sagittal_acc))
   (setq _lateral_acc (float __lateral_acc))
   (setq _rotational_acc (float __rotational_acc))
   (setq _const_step_freq (float __const_step_freq))
   (setq _sagittal_prop_step_freq (float __sagittal_prop_step_freq))
   (setq _lateral_prop_step_freq (float __lateral_prop_step_freq))
   (setq _x_move_amplitude (float __x_move_amplitude))
   (setq _y_move_amplitude (float __y_move_amplitude))
   (setq _angle_move_amplitude (float __angle_move_amplitude))
   (setq _halt_position __halt_position)
   (setq _leg_lifting __leg_lifting)
   (setq _leg_swing __leg_swing)
   (setq _lateral_swing __lateral_swing)
   (setq _leaning __leaning)
   self)
  (:halt_pos_leg_ext
   (&optional __halt_pos_leg_ext)
   (if __halt_pos_leg_ext (setq _halt_pos_leg_ext __halt_pos_leg_ext)) _halt_pos_leg_ext)
  (:halt_pos_leg_roll_ext
   (&optional __halt_pos_leg_roll_ext)
   (if __halt_pos_leg_roll_ext (setq _halt_pos_leg_roll_ext __halt_pos_leg_roll_ext)) _halt_pos_leg_roll_ext)
  (:halt_pos_leg_pitch_ext
   (&optional __halt_pos_leg_pitch_ext)
   (if __halt_pos_leg_pitch_ext (setq _halt_pos_leg_pitch_ext __halt_pos_leg_pitch_ext)) _halt_pos_leg_pitch_ext)
  (:halt_pos_foot_roll_ext
   (&optional __halt_pos_foot_roll_ext)
   (if __halt_pos_foot_roll_ext (setq _halt_pos_foot_roll_ext __halt_pos_foot_roll_ext)) _halt_pos_foot_roll_ext)
  (:halt_pos_foot_pitch_ext
   (&optional __halt_pos_foot_pitch_ext)
   (if __halt_pos_foot_pitch_ext (setq _halt_pos_foot_pitch_ext __halt_pos_foot_pitch_ext)) _halt_pos_foot_pitch_ext)
  (:const_ground_push
   (&optional __const_ground_push)
   (if __const_ground_push (setq _const_ground_push __const_ground_push)) _const_ground_push)
  (:propt_ground_push
   (&optional __propt_ground_push)
   (if __propt_ground_push (setq _propt_ground_push __propt_ground_push)) _propt_ground_push)
  (:const_step_height
   (&optional __const_step_height)
   (if __const_step_height (setq _const_step_height __const_step_height)) _const_step_height)
  (:propt_step_height
   (&optional __propt_step_height)
   (if __propt_step_height (setq _propt_step_height __propt_step_height)) _propt_step_height)
  (:swing_start
   (&optional __swing_start)
   (if __swing_start (setq _swing_start __swing_start)) _swing_start)
  (:swing_stop
   (&optional __swing_stop)
   (if __swing_stop (setq _swing_stop __swing_stop)) _swing_stop)
  (:sagittal_swg_fwd
   (&optional __sagittal_swg_fwd)
   (if __sagittal_swg_fwd (setq _sagittal_swg_fwd __sagittal_swg_fwd)) _sagittal_swg_fwd)
  (:sagittal_swg_bwd
   (&optional __sagittal_swg_bwd)
   (if __sagittal_swg_bwd (setq _sagittal_swg_bwd __sagittal_swg_bwd)) _sagittal_swg_bwd)
  (:lateral_swg
   (&optional __lateral_swg)
   (if __lateral_swg (setq _lateral_swg __lateral_swg)) _lateral_swg)
  (:lateral_swg_offset
   (&optional __lateral_swg_offset)
   (if __lateral_swg_offset (setq _lateral_swg_offset __lateral_swg_offset)) _lateral_swg_offset)
  (:trng_lateral_swg_offset
   (&optional __trng_lateral_swg_offset)
   (if __trng_lateral_swg_offset (setq _trng_lateral_swg_offset __trng_lateral_swg_offset)) _trng_lateral_swg_offset)
  (:rotational_swg
   (&optional __rotational_swg)
   (if __rotational_swg (setq _rotational_swg __rotational_swg)) _rotational_swg)
  (:rotational_swg_offset
   (&optional __rotational_swg_offset)
   (if __rotational_swg_offset (setq _rotational_swg_offset __rotational_swg_offset)) _rotational_swg_offset)
  (:lateral_hip_swg
   (&optional __lateral_hip_swg)
   (if __lateral_hip_swg (setq _lateral_hip_swg __lateral_hip_swg)) _lateral_hip_swg)
  (:fwd_lean
   (&optional __fwd_lean)
   (if __fwd_lean (setq _fwd_lean __fwd_lean)) _fwd_lean)
  (:bwd_lean
   (&optional __bwd_lean)
   (if __bwd_lean (setq _bwd_lean __bwd_lean)) _bwd_lean)
  (:fwd_trng_lean
   (&optional __fwd_trng_lean)
   (if __fwd_trng_lean (setq _fwd_trng_lean __fwd_trng_lean)) _fwd_trng_lean)
  (:gait_vel_limit
   (&optional __gait_vel_limit)
   (if __gait_vel_limit (setq _gait_vel_limit __gait_vel_limit)) _gait_vel_limit)
  (:sagittal_acc
   (&optional __sagittal_acc)
   (if __sagittal_acc (setq _sagittal_acc __sagittal_acc)) _sagittal_acc)
  (:lateral_acc
   (&optional __lateral_acc)
   (if __lateral_acc (setq _lateral_acc __lateral_acc)) _lateral_acc)
  (:rotational_acc
   (&optional __rotational_acc)
   (if __rotational_acc (setq _rotational_acc __rotational_acc)) _rotational_acc)
  (:const_step_freq
   (&optional __const_step_freq)
   (if __const_step_freq (setq _const_step_freq __const_step_freq)) _const_step_freq)
  (:sagittal_prop_step_freq
   (&optional __sagittal_prop_step_freq)
   (if __sagittal_prop_step_freq (setq _sagittal_prop_step_freq __sagittal_prop_step_freq)) _sagittal_prop_step_freq)
  (:lateral_prop_step_freq
   (&optional __lateral_prop_step_freq)
   (if __lateral_prop_step_freq (setq _lateral_prop_step_freq __lateral_prop_step_freq)) _lateral_prop_step_freq)
  (:x_move_amplitude
   (&optional __x_move_amplitude)
   (if __x_move_amplitude (setq _x_move_amplitude __x_move_amplitude)) _x_move_amplitude)
  (:y_move_amplitude
   (&optional __y_move_amplitude)
   (if __y_move_amplitude (setq _y_move_amplitude __y_move_amplitude)) _y_move_amplitude)
  (:angle_move_amplitude
   (&optional __angle_move_amplitude)
   (if __angle_move_amplitude (setq _angle_move_amplitude __angle_move_amplitude)) _angle_move_amplitude)
  (:halt_position
   (&optional __halt_position)
   (if __halt_position (setq _halt_position __halt_position)) _halt_position)
  (:leg_lifting
   (&optional __leg_lifting)
   (if __leg_lifting (setq _leg_lifting __leg_lifting)) _leg_lifting)
  (:leg_swing
   (&optional __leg_swing)
   (if __leg_swing (setq _leg_swing __leg_swing)) _leg_swing)
  (:lateral_swing
   (&optional __lateral_swing)
   (if __lateral_swing (setq _lateral_swing __lateral_swing)) _lateral_swing)
  (:leaning
   (&optional __leaning)
   (if __leaning (setq _leaning __leaning)) _leaning)
  (:serialization-length
   ()
   (+
    ;; float32 _halt_pos_leg_ext
    4
    ;; float32 _halt_pos_leg_roll_ext
    4
    ;; float32 _halt_pos_leg_pitch_ext
    4
    ;; float32 _halt_pos_foot_roll_ext
    4
    ;; float32 _halt_pos_foot_pitch_ext
    4
    ;; float32 _const_ground_push
    4
    ;; float32 _propt_ground_push
    4
    ;; float32 _const_step_height
    4
    ;; float32 _propt_step_height
    4
    ;; float32 _swing_start
    4
    ;; float32 _swing_stop
    4
    ;; float32 _sagittal_swg_fwd
    4
    ;; float32 _sagittal_swg_bwd
    4
    ;; float32 _lateral_swg
    4
    ;; float32 _lateral_swg_offset
    4
    ;; float32 _trng_lateral_swg_offset
    4
    ;; float32 _rotational_swg
    4
    ;; float32 _rotational_swg_offset
    4
    ;; float32 _lateral_hip_swg
    4
    ;; float32 _fwd_lean
    4
    ;; float32 _bwd_lean
    4
    ;; float32 _fwd_trng_lean
    4
    ;; float32 _gait_vel_limit
    4
    ;; float32 _sagittal_acc
    4
    ;; float32 _lateral_acc
    4
    ;; float32 _rotational_acc
    4
    ;; float32 _const_step_freq
    4
    ;; float32 _sagittal_prop_step_freq
    4
    ;; float32 _lateral_prop_step_freq
    4
    ;; float32 _x_move_amplitude
    4
    ;; float32 _y_move_amplitude
    4
    ;; float32 _angle_move_amplitude
    4
    ;; bool _halt_position
    1
    ;; bool _leg_lifting
    1
    ;; bool _leg_swing
    1
    ;; bool _lateral_swing
    1
    ;; bool _leaning
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _halt_pos_leg_ext
       (sys::poke _halt_pos_leg_ext (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _halt_pos_leg_roll_ext
       (sys::poke _halt_pos_leg_roll_ext (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _halt_pos_leg_pitch_ext
       (sys::poke _halt_pos_leg_pitch_ext (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _halt_pos_foot_roll_ext
       (sys::poke _halt_pos_foot_roll_ext (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _halt_pos_foot_pitch_ext
       (sys::poke _halt_pos_foot_pitch_ext (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _const_ground_push
       (sys::poke _const_ground_push (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _propt_ground_push
       (sys::poke _propt_ground_push (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _const_step_height
       (sys::poke _const_step_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _propt_step_height
       (sys::poke _propt_step_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _swing_start
       (sys::poke _swing_start (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _swing_stop
       (sys::poke _swing_stop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sagittal_swg_fwd
       (sys::poke _sagittal_swg_fwd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sagittal_swg_bwd
       (sys::poke _sagittal_swg_bwd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_swg
       (sys::poke _lateral_swg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_swg_offset
       (sys::poke _lateral_swg_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trng_lateral_swg_offset
       (sys::poke _trng_lateral_swg_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotational_swg
       (sys::poke _rotational_swg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotational_swg_offset
       (sys::poke _rotational_swg_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_hip_swg
       (sys::poke _lateral_hip_swg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fwd_lean
       (sys::poke _fwd_lean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bwd_lean
       (sys::poke _bwd_lean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fwd_trng_lean
       (sys::poke _fwd_trng_lean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gait_vel_limit
       (sys::poke _gait_vel_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sagittal_acc
       (sys::poke _sagittal_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_acc
       (sys::poke _lateral_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotational_acc
       (sys::poke _rotational_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _const_step_freq
       (sys::poke _const_step_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sagittal_prop_step_freq
       (sys::poke _sagittal_prop_step_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_prop_step_freq
       (sys::poke _lateral_prop_step_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_move_amplitude
       (sys::poke _x_move_amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_move_amplitude
       (sys::poke _y_move_amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_move_amplitude
       (sys::poke _angle_move_amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _halt_position
       (if _halt_position (write-byte -1 s) (write-byte 0 s))
     ;; bool _leg_lifting
       (if _leg_lifting (write-byte -1 s) (write-byte 0 s))
     ;; bool _leg_swing
       (if _leg_swing (write-byte -1 s) (write-byte 0 s))
     ;; bool _lateral_swing
       (if _lateral_swing (write-byte -1 s) (write-byte 0 s))
     ;; bool _leaning
       (if _leaning (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _halt_pos_leg_ext
     (setq _halt_pos_leg_ext (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _halt_pos_leg_roll_ext
     (setq _halt_pos_leg_roll_ext (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _halt_pos_leg_pitch_ext
     (setq _halt_pos_leg_pitch_ext (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _halt_pos_foot_roll_ext
     (setq _halt_pos_foot_roll_ext (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _halt_pos_foot_pitch_ext
     (setq _halt_pos_foot_pitch_ext (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _const_ground_push
     (setq _const_ground_push (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _propt_ground_push
     (setq _propt_ground_push (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _const_step_height
     (setq _const_step_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _propt_step_height
     (setq _propt_step_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _swing_start
     (setq _swing_start (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _swing_stop
     (setq _swing_stop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sagittal_swg_fwd
     (setq _sagittal_swg_fwd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sagittal_swg_bwd
     (setq _sagittal_swg_bwd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_swg
     (setq _lateral_swg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_swg_offset
     (setq _lateral_swg_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trng_lateral_swg_offset
     (setq _trng_lateral_swg_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotational_swg
     (setq _rotational_swg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotational_swg_offset
     (setq _rotational_swg_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_hip_swg
     (setq _lateral_hip_swg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fwd_lean
     (setq _fwd_lean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bwd_lean
     (setq _bwd_lean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fwd_trng_lean
     (setq _fwd_trng_lean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gait_vel_limit
     (setq _gait_vel_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sagittal_acc
     (setq _sagittal_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_acc
     (setq _lateral_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotational_acc
     (setq _rotational_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _const_step_freq
     (setq _const_step_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sagittal_prop_step_freq
     (setq _sagittal_prop_step_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_prop_step_freq
     (setq _lateral_prop_step_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_move_amplitude
     (setq _x_move_amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_move_amplitude
     (setq _y_move_amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_move_amplitude
     (setq _angle_move_amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _halt_position
     (setq _halt_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _leg_lifting
     (setq _leg_lifting (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _leg_swing
     (setq _leg_swing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lateral_swing
     (setq _lateral_swing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _leaning
     (setq _leaning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get capture_step_module_msgs::WalkingParam :md5sum-) "a551969adc87659403547b3d4bb643f5")
(setf (get capture_step_module_msgs::WalkingParam :datatype-) "capture_step_module_msgs/WalkingParam")
(setf (get capture_step_module_msgs::WalkingParam :definition-)
      "####### Halt Position #######
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



(provide :capture_step_module_msgs/WalkingParam "a551969adc87659403547b3d4bb643f5")


