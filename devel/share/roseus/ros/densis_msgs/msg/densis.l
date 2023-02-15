;; Auto-generated. Do not edit!


(when (boundp 'densis_msgs::densis)
  (if (not (find-package "DENSIS_MSGS"))
    (make-package "DENSIS_MSGS"))
  (shadow 'densis (find-package "DENSIS_MSGS")))
(unless (find-package "DENSIS_MSGS::DENSIS")
  (make-package "DENSIS_MSGS::DENSIS"))

(in-package "ROS")
;;//! \htmlinclude densis.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass densis_msgs::densis
  :super ros::object
  :slots (_IMUorientation _IMUgyro _COMLSSP _COMRSSP _COMDSP _COMLSSPrpy _COMRSSPrpy _COMDSPrpy _ZMPLSSP _ZMPRSSP _ZMPDSP _LAnklePitch_velocityNow _LAnklePitch_positionIK _LAnklePitch_positionNow _LAnklePitch_refPosFromPos _RAnklePitch_velocityNow _RAnklePitch_positionIK _RAnklePitch_positionNow _RAnklePitch_refPosFromPos _COMDSPrpy_pitch_Est _gyro_pitch_Est _COMDSPrpy_pitch_Meas _gyro_pitch_Meas _gyro_pitch_Fil _CP_0 _CP_1 _CP_2 _CP_3 ))

(defmethod densis_msgs::densis
  (:init
   (&key
    ((:IMUorientation __IMUorientation) (instance geometry_msgs::Point :init))
    ((:IMUgyro __IMUgyro) (instance geometry_msgs::Point :init))
    ((:COMLSSP __COMLSSP) (instance geometry_msgs::Point :init))
    ((:COMRSSP __COMRSSP) (instance geometry_msgs::Point :init))
    ((:COMDSP __COMDSP) (instance geometry_msgs::Point :init))
    ((:COMLSSPrpy __COMLSSPrpy) (instance geometry_msgs::Point :init))
    ((:COMRSSPrpy __COMRSSPrpy) (instance geometry_msgs::Point :init))
    ((:COMDSPrpy __COMDSPrpy) (instance geometry_msgs::Point :init))
    ((:ZMPLSSP __ZMPLSSP) (instance geometry_msgs::Point :init))
    ((:ZMPRSSP __ZMPRSSP) (instance geometry_msgs::Point :init))
    ((:ZMPDSP __ZMPDSP) (instance geometry_msgs::Point :init))
    ((:LAnklePitch_velocityNow __LAnklePitch_velocityNow) 0.0)
    ((:LAnklePitch_positionIK __LAnklePitch_positionIK) 0.0)
    ((:LAnklePitch_positionNow __LAnklePitch_positionNow) 0.0)
    ((:LAnklePitch_refPosFromPos __LAnklePitch_refPosFromPos) 0.0)
    ((:RAnklePitch_velocityNow __RAnklePitch_velocityNow) 0.0)
    ((:RAnklePitch_positionIK __RAnklePitch_positionIK) 0.0)
    ((:RAnklePitch_positionNow __RAnklePitch_positionNow) 0.0)
    ((:RAnklePitch_refPosFromPos __RAnklePitch_refPosFromPos) 0.0)
    ((:COMDSPrpy_pitch_Est __COMDSPrpy_pitch_Est) 0.0)
    ((:gyro_pitch_Est __gyro_pitch_Est) 0.0)
    ((:COMDSPrpy_pitch_Meas __COMDSPrpy_pitch_Meas) 0.0)
    ((:gyro_pitch_Meas __gyro_pitch_Meas) 0.0)
    ((:gyro_pitch_Fil __gyro_pitch_Fil) 0.0)
    ((:CP_0 __CP_0) 0.0)
    ((:CP_1 __CP_1) 0.0)
    ((:CP_2 __CP_2) 0.0)
    ((:CP_3 __CP_3) 0.0)
    )
   (send-super :init)
   (setq _IMUorientation __IMUorientation)
   (setq _IMUgyro __IMUgyro)
   (setq _COMLSSP __COMLSSP)
   (setq _COMRSSP __COMRSSP)
   (setq _COMDSP __COMDSP)
   (setq _COMLSSPrpy __COMLSSPrpy)
   (setq _COMRSSPrpy __COMRSSPrpy)
   (setq _COMDSPrpy __COMDSPrpy)
   (setq _ZMPLSSP __ZMPLSSP)
   (setq _ZMPRSSP __ZMPRSSP)
   (setq _ZMPDSP __ZMPDSP)
   (setq _LAnklePitch_velocityNow (float __LAnklePitch_velocityNow))
   (setq _LAnklePitch_positionIK (float __LAnklePitch_positionIK))
   (setq _LAnklePitch_positionNow (float __LAnklePitch_positionNow))
   (setq _LAnklePitch_refPosFromPos (float __LAnklePitch_refPosFromPos))
   (setq _RAnklePitch_velocityNow (float __RAnklePitch_velocityNow))
   (setq _RAnklePitch_positionIK (float __RAnklePitch_positionIK))
   (setq _RAnklePitch_positionNow (float __RAnklePitch_positionNow))
   (setq _RAnklePitch_refPosFromPos (float __RAnklePitch_refPosFromPos))
   (setq _COMDSPrpy_pitch_Est (float __COMDSPrpy_pitch_Est))
   (setq _gyro_pitch_Est (float __gyro_pitch_Est))
   (setq _COMDSPrpy_pitch_Meas (float __COMDSPrpy_pitch_Meas))
   (setq _gyro_pitch_Meas (float __gyro_pitch_Meas))
   (setq _gyro_pitch_Fil (float __gyro_pitch_Fil))
   (setq _CP_0 (float __CP_0))
   (setq _CP_1 (float __CP_1))
   (setq _CP_2 (float __CP_2))
   (setq _CP_3 (float __CP_3))
   self)
  (:IMUorientation
   (&rest __IMUorientation)
   (if (keywordp (car __IMUorientation))
       (send* _IMUorientation __IMUorientation)
     (progn
       (if __IMUorientation (setq _IMUorientation (car __IMUorientation)))
       _IMUorientation)))
  (:IMUgyro
   (&rest __IMUgyro)
   (if (keywordp (car __IMUgyro))
       (send* _IMUgyro __IMUgyro)
     (progn
       (if __IMUgyro (setq _IMUgyro (car __IMUgyro)))
       _IMUgyro)))
  (:COMLSSP
   (&rest __COMLSSP)
   (if (keywordp (car __COMLSSP))
       (send* _COMLSSP __COMLSSP)
     (progn
       (if __COMLSSP (setq _COMLSSP (car __COMLSSP)))
       _COMLSSP)))
  (:COMRSSP
   (&rest __COMRSSP)
   (if (keywordp (car __COMRSSP))
       (send* _COMRSSP __COMRSSP)
     (progn
       (if __COMRSSP (setq _COMRSSP (car __COMRSSP)))
       _COMRSSP)))
  (:COMDSP
   (&rest __COMDSP)
   (if (keywordp (car __COMDSP))
       (send* _COMDSP __COMDSP)
     (progn
       (if __COMDSP (setq _COMDSP (car __COMDSP)))
       _COMDSP)))
  (:COMLSSPrpy
   (&rest __COMLSSPrpy)
   (if (keywordp (car __COMLSSPrpy))
       (send* _COMLSSPrpy __COMLSSPrpy)
     (progn
       (if __COMLSSPrpy (setq _COMLSSPrpy (car __COMLSSPrpy)))
       _COMLSSPrpy)))
  (:COMRSSPrpy
   (&rest __COMRSSPrpy)
   (if (keywordp (car __COMRSSPrpy))
       (send* _COMRSSPrpy __COMRSSPrpy)
     (progn
       (if __COMRSSPrpy (setq _COMRSSPrpy (car __COMRSSPrpy)))
       _COMRSSPrpy)))
  (:COMDSPrpy
   (&rest __COMDSPrpy)
   (if (keywordp (car __COMDSPrpy))
       (send* _COMDSPrpy __COMDSPrpy)
     (progn
       (if __COMDSPrpy (setq _COMDSPrpy (car __COMDSPrpy)))
       _COMDSPrpy)))
  (:ZMPLSSP
   (&rest __ZMPLSSP)
   (if (keywordp (car __ZMPLSSP))
       (send* _ZMPLSSP __ZMPLSSP)
     (progn
       (if __ZMPLSSP (setq _ZMPLSSP (car __ZMPLSSP)))
       _ZMPLSSP)))
  (:ZMPRSSP
   (&rest __ZMPRSSP)
   (if (keywordp (car __ZMPRSSP))
       (send* _ZMPRSSP __ZMPRSSP)
     (progn
       (if __ZMPRSSP (setq _ZMPRSSP (car __ZMPRSSP)))
       _ZMPRSSP)))
  (:ZMPDSP
   (&rest __ZMPDSP)
   (if (keywordp (car __ZMPDSP))
       (send* _ZMPDSP __ZMPDSP)
     (progn
       (if __ZMPDSP (setq _ZMPDSP (car __ZMPDSP)))
       _ZMPDSP)))
  (:LAnklePitch_velocityNow
   (&optional __LAnklePitch_velocityNow)
   (if __LAnklePitch_velocityNow (setq _LAnklePitch_velocityNow __LAnklePitch_velocityNow)) _LAnklePitch_velocityNow)
  (:LAnklePitch_positionIK
   (&optional __LAnklePitch_positionIK)
   (if __LAnklePitch_positionIK (setq _LAnklePitch_positionIK __LAnklePitch_positionIK)) _LAnklePitch_positionIK)
  (:LAnklePitch_positionNow
   (&optional __LAnklePitch_positionNow)
   (if __LAnklePitch_positionNow (setq _LAnklePitch_positionNow __LAnklePitch_positionNow)) _LAnklePitch_positionNow)
  (:LAnklePitch_refPosFromPos
   (&optional __LAnklePitch_refPosFromPos)
   (if __LAnklePitch_refPosFromPos (setq _LAnklePitch_refPosFromPos __LAnklePitch_refPosFromPos)) _LAnklePitch_refPosFromPos)
  (:RAnklePitch_velocityNow
   (&optional __RAnklePitch_velocityNow)
   (if __RAnklePitch_velocityNow (setq _RAnklePitch_velocityNow __RAnklePitch_velocityNow)) _RAnklePitch_velocityNow)
  (:RAnklePitch_positionIK
   (&optional __RAnklePitch_positionIK)
   (if __RAnklePitch_positionIK (setq _RAnklePitch_positionIK __RAnklePitch_positionIK)) _RAnklePitch_positionIK)
  (:RAnklePitch_positionNow
   (&optional __RAnklePitch_positionNow)
   (if __RAnklePitch_positionNow (setq _RAnklePitch_positionNow __RAnklePitch_positionNow)) _RAnklePitch_positionNow)
  (:RAnklePitch_refPosFromPos
   (&optional __RAnklePitch_refPosFromPos)
   (if __RAnklePitch_refPosFromPos (setq _RAnklePitch_refPosFromPos __RAnklePitch_refPosFromPos)) _RAnklePitch_refPosFromPos)
  (:COMDSPrpy_pitch_Est
   (&optional __COMDSPrpy_pitch_Est)
   (if __COMDSPrpy_pitch_Est (setq _COMDSPrpy_pitch_Est __COMDSPrpy_pitch_Est)) _COMDSPrpy_pitch_Est)
  (:gyro_pitch_Est
   (&optional __gyro_pitch_Est)
   (if __gyro_pitch_Est (setq _gyro_pitch_Est __gyro_pitch_Est)) _gyro_pitch_Est)
  (:COMDSPrpy_pitch_Meas
   (&optional __COMDSPrpy_pitch_Meas)
   (if __COMDSPrpy_pitch_Meas (setq _COMDSPrpy_pitch_Meas __COMDSPrpy_pitch_Meas)) _COMDSPrpy_pitch_Meas)
  (:gyro_pitch_Meas
   (&optional __gyro_pitch_Meas)
   (if __gyro_pitch_Meas (setq _gyro_pitch_Meas __gyro_pitch_Meas)) _gyro_pitch_Meas)
  (:gyro_pitch_Fil
   (&optional __gyro_pitch_Fil)
   (if __gyro_pitch_Fil (setq _gyro_pitch_Fil __gyro_pitch_Fil)) _gyro_pitch_Fil)
  (:CP_0
   (&optional __CP_0)
   (if __CP_0 (setq _CP_0 __CP_0)) _CP_0)
  (:CP_1
   (&optional __CP_1)
   (if __CP_1 (setq _CP_1 __CP_1)) _CP_1)
  (:CP_2
   (&optional __CP_2)
   (if __CP_2 (setq _CP_2 __CP_2)) _CP_2)
  (:CP_3
   (&optional __CP_3)
   (if __CP_3 (setq _CP_3 __CP_3)) _CP_3)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _IMUorientation
    (send _IMUorientation :serialization-length)
    ;; geometry_msgs/Point _IMUgyro
    (send _IMUgyro :serialization-length)
    ;; geometry_msgs/Point _COMLSSP
    (send _COMLSSP :serialization-length)
    ;; geometry_msgs/Point _COMRSSP
    (send _COMRSSP :serialization-length)
    ;; geometry_msgs/Point _COMDSP
    (send _COMDSP :serialization-length)
    ;; geometry_msgs/Point _COMLSSPrpy
    (send _COMLSSPrpy :serialization-length)
    ;; geometry_msgs/Point _COMRSSPrpy
    (send _COMRSSPrpy :serialization-length)
    ;; geometry_msgs/Point _COMDSPrpy
    (send _COMDSPrpy :serialization-length)
    ;; geometry_msgs/Point _ZMPLSSP
    (send _ZMPLSSP :serialization-length)
    ;; geometry_msgs/Point _ZMPRSSP
    (send _ZMPRSSP :serialization-length)
    ;; geometry_msgs/Point _ZMPDSP
    (send _ZMPDSP :serialization-length)
    ;; float32 _LAnklePitch_velocityNow
    4
    ;; float32 _LAnklePitch_positionIK
    4
    ;; float32 _LAnklePitch_positionNow
    4
    ;; float32 _LAnklePitch_refPosFromPos
    4
    ;; float32 _RAnklePitch_velocityNow
    4
    ;; float32 _RAnklePitch_positionIK
    4
    ;; float32 _RAnklePitch_positionNow
    4
    ;; float32 _RAnklePitch_refPosFromPos
    4
    ;; float32 _COMDSPrpy_pitch_Est
    4
    ;; float32 _gyro_pitch_Est
    4
    ;; float32 _COMDSPrpy_pitch_Meas
    4
    ;; float32 _gyro_pitch_Meas
    4
    ;; float32 _gyro_pitch_Fil
    4
    ;; float32 _CP_0
    4
    ;; float32 _CP_1
    4
    ;; float32 _CP_2
    4
    ;; float32 _CP_3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _IMUorientation
       (send _IMUorientation :serialize s)
     ;; geometry_msgs/Point _IMUgyro
       (send _IMUgyro :serialize s)
     ;; geometry_msgs/Point _COMLSSP
       (send _COMLSSP :serialize s)
     ;; geometry_msgs/Point _COMRSSP
       (send _COMRSSP :serialize s)
     ;; geometry_msgs/Point _COMDSP
       (send _COMDSP :serialize s)
     ;; geometry_msgs/Point _COMLSSPrpy
       (send _COMLSSPrpy :serialize s)
     ;; geometry_msgs/Point _COMRSSPrpy
       (send _COMRSSPrpy :serialize s)
     ;; geometry_msgs/Point _COMDSPrpy
       (send _COMDSPrpy :serialize s)
     ;; geometry_msgs/Point _ZMPLSSP
       (send _ZMPLSSP :serialize s)
     ;; geometry_msgs/Point _ZMPRSSP
       (send _ZMPRSSP :serialize s)
     ;; geometry_msgs/Point _ZMPDSP
       (send _ZMPDSP :serialize s)
     ;; float32 _LAnklePitch_velocityNow
       (sys::poke _LAnklePitch_velocityNow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LAnklePitch_positionIK
       (sys::poke _LAnklePitch_positionIK (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LAnklePitch_positionNow
       (sys::poke _LAnklePitch_positionNow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LAnklePitch_refPosFromPos
       (sys::poke _LAnklePitch_refPosFromPos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RAnklePitch_velocityNow
       (sys::poke _RAnklePitch_velocityNow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RAnklePitch_positionIK
       (sys::poke _RAnklePitch_positionIK (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RAnklePitch_positionNow
       (sys::poke _RAnklePitch_positionNow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RAnklePitch_refPosFromPos
       (sys::poke _RAnklePitch_refPosFromPos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _COMDSPrpy_pitch_Est
       (sys::poke _COMDSPrpy_pitch_Est (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_pitch_Est
       (sys::poke _gyro_pitch_Est (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _COMDSPrpy_pitch_Meas
       (sys::poke _COMDSPrpy_pitch_Meas (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_pitch_Meas
       (sys::poke _gyro_pitch_Meas (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_pitch_Fil
       (sys::poke _gyro_pitch_Fil (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CP_0
       (sys::poke _CP_0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CP_1
       (sys::poke _CP_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CP_2
       (sys::poke _CP_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CP_3
       (sys::poke _CP_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _IMUorientation
     (send _IMUorientation :deserialize buf ptr-) (incf ptr- (send _IMUorientation :serialization-length))
   ;; geometry_msgs/Point _IMUgyro
     (send _IMUgyro :deserialize buf ptr-) (incf ptr- (send _IMUgyro :serialization-length))
   ;; geometry_msgs/Point _COMLSSP
     (send _COMLSSP :deserialize buf ptr-) (incf ptr- (send _COMLSSP :serialization-length))
   ;; geometry_msgs/Point _COMRSSP
     (send _COMRSSP :deserialize buf ptr-) (incf ptr- (send _COMRSSP :serialization-length))
   ;; geometry_msgs/Point _COMDSP
     (send _COMDSP :deserialize buf ptr-) (incf ptr- (send _COMDSP :serialization-length))
   ;; geometry_msgs/Point _COMLSSPrpy
     (send _COMLSSPrpy :deserialize buf ptr-) (incf ptr- (send _COMLSSPrpy :serialization-length))
   ;; geometry_msgs/Point _COMRSSPrpy
     (send _COMRSSPrpy :deserialize buf ptr-) (incf ptr- (send _COMRSSPrpy :serialization-length))
   ;; geometry_msgs/Point _COMDSPrpy
     (send _COMDSPrpy :deserialize buf ptr-) (incf ptr- (send _COMDSPrpy :serialization-length))
   ;; geometry_msgs/Point _ZMPLSSP
     (send _ZMPLSSP :deserialize buf ptr-) (incf ptr- (send _ZMPLSSP :serialization-length))
   ;; geometry_msgs/Point _ZMPRSSP
     (send _ZMPRSSP :deserialize buf ptr-) (incf ptr- (send _ZMPRSSP :serialization-length))
   ;; geometry_msgs/Point _ZMPDSP
     (send _ZMPDSP :deserialize buf ptr-) (incf ptr- (send _ZMPDSP :serialization-length))
   ;; float32 _LAnklePitch_velocityNow
     (setq _LAnklePitch_velocityNow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LAnklePitch_positionIK
     (setq _LAnklePitch_positionIK (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LAnklePitch_positionNow
     (setq _LAnklePitch_positionNow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LAnklePitch_refPosFromPos
     (setq _LAnklePitch_refPosFromPos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RAnklePitch_velocityNow
     (setq _RAnklePitch_velocityNow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RAnklePitch_positionIK
     (setq _RAnklePitch_positionIK (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RAnklePitch_positionNow
     (setq _RAnklePitch_positionNow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RAnklePitch_refPosFromPos
     (setq _RAnklePitch_refPosFromPos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _COMDSPrpy_pitch_Est
     (setq _COMDSPrpy_pitch_Est (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_pitch_Est
     (setq _gyro_pitch_Est (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _COMDSPrpy_pitch_Meas
     (setq _COMDSPrpy_pitch_Meas (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_pitch_Meas
     (setq _gyro_pitch_Meas (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_pitch_Fil
     (setq _gyro_pitch_Fil (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CP_0
     (setq _CP_0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CP_1
     (setq _CP_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CP_2
     (setq _CP_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CP_3
     (setq _CP_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get densis_msgs::densis :md5sum-) "ff16778aedf270b756c96df44fa2eccc")
(setf (get densis_msgs::densis :datatype-) "densis_msgs/densis")
(setf (get densis_msgs::densis :definition-)
      "geometry_msgs/Point IMUorientation
geometry_msgs/Point IMUgyro
geometry_msgs/Point COMLSSP
geometry_msgs/Point COMRSSP
geometry_msgs/Point COMDSP
geometry_msgs/Point COMLSSPrpy
geometry_msgs/Point COMRSSPrpy
geometry_msgs/Point COMDSPrpy
geometry_msgs/Point ZMPLSSP
geometry_msgs/Point ZMPRSSP
geometry_msgs/Point ZMPDSP

#geometry_msgs/Transform LAnklePitch
#geometry_msgs/Transform RAnklePitch

float32 LAnklePitch_velocityNow  
float32 LAnklePitch_positionIK   
float32 LAnklePitch_positionNow  
float32 LAnklePitch_refPosFromPos 
float32 RAnklePitch_velocityNow  
float32 RAnklePitch_positionIK   
float32 RAnklePitch_positionNow 
float32 RAnklePitch_refPosFromPos

float32 COMDSPrpy_pitch_Est
float32 gyro_pitch_Est
float32 COMDSPrpy_pitch_Meas
float32 gyro_pitch_Meas
float32 gyro_pitch_Fil

float32 CP_0
float32 CP_1
float32 CP_2
float32 CP_3
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :densis_msgs/densis "ff16778aedf270b756c96df44fa2eccc")


