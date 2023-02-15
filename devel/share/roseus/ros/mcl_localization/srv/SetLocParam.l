;; Auto-generated. Do not edit!


(when (boundp 'mcl_localization::SetLocParam)
  (if (not (find-package "MCL_LOCALIZATION"))
    (make-package "MCL_LOCALIZATION"))
  (shadow 'SetLocParam (find-package "MCL_LOCALIZATION")))
(unless (find-package "MCL_LOCALIZATION::SETLOCPARAM")
  (make-package "MCL_LOCALIZATION::SETLOCPARAM"))
(unless (find-package "MCL_LOCALIZATION::SETLOCPARAMREQUEST")
  (make-package "MCL_LOCALIZATION::SETLOCPARAMREQUEST"))
(unless (find-package "MCL_LOCALIZATION::SETLOCPARAMRESPONSE")
  (make-package "MCL_LOCALIZATION::SETLOCPARAMRESPONSE"))

(in-package "ROS")





(defclass mcl_localization::SetLocParamRequest
  :super ros::object
  :slots (_parameters ))

(defmethod mcl_localization::SetLocParamRequest
  (:init
   (&key
    ((:parameters __parameters) (instance mcl_localization::localization_param :init))
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
    ;; mcl_localization/localization_param _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mcl_localization/localization_param _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mcl_localization/localization_param _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(defclass mcl_localization::SetLocParamResponse
  :super ros::object
  :slots (_result ))

(defmethod mcl_localization::SetLocParamResponse
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

(defclass mcl_localization::SetLocParam
  :super ros::object
  :slots ())

(setf (get mcl_localization::SetLocParam :md5sum-) "c5b3d39a60950d660fb6da89c59bd7b8")
(setf (get mcl_localization::SetLocParam :datatype-) "mcl_localization/SetLocParam")
(setf (get mcl_localization::SetLocParam :request) mcl_localization::SetLocParamRequest)
(setf (get mcl_localization::SetLocParam :response) mcl_localization::SetLocParamResponse)

(defmethod mcl_localization::SetLocParamRequest
  (:response () (instance mcl_localization::SetLocParamResponse :init)))

(setf (get mcl_localization::SetLocParamRequest :md5sum-) "c5b3d39a60950d660fb6da89c59bd7b8")
(setf (get mcl_localization::SetLocParamRequest :datatype-) "mcl_localization/SetLocParamRequest")
(setf (get mcl_localization::SetLocParamRequest :definition-)
      "localization_param    parameters

================================================================================
MSG: mcl_localization/localization_param
float64 mcl_afast
float64 mcl_aslow
float64 mcl_variance
float64 mgauss_x
float64 mgauss_y
float64 mgauss_w
float64 vgauss_x
float64 vgauss_y
float64 mcl_wcmps
---
bool            result

")

(setf (get mcl_localization::SetLocParamResponse :md5sum-) "c5b3d39a60950d660fb6da89c59bd7b8")
(setf (get mcl_localization::SetLocParamResponse :datatype-) "mcl_localization/SetLocParamResponse")
(setf (get mcl_localization::SetLocParamResponse :definition-)
      "localization_param    parameters

================================================================================
MSG: mcl_localization/localization_param
float64 mcl_afast
float64 mcl_aslow
float64 mcl_variance
float64 mgauss_x
float64 mgauss_y
float64 mgauss_w
float64 vgauss_x
float64 vgauss_y
float64 mcl_wcmps
---
bool            result

")



(provide :mcl_localization/SetLocParam "c5b3d39a60950d660fb6da89c59bd7b8")


