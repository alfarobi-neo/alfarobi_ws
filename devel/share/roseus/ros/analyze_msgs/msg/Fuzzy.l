;; Auto-generated. Do not edit!


(when (boundp 'analyze_msgs::Fuzzy)
  (if (not (find-package "ANALYZE_MSGS"))
    (make-package "ANALYZE_MSGS"))
  (shadow 'Fuzzy (find-package "ANALYZE_MSGS")))
(unless (find-package "ANALYZE_MSGS::FUZZY")
  (make-package "ANALYZE_MSGS::FUZZY"))

(in-package "ROS")
;;//! \htmlinclude Fuzzy.msg.html


(defclass analyze_msgs::Fuzzy
  :super ros::object
  :slots (_Cond _Out _Ori _Gyr ))

(defmethod analyze_msgs::Fuzzy
  (:init
   (&key
    ((:Cond __Cond) 0)
    ((:Out __Out) 0.0)
    ((:Ori __Ori) 0.0)
    ((:Gyr __Gyr) 0.0)
    )
   (send-super :init)
   (setq _Cond (round __Cond))
   (setq _Out (float __Out))
   (setq _Ori (float __Ori))
   (setq _Gyr (float __Gyr))
   self)
  (:Cond
   (&optional __Cond)
   (if __Cond (setq _Cond __Cond)) _Cond)
  (:Out
   (&optional __Out)
   (if __Out (setq _Out __Out)) _Out)
  (:Ori
   (&optional __Ori)
   (if __Ori (setq _Ori __Ori)) _Ori)
  (:Gyr
   (&optional __Gyr)
   (if __Gyr (setq _Gyr __Gyr)) _Gyr)
  (:serialization-length
   ()
   (+
    ;; int32 _Cond
    4
    ;; float32 _Out
    4
    ;; float32 _Ori
    4
    ;; float32 _Gyr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Cond
       (write-long _Cond s)
     ;; float32 _Out
       (sys::poke _Out (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ori
       (sys::poke _Ori (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gyr
       (sys::poke _Gyr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Cond
     (setq _Cond (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Out
     (setq _Out (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ori
     (setq _Ori (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gyr
     (setq _Gyr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get analyze_msgs::Fuzzy :md5sum-) "0dbe4ca5345b8d8e12609086d919c0bc")
(setf (get analyze_msgs::Fuzzy :datatype-) "analyze_msgs/Fuzzy")
(setf (get analyze_msgs::Fuzzy :definition-)
      "int32 Cond
float32 Out
float32 Ori
float32 Gyr

")



(provide :analyze_msgs/Fuzzy "0dbe4ca5345b8d8e12609086d919c0bc")


