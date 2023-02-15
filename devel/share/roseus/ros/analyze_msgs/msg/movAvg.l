;; Auto-generated. Do not edit!


(when (boundp 'analyze_msgs::movAvg)
  (if (not (find-package "ANALYZE_MSGS"))
    (make-package "ANALYZE_MSGS"))
  (shadow 'movAvg (find-package "ANALYZE_MSGS")))
(unless (find-package "ANALYZE_MSGS::MOVAVG")
  (make-package "ANALYZE_MSGS::MOVAVG"))

(in-package "ROS")
;;//! \htmlinclude movAvg.msg.html


(defclass analyze_msgs::movAvg
  :super ros::object
  :slots (_Kp _Kd _Ankle _gyr_y_aft ))

(defmethod analyze_msgs::movAvg
  (:init
   (&key
    ((:Kp __Kp) 0.0)
    ((:Kd __Kd) 0.0)
    ((:Ankle __Ankle) 0.0)
    ((:gyr_y_aft __gyr_y_aft) 0.0)
    )
   (send-super :init)
   (setq _Kp (float __Kp))
   (setq _Kd (float __Kd))
   (setq _Ankle (float __Ankle))
   (setq _gyr_y_aft (float __gyr_y_aft))
   self)
  (:Kp
   (&optional __Kp)
   (if __Kp (setq _Kp __Kp)) _Kp)
  (:Kd
   (&optional __Kd)
   (if __Kd (setq _Kd __Kd)) _Kd)
  (:Ankle
   (&optional __Ankle)
   (if __Ankle (setq _Ankle __Ankle)) _Ankle)
  (:gyr_y_aft
   (&optional __gyr_y_aft)
   (if __gyr_y_aft (setq _gyr_y_aft __gyr_y_aft)) _gyr_y_aft)
  (:serialization-length
   ()
   (+
    ;; float32 _Kp
    4
    ;; float32 _Kd
    4
    ;; float32 _Ankle
    4
    ;; float32 _gyr_y_aft
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Kp
       (sys::poke _Kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Kd
       (sys::poke _Kd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ankle
       (sys::poke _Ankle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyr_y_aft
       (sys::poke _gyr_y_aft (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Kp
     (setq _Kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Kd
     (setq _Kd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ankle
     (setq _Ankle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyr_y_aft
     (setq _gyr_y_aft (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get analyze_msgs::movAvg :md5sum-) "b26380dcaf44460c112d4bf22253d83e")
(setf (get analyze_msgs::movAvg :datatype-) "analyze_msgs/movAvg")
(setf (get analyze_msgs::movAvg :definition-)
      "float32 Kp
float32 Kd
float32 Ankle
float32 gyr_y_aft

")



(provide :analyze_msgs/movAvg "b26380dcaf44460c112d4bf22253d83e")


