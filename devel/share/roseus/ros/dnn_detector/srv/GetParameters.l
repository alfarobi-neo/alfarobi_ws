;; Auto-generated. Do not edit!


(when (boundp 'dnn_detector::GetParameters)
  (if (not (find-package "DNN_DETECTOR"))
    (make-package "DNN_DETECTOR"))
  (shadow 'GetParameters (find-package "DNN_DETECTOR")))
(unless (find-package "DNN_DETECTOR::GETPARAMETERS")
  (make-package "DNN_DETECTOR::GETPARAMETERS"))
(unless (find-package "DNN_DETECTOR::GETPARAMETERSREQUEST")
  (make-package "DNN_DETECTOR::GETPARAMETERSREQUEST"))
(unless (find-package "DNN_DETECTOR::GETPARAMETERSRESPONSE")
  (make-package "DNN_DETECTOR::GETPARAMETERSRESPONSE"))

(in-package "ROS")





(defclass dnn_detector::GetParametersRequest
  :super ros::object
  :slots ())

(defmethod dnn_detector::GetParametersRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dnn_detector::GetParametersResponse
  :super ros::object
  :slots (_returns ))

(defmethod dnn_detector::GetParametersResponse
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

(defclass dnn_detector::GetParameters
  :super ros::object
  :slots ())

(setf (get dnn_detector::GetParameters :md5sum-) "d743da2bf12d518097400e47c74397a3")
(setf (get dnn_detector::GetParameters :datatype-) "dnn_detector/GetParameters")
(setf (get dnn_detector::GetParameters :request) dnn_detector::GetParametersRequest)
(setf (get dnn_detector::GetParameters :response) dnn_detector::GetParametersResponse)

(defmethod dnn_detector::GetParametersRequest
  (:response () (instance dnn_detector::GetParametersResponse :init)))

(setf (get dnn_detector::GetParametersRequest :md5sum-) "d743da2bf12d518097400e47c74397a3")
(setf (get dnn_detector::GetParametersRequest :datatype-) "dnn_detector/GetParametersRequest")
(setf (get dnn_detector::GetParametersRequest :definition-)
      "
---
DnnDetectorParams  returns


================================================================================
MSG: dnn_detector/DnnDetectorParams
# This represents the parameters of ball_detector

uint32  scaling
float32 confidence
float32 mean_val
")

(setf (get dnn_detector::GetParametersResponse :md5sum-) "d743da2bf12d518097400e47c74397a3")
(setf (get dnn_detector::GetParametersResponse :datatype-) "dnn_detector/GetParametersResponse")
(setf (get dnn_detector::GetParametersResponse :definition-)
      "
---
DnnDetectorParams  returns


================================================================================
MSG: dnn_detector/DnnDetectorParams
# This represents the parameters of ball_detector

uint32  scaling
float32 confidence
float32 mean_val
")



(provide :dnn_detector/GetParameters "d743da2bf12d518097400e47c74397a3")


