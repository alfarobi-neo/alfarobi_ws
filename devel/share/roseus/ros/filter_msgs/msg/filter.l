;; Auto-generated. Do not edit!


(when (boundp 'filter_msgs::filter)
  (if (not (find-package "FILTER_MSGS"))
    (make-package "FILTER_MSGS"))
  (shadow 'filter (find-package "FILTER_MSGS")))
(unless (find-package "FILTER_MSGS::FILTER")
  (make-package "FILTER_MSGS::FILTER"))

(in-package "ROS")
;;//! \htmlinclude filter.msg.html


(defclass filter_msgs::filter
  :super ros::object
  :slots (_fltr_sesudah _fltr_sebelum _fltr_sesudah_EMAV2 ))

(defmethod filter_msgs::filter
  (:init
   (&key
    ((:fltr_sesudah __fltr_sesudah) 0.0)
    ((:fltr_sebelum __fltr_sebelum) 0.0)
    ((:fltr_sesudah_EMAV2 __fltr_sesudah_EMAV2) 0.0)
    )
   (send-super :init)
   (setq _fltr_sesudah (float __fltr_sesudah))
   (setq _fltr_sebelum (float __fltr_sebelum))
   (setq _fltr_sesudah_EMAV2 (float __fltr_sesudah_EMAV2))
   self)
  (:fltr_sesudah
   (&optional __fltr_sesudah)
   (if __fltr_sesudah (setq _fltr_sesudah __fltr_sesudah)) _fltr_sesudah)
  (:fltr_sebelum
   (&optional __fltr_sebelum)
   (if __fltr_sebelum (setq _fltr_sebelum __fltr_sebelum)) _fltr_sebelum)
  (:fltr_sesudah_EMAV2
   (&optional __fltr_sesudah_EMAV2)
   (if __fltr_sesudah_EMAV2 (setq _fltr_sesudah_EMAV2 __fltr_sesudah_EMAV2)) _fltr_sesudah_EMAV2)
  (:serialization-length
   ()
   (+
    ;; float32 _fltr_sesudah
    4
    ;; float32 _fltr_sebelum
    4
    ;; float32 _fltr_sesudah_EMAV2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _fltr_sesudah
       (sys::poke _fltr_sesudah (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fltr_sebelum
       (sys::poke _fltr_sebelum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fltr_sesudah_EMAV2
       (sys::poke _fltr_sesudah_EMAV2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _fltr_sesudah
     (setq _fltr_sesudah (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fltr_sebelum
     (setq _fltr_sebelum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fltr_sesudah_EMAV2
     (setq _fltr_sesudah_EMAV2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get filter_msgs::filter :md5sum-) "ce602acead3a15d0f2986f47f81ff818")
(setf (get filter_msgs::filter :datatype-) "filter_msgs/filter")
(setf (get filter_msgs::filter :definition-)
      "float32 fltr_sesudah
float32 fltr_sebelum
float32 fltr_sesudah_EMAV2
")



(provide :filter_msgs/filter "ce602acead3a15d0f2986f47f81ff818")


