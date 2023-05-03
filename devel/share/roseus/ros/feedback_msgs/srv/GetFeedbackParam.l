;; Auto-generated. Do not edit!


(when (boundp 'feedback_msgs::GetFeedbackParam)
  (if (not (find-package "FEEDBACK_MSGS"))
    (make-package "FEEDBACK_MSGS"))
  (shadow 'GetFeedbackParam (find-package "FEEDBACK_MSGS")))
(unless (find-package "FEEDBACK_MSGS::GETFEEDBACKPARAM")
  (make-package "FEEDBACK_MSGS::GETFEEDBACKPARAM"))
(unless (find-package "FEEDBACK_MSGS::GETFEEDBACKPARAMREQUEST")
  (make-package "FEEDBACK_MSGS::GETFEEDBACKPARAMREQUEST"))
(unless (find-package "FEEDBACK_MSGS::GETFEEDBACKPARAMRESPONSE")
  (make-package "FEEDBACK_MSGS::GETFEEDBACKPARAMRESPONSE"))

(in-package "ROS")





(defclass feedback_msgs::GetFeedbackParamRequest
  :super ros::object
  :slots (_get_param ))

(defmethod feedback_msgs::GetFeedbackParamRequest
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

(defclass feedback_msgs::GetFeedbackParamResponse
  :super ros::object
  :slots (_parameters ))

(defmethod feedback_msgs::GetFeedbackParamResponse
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

(defclass feedback_msgs::GetFeedbackParam
  :super ros::object
  :slots ())

(setf (get feedback_msgs::GetFeedbackParam :md5sum-) "43565a45156840bd6626578cd2384225")
(setf (get feedback_msgs::GetFeedbackParam :datatype-) "feedback_msgs/GetFeedbackParam")
(setf (get feedback_msgs::GetFeedbackParam :request) feedback_msgs::GetFeedbackParamRequest)
(setf (get feedback_msgs::GetFeedbackParam :response) feedback_msgs::GetFeedbackParamResponse)

(defmethod feedback_msgs::GetFeedbackParamRequest
  (:response () (instance feedback_msgs::GetFeedbackParamResponse :init)))

(setf (get feedback_msgs::GetFeedbackParamRequest :md5sum-) "43565a45156840bd6626578cd2384225")
(setf (get feedback_msgs::GetFeedbackParamRequest :datatype-) "feedback_msgs/GetFeedbackParamRequest")
(setf (get feedback_msgs::GetFeedbackParamRequest :definition-)
      "bool            get_param
---
FeedbackParam    parameters


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
")

(setf (get feedback_msgs::GetFeedbackParamResponse :md5sum-) "43565a45156840bd6626578cd2384225")
(setf (get feedback_msgs::GetFeedbackParamResponse :datatype-) "feedback_msgs/GetFeedbackParamResponse")
(setf (get feedback_msgs::GetFeedbackParamResponse :definition-)
      "bool            get_param
---
FeedbackParam    parameters


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
")



(provide :feedback_msgs/GetFeedbackParam "43565a45156840bd6626578cd2384225")


