;; Auto-generated. Do not edit!


(when (boundp 'feedback_msgs::FeedbackParam)
  (if (not (find-package "FEEDBACK_MSGS"))
    (make-package "FEEDBACK_MSGS"))
  (shadow 'FeedbackParam (find-package "FEEDBACK_MSGS")))
(unless (find-package "FEEDBACK_MSGS::FEEDBACKPARAM")
  (make-package "FEEDBACK_MSGS::FEEDBACKPARAM"))

(in-package "ROS")
;;//! \htmlinclude FeedbackParam.msg.html


(defclass feedback_msgs::FeedbackParam
  :super ros::object
  :slots (_Body_Height _Body_Tilt _Leg_X _Leg_Y _Leg_Z _Leg_R_Z _Leg_L_Z _R_Roll _L_Roll _Setpoint_Pitch _Setpoint_Roll _Gain_Angle_Pitch _Gain_Angle_Roll _Gain_Velocity_Pitch _Gain_Velocity_Roll _Gain_Integral_Pitch _Gain_Integral_Roll ))

(defmethod feedback_msgs::FeedbackParam
  (:init
   (&key
    ((:Body_Height __Body_Height) 0.0)
    ((:Body_Tilt __Body_Tilt) 0.0)
    ((:Leg_X __Leg_X) 0.0)
    ((:Leg_Y __Leg_Y) 0.0)
    ((:Leg_Z __Leg_Z) 0.0)
    ((:Leg_R_Z __Leg_R_Z) 0.0)
    ((:Leg_L_Z __Leg_L_Z) 0.0)
    ((:R_Roll __R_Roll) 0.0)
    ((:L_Roll __L_Roll) 0.0)
    ((:Setpoint_Pitch __Setpoint_Pitch) 0.0)
    ((:Setpoint_Roll __Setpoint_Roll) 0.0)
    ((:Gain_Angle_Pitch __Gain_Angle_Pitch) 0.0)
    ((:Gain_Angle_Roll __Gain_Angle_Roll) 0.0)
    ((:Gain_Velocity_Pitch __Gain_Velocity_Pitch) 0.0)
    ((:Gain_Velocity_Roll __Gain_Velocity_Roll) 0.0)
    ((:Gain_Integral_Pitch __Gain_Integral_Pitch) 0.0)
    ((:Gain_Integral_Roll __Gain_Integral_Roll) 0.0)
    )
   (send-super :init)
   (setq _Body_Height (float __Body_Height))
   (setq _Body_Tilt (float __Body_Tilt))
   (setq _Leg_X (float __Leg_X))
   (setq _Leg_Y (float __Leg_Y))
   (setq _Leg_Z (float __Leg_Z))
   (setq _Leg_R_Z (float __Leg_R_Z))
   (setq _Leg_L_Z (float __Leg_L_Z))
   (setq _R_Roll (float __R_Roll))
   (setq _L_Roll (float __L_Roll))
   (setq _Setpoint_Pitch (float __Setpoint_Pitch))
   (setq _Setpoint_Roll (float __Setpoint_Roll))
   (setq _Gain_Angle_Pitch (float __Gain_Angle_Pitch))
   (setq _Gain_Angle_Roll (float __Gain_Angle_Roll))
   (setq _Gain_Velocity_Pitch (float __Gain_Velocity_Pitch))
   (setq _Gain_Velocity_Roll (float __Gain_Velocity_Roll))
   (setq _Gain_Integral_Pitch (float __Gain_Integral_Pitch))
   (setq _Gain_Integral_Roll (float __Gain_Integral_Roll))
   self)
  (:Body_Height
   (&optional __Body_Height)
   (if __Body_Height (setq _Body_Height __Body_Height)) _Body_Height)
  (:Body_Tilt
   (&optional __Body_Tilt)
   (if __Body_Tilt (setq _Body_Tilt __Body_Tilt)) _Body_Tilt)
  (:Leg_X
   (&optional __Leg_X)
   (if __Leg_X (setq _Leg_X __Leg_X)) _Leg_X)
  (:Leg_Y
   (&optional __Leg_Y)
   (if __Leg_Y (setq _Leg_Y __Leg_Y)) _Leg_Y)
  (:Leg_Z
   (&optional __Leg_Z)
   (if __Leg_Z (setq _Leg_Z __Leg_Z)) _Leg_Z)
  (:Leg_R_Z
   (&optional __Leg_R_Z)
   (if __Leg_R_Z (setq _Leg_R_Z __Leg_R_Z)) _Leg_R_Z)
  (:Leg_L_Z
   (&optional __Leg_L_Z)
   (if __Leg_L_Z (setq _Leg_L_Z __Leg_L_Z)) _Leg_L_Z)
  (:R_Roll
   (&optional __R_Roll)
   (if __R_Roll (setq _R_Roll __R_Roll)) _R_Roll)
  (:L_Roll
   (&optional __L_Roll)
   (if __L_Roll (setq _L_Roll __L_Roll)) _L_Roll)
  (:Setpoint_Pitch
   (&optional __Setpoint_Pitch)
   (if __Setpoint_Pitch (setq _Setpoint_Pitch __Setpoint_Pitch)) _Setpoint_Pitch)
  (:Setpoint_Roll
   (&optional __Setpoint_Roll)
   (if __Setpoint_Roll (setq _Setpoint_Roll __Setpoint_Roll)) _Setpoint_Roll)
  (:Gain_Angle_Pitch
   (&optional __Gain_Angle_Pitch)
   (if __Gain_Angle_Pitch (setq _Gain_Angle_Pitch __Gain_Angle_Pitch)) _Gain_Angle_Pitch)
  (:Gain_Angle_Roll
   (&optional __Gain_Angle_Roll)
   (if __Gain_Angle_Roll (setq _Gain_Angle_Roll __Gain_Angle_Roll)) _Gain_Angle_Roll)
  (:Gain_Velocity_Pitch
   (&optional __Gain_Velocity_Pitch)
   (if __Gain_Velocity_Pitch (setq _Gain_Velocity_Pitch __Gain_Velocity_Pitch)) _Gain_Velocity_Pitch)
  (:Gain_Velocity_Roll
   (&optional __Gain_Velocity_Roll)
   (if __Gain_Velocity_Roll (setq _Gain_Velocity_Roll __Gain_Velocity_Roll)) _Gain_Velocity_Roll)
  (:Gain_Integral_Pitch
   (&optional __Gain_Integral_Pitch)
   (if __Gain_Integral_Pitch (setq _Gain_Integral_Pitch __Gain_Integral_Pitch)) _Gain_Integral_Pitch)
  (:Gain_Integral_Roll
   (&optional __Gain_Integral_Roll)
   (if __Gain_Integral_Roll (setq _Gain_Integral_Roll __Gain_Integral_Roll)) _Gain_Integral_Roll)
  (:serialization-length
   ()
   (+
    ;; float32 _Body_Height
    4
    ;; float32 _Body_Tilt
    4
    ;; float32 _Leg_X
    4
    ;; float32 _Leg_Y
    4
    ;; float32 _Leg_Z
    4
    ;; float32 _Leg_R_Z
    4
    ;; float32 _Leg_L_Z
    4
    ;; float32 _R_Roll
    4
    ;; float32 _L_Roll
    4
    ;; float32 _Setpoint_Pitch
    4
    ;; float32 _Setpoint_Roll
    4
    ;; float32 _Gain_Angle_Pitch
    4
    ;; float32 _Gain_Angle_Roll
    4
    ;; float32 _Gain_Velocity_Pitch
    4
    ;; float32 _Gain_Velocity_Roll
    4
    ;; float32 _Gain_Integral_Pitch
    4
    ;; float32 _Gain_Integral_Roll
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Body_Height
       (sys::poke _Body_Height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Body_Tilt
       (sys::poke _Body_Tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Leg_X
       (sys::poke _Leg_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Leg_Y
       (sys::poke _Leg_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Leg_Z
       (sys::poke _Leg_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Leg_R_Z
       (sys::poke _Leg_R_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Leg_L_Z
       (sys::poke _Leg_L_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Roll
       (sys::poke _R_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Roll
       (sys::poke _L_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Setpoint_Pitch
       (sys::poke _Setpoint_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Setpoint_Roll
       (sys::poke _Setpoint_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gain_Angle_Pitch
       (sys::poke _Gain_Angle_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gain_Angle_Roll
       (sys::poke _Gain_Angle_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gain_Velocity_Pitch
       (sys::poke _Gain_Velocity_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gain_Velocity_Roll
       (sys::poke _Gain_Velocity_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gain_Integral_Pitch
       (sys::poke _Gain_Integral_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gain_Integral_Roll
       (sys::poke _Gain_Integral_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Body_Height
     (setq _Body_Height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Body_Tilt
     (setq _Body_Tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Leg_X
     (setq _Leg_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Leg_Y
     (setq _Leg_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Leg_Z
     (setq _Leg_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Leg_R_Z
     (setq _Leg_R_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Leg_L_Z
     (setq _Leg_L_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Roll
     (setq _R_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Roll
     (setq _L_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Setpoint_Pitch
     (setq _Setpoint_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Setpoint_Roll
     (setq _Setpoint_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gain_Angle_Pitch
     (setq _Gain_Angle_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gain_Angle_Roll
     (setq _Gain_Angle_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gain_Velocity_Pitch
     (setq _Gain_Velocity_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gain_Velocity_Roll
     (setq _Gain_Velocity_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gain_Integral_Pitch
     (setq _Gain_Integral_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gain_Integral_Roll
     (setq _Gain_Integral_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get feedback_msgs::FeedbackParam :md5sum-) "b6dc619d19217c2ba9bca0b28f4e3fda")
(setf (get feedback_msgs::FeedbackParam :datatype-) "feedback_msgs/FeedbackParam")
(setf (get feedback_msgs::FeedbackParam :definition-)
      "float32 Body_Height
float32 Body_Tilt
float32 Leg_X
float32 Leg_Y
float32 Leg_Z

float32 Leg_R_Z
float32 Leg_L_Z
float32 R_Roll
float32 L_Roll

float32 Setpoint_Pitch
float32 Setpoint_Roll

float32 Gain_Angle_Pitch
float32 Gain_Angle_Roll

float32 Gain_Velocity_Pitch
float32 Gain_Velocity_Roll

float32 Gain_Integral_Pitch
float32 Gain_Integral_Roll

")



(provide :feedback_msgs/FeedbackParam "b6dc619d19217c2ba9bca0b28f4e3fda")


