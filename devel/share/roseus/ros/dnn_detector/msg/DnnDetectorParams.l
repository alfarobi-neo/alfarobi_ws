;; Auto-generated. Do not edit!


(when (boundp 'dnn_detector::DnnDetectorParams)
  (if (not (find-package "DNN_DETECTOR"))
    (make-package "DNN_DETECTOR"))
  (shadow 'DnnDetectorParams (find-package "DNN_DETECTOR")))
(unless (find-package "DNN_DETECTOR::DNNDETECTORPARAMS")
  (make-package "DNN_DETECTOR::DNNDETECTORPARAMS"))

(in-package "ROS")
;;//! \htmlinclude DnnDetectorParams.msg.html


(defclass dnn_detector::DnnDetectorParams
  :super ros::object
  :slots (_scaling _confidence _mean_val ))

(defmethod dnn_detector::DnnDetectorParams
  (:init
   (&key
    ((:scaling __scaling) 0)
    ((:confidence __confidence) 0.0)
    ((:mean_val __mean_val) 0.0)
    )
   (send-super :init)
   (setq _scaling (round __scaling))
   (setq _confidence (float __confidence))
   (setq _mean_val (float __mean_val))
   self)
  (:scaling
   (&optional __scaling)
   (if __scaling (setq _scaling __scaling)) _scaling)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:mean_val
   (&optional __mean_val)
   (if __mean_val (setq _mean_val __mean_val)) _mean_val)
  (:serialization-length
   ()
   (+
    ;; uint32 _scaling
    4
    ;; float32 _confidence
    4
    ;; float32 _mean_val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _scaling
       (write-long _scaling s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mean_val
       (sys::poke _mean_val (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _scaling
     (setq _scaling (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mean_val
     (setq _mean_val (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dnn_detector::DnnDetectorParams :md5sum-) "d7ac01d16dc32137fc1567bc7287ecf5")
(setf (get dnn_detector::DnnDetectorParams :datatype-) "dnn_detector/DnnDetectorParams")
(setf (get dnn_detector::DnnDetectorParams :definition-)
      "# This represents the parameters of ball_detector

uint32  scaling
float32 confidence
float32 mean_val

")



(provide :dnn_detector/DnnDetectorParams "d7ac01d16dc32137fc1567bc7287ecf5")


