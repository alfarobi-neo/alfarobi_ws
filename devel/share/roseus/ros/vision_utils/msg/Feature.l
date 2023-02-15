;; Auto-generated. Do not edit!


(when (boundp 'vision_utils::Feature)
  (if (not (find-package "VISION_UTILS"))
    (make-package "VISION_UTILS"))
  (shadow 'Feature (find-package "VISION_UTILS")))
(unless (find-package "VISION_UTILS::FEATURE")
  (make-package "VISION_UTILS::FEATURE"))

(in-package "ROS")
;;//! \htmlinclude Feature.msg.html


(defclass vision_utils::Feature
  :super ros::object
  :slots (_param1 _param2 _param3 _param4 _orientation _feature_type ))

(defmethod vision_utils::Feature
  (:init
   (&key
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:orientation __orientation) 0.0)
    ((:feature_type __feature_type) 0.0)
    )
   (send-super :init)
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _orientation (float __orientation))
   (setq _feature_type (float __feature_type))
   self)
  (:param1
   (&optional __param1)
   (if __param1 (setq _param1 __param1)) _param1)
  (:param2
   (&optional __param2)
   (if __param2 (setq _param2 __param2)) _param2)
  (:param3
   (&optional __param3)
   (if __param3 (setq _param3 __param3)) _param3)
  (:param4
   (&optional __param4)
   (if __param4 (setq _param4 __param4)) _param4)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:feature_type
   (&optional __feature_type)
   (if __feature_type (setq _feature_type __feature_type)) _feature_type)
  (:serialization-length
   ()
   (+
    ;; float32 _param1
    4
    ;; float32 _param2
    4
    ;; float32 _param3
    4
    ;; float32 _param4
    4
    ;; float32 _orientation
    4
    ;; float32 _feature_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _feature_type
       (sys::poke _feature_type (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _param1
     (setq _param1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param2
     (setq _param2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param3
     (setq _param3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param4
     (setq _param4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _feature_type
     (setq _feature_type (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vision_utils::Feature :md5sum-) "82dbffcabd327fa650f6e5b36592a1a5")
(setf (get vision_utils::Feature :datatype-) "vision_utils/Feature")
(setf (get vision_utils::Feature :definition-)
      "float32 param1
float32 param2
float32 param3
float32 param4
float32 orientation
float32 feature_type

")



(provide :vision_utils/Feature "82dbffcabd327fa650f6e5b36592a1a5")


