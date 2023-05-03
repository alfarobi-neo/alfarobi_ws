;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::AdditionalServoData)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'AdditionalServoData (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::ADDITIONALSERVODATA")
  (make-package "HUMANOID_LEAGUE_MSGS::ADDITIONALSERVODATA"))

(in-package "ROS")
;;//! \htmlinclude AdditionalServoData.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass humanoid_league_msgs::AdditionalServoData
  :super ros::object
  :slots (_voltage _temperature ))

(defmethod humanoid_league_msgs::AdditionalServoData
  (:init
   (&key
    ((:voltage __voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:temperature __temperature) ())
    )
   (send-super :init)
   (setq _voltage __voltage)
   (setq _temperature __temperature)
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:temperature
   (&rest __temperature)
   (if (keywordp (car __temperature))
       (send* _temperature __temperature)
     (progn
       (if __temperature (setq _temperature (car __temperature)))
       _temperature)))
  (:serialization-length
   ()
   (+
    ;; float32[] _voltage
    (* 4    (length _voltage)) 4
    ;; sensor_msgs/Temperature[] _temperature
    (apply #'+ (send-all _temperature :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _voltage
     (write-long (length _voltage) s)
     (dotimes (i (length _voltage))
       (sys::poke (elt _voltage i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; sensor_msgs/Temperature[] _temperature
     (write-long (length _temperature) s)
     (dolist (elem _temperature)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltage i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; sensor_msgs/Temperature[] _temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temperature (let (r) (dotimes (i n) (push (instance sensor_msgs::Temperature :init) r)) r))
     (dolist (elem- _temperature)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::AdditionalServoData :md5sum-) "35c09e22724f03879e9711ba15df9d42")
(setf (get humanoid_league_msgs::AdditionalServoData :datatype-) "humanoid_league_msgs/AdditionalServoData")
(setf (get humanoid_league_msgs::AdditionalServoData :definition-)
      "# This message provides additional data from the servos, which is not included in JointState.msg
# Should mainly used for monitoring and debug purposes

# Setting the value to -1 means there is no data from this motor
float32[] voltage
sensor_msgs/Temperature[] temperature
================================================================================
MSG: sensor_msgs/Temperature
 # Single temperature reading.

 Header header           # timestamp is the time the temperature was measured
                         # frame_id is the location of the temperature reading

 float64 temperature     # Measurement of the Temperature in Degrees Celsius

 float64 variance        # 0 is interpreted as variance unknown
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :humanoid_league_msgs/AdditionalServoData "35c09e22724f03879e9711ba15df9d42")


