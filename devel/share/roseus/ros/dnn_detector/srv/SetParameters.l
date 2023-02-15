;; Auto-generated. Do not edit!


(when (boundp 'dnn_detector::SetParameters)
  (if (not (find-package "DNN_DETECTOR"))
    (make-package "DNN_DETECTOR"))
  (shadow 'SetParameters (find-package "DNN_DETECTOR")))
(unless (find-package "DNN_DETECTOR::SETPARAMETERS")
  (make-package "DNN_DETECTOR::SETPARAMETERS"))
(unless (find-package "DNN_DETECTOR::SETPARAMETERSREQUEST")
  (make-package "DNN_DETECTOR::SETPARAMETERSREQUEST"))
(unless (find-package "DNN_DETECTOR::SETPARAMETERSRESPONSE")
  (make-package "DNN_DETECTOR::SETPARAMETERSRESPONSE"))

(in-package "ROS")





(defclass dnn_detector::SetParametersRequest
  :super ros::object
  :slots (_params ))

(defmethod dnn_detector::SetParametersRequest
  (:init
   (&key
    ((:params __params) (instance dnn_detector::DnnDetectorParams :init))
    )
   (send-super :init)
   (setq _params __params)
   self)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; dnn_detector/DnnDetectorParams _params
    (send _params :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnn_detector/DnnDetectorParams _params
       (send _params :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnn_detector/DnnDetectorParams _params
     (send _params :deserialize buf ptr-) (incf ptr- (send _params :serialization-length))
   ;;
   self)
  )

(defclass dnn_detector::SetParametersResponse
  :super ros::object
  :slots (_returns ))

(defmethod dnn_detector::SetParametersResponse
  (:init
   (&key
    ((:returns __returns) (instance dnn_detector::DnnDetectorParams :init))
    )
   (send-super :init)
   (setq _returns __returns)
   self)
  (:returns
   (&rest __returns)
   (if (keywordp (car __returns))
       (send* _returns __returns)
     (progn
       (if __returns (setq _returns (car __returns)))
       _returns)))
  (:serialization-length
   ()
   (+
    ;; dnn_detector/DnnDetectorParams _returns
    (send _returns :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnn_detector/DnnDetectorParams _returns
       (send _returns :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnn_detector/DnnDetectorParams _returns
     (send _returns :deserialize buf ptr-) (incf ptr- (send _returns :serialization-length))
   ;;
   self)
  )

(defclass dnn_detector::SetParameters
  :super ros::object
  :slots ())

(setf (get dnn_detector::SetParameters :md5sum-) "6ef3ab2b457693e716fc437aa9628429")
(setf (get dnn_detector::SetParameters :datatype-) "dnn_detector/SetParameters")
(setf (get dnn_detector::SetParameters :request) dnn_detector::SetParametersRequest)
(setf (get dnn_detector::SetParameters :response) dnn_detector::SetParametersResponse)

(defmethod dnn_detector::SetParametersRequest
  (:response () (instance dnn_detector::SetParametersResponse :init)))

(setf (get dnn_detector::SetParametersRequest :md5sum-) "6ef3ab2b457693e716fc437aa9628429")
(setf (get dnn_detector::SetParametersRequest :datatype-) "dnn_detector/SetParametersRequest")
(setf (get dnn_detector::SetParametersRequest :definition-)
      "DnnDetectorParams  params

================================================================================
MSG: dnn_detector/DnnDetectorParams
# This represents the parameters of ball_detector

uint32  scaling
float32 confidence
float32 mean_val
---
DnnDetectorParams  returns


================================================================================
MSG: dnn_detector/DnnDetectorParams
# This represents the parameters of ball_detector

uint32  scaling
float32 confidence
float32 mean_val
")

(setf (get dnn_detector::SetParametersResponse :md5sum-) "6ef3ab2b457693e716fc437aa9628429")
(setf (get dnn_detector::SetParametersResponse :datatype-) "dnn_detector/SetParametersResponse")
(setf (get dnn_detector::SetParametersResponse :definition-)
      "DnnDetectorParams  params

================================================================================
MSG: dnn_detector/DnnDetectorParams
# This represents the parameters of ball_detector

uint32  scaling
float32 confidence
float32 mean_val
---
DnnDetectorParams  returns


================================================================================
MSG: dnn_detector/DnnDetectorParams
# This represents the parameters of ball_detector

uint32  scaling
float32 confidence
float32 mean_val
")



(provide :dnn_detector/SetParameters "6ef3ab2b457693e716fc437aa9628429")


