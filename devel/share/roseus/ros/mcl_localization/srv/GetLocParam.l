;; Auto-generated. Do not edit!


(when (boundp 'mcl_localization::GetLocParam)
  (if (not (find-package "MCL_LOCALIZATION"))
    (make-package "MCL_LOCALIZATION"))
  (shadow 'GetLocParam (find-package "MCL_LOCALIZATION")))
(unless (find-package "MCL_LOCALIZATION::GETLOCPARAM")
  (make-package "MCL_LOCALIZATION::GETLOCPARAM"))
(unless (find-package "MCL_LOCALIZATION::GETLOCPARAMREQUEST")
  (make-package "MCL_LOCALIZATION::GETLOCPARAMREQUEST"))
(unless (find-package "MCL_LOCALIZATION::GETLOCPARAMRESPONSE")
  (make-package "MCL_LOCALIZATION::GETLOCPARAMRESPONSE"))

(in-package "ROS")





(defclass mcl_localization::GetLocParamRequest
  :super ros::object
  :slots (_get_param ))

(defmethod mcl_localization::GetLocParamRequest
  (:init
   (&key
    ((:get_param __get_param) nil)
    )
   (send-super :init)
   (setq _get_param __get_param)
   self)
  (:get_param
   (&optional __get_param)
   (if __get_param (setq _get_param __get_param)) _get_param)
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

(defclass mcl_localization::GetLocParamResponse
  :super ros::object
  :slots (_parameters ))

(defmethod mcl_localization::GetLocParamResponse
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

(defclass mcl_localization::GetLocParam
  :super ros::object
  :slots ())

(setf (get mcl_localization::GetLocParam :md5sum-) "3909651f1afc562f3108e47d85479fbe")
(setf (get mcl_localization::GetLocParam :datatype-) "mcl_localization/GetLocParam")
(setf (get mcl_localization::GetLocParam :request) mcl_localization::GetLocParamRequest)
(setf (get mcl_localization::GetLocParam :response) mcl_localization::GetLocParamResponse)

(defmethod mcl_localization::GetLocParamRequest
  (:response () (instance mcl_localization::GetLocParamResponse :init)))

(setf (get mcl_localization::GetLocParamRequest :md5sum-) "3909651f1afc562f3108e47d85479fbe")
(setf (get mcl_localization::GetLocParamRequest :datatype-) "mcl_localization/GetLocParamRequest")
(setf (get mcl_localization::GetLocParamRequest :definition-)
      "bool            get_param
---
localization_param    parameters


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
")

(setf (get mcl_localization::GetLocParamResponse :md5sum-) "3909651f1afc562f3108e47d85479fbe")
(setf (get mcl_localization::GetLocParamResponse :datatype-) "mcl_localization/GetLocParamResponse")
(setf (get mcl_localization::GetLocParamResponse :definition-)
      "bool            get_param
---
localization_param    parameters


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
")



(provide :mcl_localization/GetLocParam "3909651f1afc562f3108e47d85479fbe")


