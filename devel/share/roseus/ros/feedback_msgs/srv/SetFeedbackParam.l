;; Auto-generated. Do not edit!


(when (boundp 'feedback_msgs::SetFeedbackParam)
  (if (not (find-package "FEEDBACK_MSGS"))
    (make-package "FEEDBACK_MSGS"))
  (shadow 'SetFeedbackParam (find-package "FEEDBACK_MSGS")))
(unless (find-package "FEEDBACK_MSGS::SETFEEDBACKPARAM")
  (make-package "FEEDBACK_MSGS::SETFEEDBACKPARAM"))
(unless (find-package "FEEDBACK_MSGS::SETFEEDBACKPARAMREQUEST")
  (make-package "FEEDBACK_MSGS::SETFEEDBACKPARAMREQUEST"))
(unless (find-package "FEEDBACK_MSGS::SETFEEDBACKPARAMRESPONSE")
  (make-package "FEEDBACK_MSGS::SETFEEDBACKPARAMRESPONSE"))

(in-package "ROS")





(defclass feedback_msgs::SetFeedbackParamRequest
  :super ros::object
  :slots (_parameters ))

(defmethod feedback_msgs::SetFeedbackParamRequest
  (:init
   (&key
    ((:parameters __parameters) (instance feedback_msgs::FeedbackParam :init))
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
    ;; feedback_msgs/FeedbackParam _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; feedback_msgs/FeedbackParam _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; feedback_msgs/FeedbackParam _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(defclass feedback_msgs::SetFeedbackParamResponse
  :super ros::object
  :slots (_result ))

(defmethod feedback_msgs::SetFeedbackParamResponse
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

(defclass feedback_msgs::SetFeedbackParam
  :super ros::object
  :slots ())

(setf (get feedback_msgs::SetFeedbackParam :md5sum-) "9ad071cebaaf92d9d2cb3443b3bd44a4")
(setf (get feedback_msgs::SetFeedbackParam :datatype-) "feedback_msgs/SetFeedbackParam")
(setf (get feedback_msgs::SetFeedbackParam :request) feedback_msgs::SetFeedbackParamRequest)
(setf (get feedback_msgs::SetFeedbackParam :response) feedback_msgs::SetFeedbackParamResponse)

(defmethod feedback_msgs::SetFeedbackParamRequest
  (:response () (instance feedback_msgs::SetFeedbackParamResponse :init)))

(setf (get feedback_msgs::SetFeedbackParamRequest :md5sum-) "9ad071cebaaf92d9d2cb3443b3bd44a4")
(setf (get feedback_msgs::SetFeedbackParamRequest :datatype-) "feedback_msgs/SetFeedbackParamRequest")
(setf (get feedback_msgs::SetFeedbackParamRequest :definition-)
      "FeedbackParam    parameters

================================================================================
MSG: feedback_msgs/FeedbackParam
float32 Body_Height
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
---
bool            result

")

(setf (get feedback_msgs::SetFeedbackParamResponse :md5sum-) "9ad071cebaaf92d9d2cb3443b3bd44a4")
(setf (get feedback_msgs::SetFeedbackParamResponse :datatype-) "feedback_msgs/SetFeedbackParamResponse")
(setf (get feedback_msgs::SetFeedbackParamResponse :definition-)
      "FeedbackParam    parameters

================================================================================
MSG: feedback_msgs/FeedbackParam
float32 Body_Height
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
---
bool            result

")



(provide :feedback_msgs/SetFeedbackParam "9ad071cebaaf92d9d2cb3443b3bd44a4")


