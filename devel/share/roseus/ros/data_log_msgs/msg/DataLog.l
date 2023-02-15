;; Auto-generated. Do not edit!


(when (boundp 'data_log_msgs::DataLog)
  (if (not (find-package "DATA_LOG_MSGS"))
    (make-package "DATA_LOG_MSGS"))
  (shadow 'DataLog (find-package "DATA_LOG_MSGS")))
(unless (find-package "DATA_LOG_MSGS::DATALOG")
  (make-package "DATA_LOG_MSGS::DATALOG"))

(in-package "ROS")
;;//! \htmlinclude DataLog.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass data_log_msgs::DataLog
  :super ros::object
  :slots (_RFootFK _LFootFK _TorsoFK _RFootIK _LFootIK _TorsoIK _IMUdegrees _baseInertia _LSSPInertia _RSSPInertia _DSPInertia _ZMPLSSP _ZMPRSSP _ZMPDSP _ZMPLSSP_accZ _ZMPRSSP_accZ _ZMPDSP_accZ _ZMPLSSP_estimate _ZMPRSSP_estimate _ZMPDSP_estimate _COMLSSPrpy _COMRSSPrpy _COMDSPrpy _accelFiltered _ZMPLSSP_accFil _ZMPRSSP_accFil _ZMPDSP_accFil _LAnklePitch_velocityNow _LAnklePitch_positionIK _LAnklePitch_positionNow _LAnklePitch_refPosFromPos _RAnklePitch_velocityNow _RAnklePitch_positionIK _RAnklePitch_positionNow _RAnklePitch_refPosFromPos ))

(defmethod data_log_msgs::DataLog
  (:init
   (&key
    ((:RFootFK __RFootFK) (instance geometry_msgs::Pose :init))
    ((:LFootFK __LFootFK) (instance geometry_msgs::Pose :init))
    ((:TorsoFK __TorsoFK) (instance geometry_msgs::Pose :init))
    ((:RFootIK __RFootIK) (instance geometry_msgs::Pose :init))
    ((:LFootIK __LFootIK) (instance geometry_msgs::Pose :init))
    ((:TorsoIK __TorsoIK) (instance geometry_msgs::Pose :init))
    ((:IMUdegrees __IMUdegrees) (instance geometry_msgs::Point :init))
    ((:baseInertia __baseInertia) (instance geometry_msgs::Inertia :init))
    ((:LSSPInertia __LSSPInertia) (instance geometry_msgs::Inertia :init))
    ((:RSSPInertia __RSSPInertia) (instance geometry_msgs::Inertia :init))
    ((:DSPInertia __DSPInertia) (instance geometry_msgs::Inertia :init))
    ((:ZMPLSSP __ZMPLSSP) (instance geometry_msgs::Point :init))
    ((:ZMPRSSP __ZMPRSSP) (instance geometry_msgs::Point :init))
    ((:ZMPDSP __ZMPDSP) (instance geometry_msgs::Point :init))
    ((:ZMPLSSP_accZ __ZMPLSSP_accZ) (instance geometry_msgs::Point :init))
    ((:ZMPRSSP_accZ __ZMPRSSP_accZ) (instance geometry_msgs::Point :init))
    ((:ZMPDSP_accZ __ZMPDSP_accZ) (instance geometry_msgs::Point :init))
    ((:ZMPLSSP_estimate __ZMPLSSP_estimate) (instance geometry_msgs::Point :init))
    ((:ZMPRSSP_estimate __ZMPRSSP_estimate) (instance geometry_msgs::Point :init))
    ((:ZMPDSP_estimate __ZMPDSP_estimate) (instance geometry_msgs::Point :init))
    ((:COMLSSPrpy __COMLSSPrpy) (instance geometry_msgs::Point :init))
    ((:COMRSSPrpy __COMRSSPrpy) (instance geometry_msgs::Point :init))
    ((:COMDSPrpy __COMDSPrpy) (instance geometry_msgs::Point :init))
    ((:accelFiltered __accelFiltered) (instance geometry_msgs::Point :init))
    ((:ZMPLSSP_accFil __ZMPLSSP_accFil) (instance geometry_msgs::Point :init))
    ((:ZMPRSSP_accFil __ZMPRSSP_accFil) (instance geometry_msgs::Point :init))
    ((:ZMPDSP_accFil __ZMPDSP_accFil) (instance geometry_msgs::Point :init))
    ((:LAnklePitch_velocityNow __LAnklePitch_velocityNow) 0.0)
    ((:LAnklePitch_positionIK __LAnklePitch_positionIK) 0.0)
    ((:LAnklePitch_positionNow __LAnklePitch_positionNow) 0.0)
    ((:LAnklePitch_refPosFromPos __LAnklePitch_refPosFromPos) 0.0)
    ((:RAnklePitch_velocityNow __RAnklePitch_velocityNow) 0.0)
    ((:RAnklePitch_positionIK __RAnklePitch_positionIK) 0.0)
    ((:RAnklePitch_positionNow __RAnklePitch_positionNow) 0.0)
    ((:RAnklePitch_refPosFromPos __RAnklePitch_refPosFromPos) 0.0)
    )
   (send-super :init)
   (setq _RFootFK __RFootFK)
   (setq _LFootFK __LFootFK)
   (setq _TorsoFK __TorsoFK)
   (setq _RFootIK __RFootIK)
   (setq _LFootIK __LFootIK)
   (setq _TorsoIK __TorsoIK)
   (setq _IMUdegrees __IMUdegrees)
   (setq _baseInertia __baseInertia)
   (setq _LSSPInertia __LSSPInertia)
   (setq _RSSPInertia __RSSPInertia)
   (setq _DSPInertia __DSPInertia)
   (setq _ZMPLSSP __ZMPLSSP)
   (setq _ZMPRSSP __ZMPRSSP)
   (setq _ZMPDSP __ZMPDSP)
   (setq _ZMPLSSP_accZ __ZMPLSSP_accZ)
   (setq _ZMPRSSP_accZ __ZMPRSSP_accZ)
   (setq _ZMPDSP_accZ __ZMPDSP_accZ)
   (setq _ZMPLSSP_estimate __ZMPLSSP_estimate)
   (setq _ZMPRSSP_estimate __ZMPRSSP_estimate)
   (setq _ZMPDSP_estimate __ZMPDSP_estimate)
   (setq _COMLSSPrpy __COMLSSPrpy)
   (setq _COMRSSPrpy __COMRSSPrpy)
   (setq _COMDSPrpy __COMDSPrpy)
   (setq _accelFiltered __accelFiltered)
   (setq _ZMPLSSP_accFil __ZMPLSSP_accFil)
   (setq _ZMPRSSP_accFil __ZMPRSSP_accFil)
   (setq _ZMPDSP_accFil __ZMPDSP_accFil)
   (setq _LAnklePitch_velocityNow (float __LAnklePitch_velocityNow))
   (setq _LAnklePitch_positionIK (float __LAnklePitch_positionIK))
   (setq _LAnklePitch_positionNow (float __LAnklePitch_positionNow))
   (setq _LAnklePitch_refPosFromPos (float __LAnklePitch_refPosFromPos))
   (setq _RAnklePitch_velocityNow (float __RAnklePitch_velocityNow))
   (setq _RAnklePitch_positionIK (float __RAnklePitch_positionIK))
   (setq _RAnklePitch_positionNow (float __RAnklePitch_positionNow))
   (setq _RAnklePitch_refPosFromPos (float __RAnklePitch_refPosFromPos))
   self)
  (:RFootFK
   (&rest __RFootFK)
   (if (keywordp (car __RFootFK))
       (send* _RFootFK __RFootFK)
     (progn
       (if __RFootFK (setq _RFootFK (car __RFootFK)))
       _RFootFK)))
  (:LFootFK
   (&rest __LFootFK)
   (if (keywordp (car __LFootFK))
       (send* _LFootFK __LFootFK)
     (progn
       (if __LFootFK (setq _LFootFK (car __LFootFK)))
       _LFootFK)))
  (:TorsoFK
   (&rest __TorsoFK)
   (if (keywordp (car __TorsoFK))
       (send* _TorsoFK __TorsoFK)
     (progn
       (if __TorsoFK (setq _TorsoFK (car __TorsoFK)))
       _TorsoFK)))
  (:RFootIK
   (&rest __RFootIK)
   (if (keywordp (car __RFootIK))
       (send* _RFootIK __RFootIK)
     (progn
       (if __RFootIK (setq _RFootIK (car __RFootIK)))
       _RFootIK)))
  (:LFootIK
   (&rest __LFootIK)
   (if (keywordp (car __LFootIK))
       (send* _LFootIK __LFootIK)
     (progn
       (if __LFootIK (setq _LFootIK (car __LFootIK)))
       _LFootIK)))
  (:TorsoIK
   (&rest __TorsoIK)
   (if (keywordp (car __TorsoIK))
       (send* _TorsoIK __TorsoIK)
     (progn
       (if __TorsoIK (setq _TorsoIK (car __TorsoIK)))
       _TorsoIK)))
  (:IMUdegrees
   (&rest __IMUdegrees)
   (if (keywordp (car __IMUdegrees))
       (send* _IMUdegrees __IMUdegrees)
     (progn
       (if __IMUdegrees (setq _IMUdegrees (car __IMUdegrees)))
       _IMUdegrees)))
  (:baseInertia
   (&rest __baseInertia)
   (if (keywordp (car __baseInertia))
       (send* _baseInertia __baseInertia)
     (progn
       (if __baseInertia (setq _baseInertia (car __baseInertia)))
       _baseInertia)))
  (:LSSPInertia
   (&rest __LSSPInertia)
   (if (keywordp (car __LSSPInertia))
       (send* _LSSPInertia __LSSPInertia)
     (progn
       (if __LSSPInertia (setq _LSSPInertia (car __LSSPInertia)))
       _LSSPInertia)))
  (:RSSPInertia
   (&rest __RSSPInertia)
   (if (keywordp (car __RSSPInertia))
       (send* _RSSPInertia __RSSPInertia)
     (progn
       (if __RSSPInertia (setq _RSSPInertia (car __RSSPInertia)))
       _RSSPInertia)))
  (:DSPInertia
   (&rest __DSPInertia)
   (if (keywordp (car __DSPInertia))
       (send* _DSPInertia __DSPInertia)
     (progn
       (if __DSPInertia (setq _DSPInertia (car __DSPInertia)))
       _DSPInertia)))
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
  (:ZMPLSSP_accZ
   (&rest __ZMPLSSP_accZ)
   (if (keywordp (car __ZMPLSSP_accZ))
       (send* _ZMPLSSP_accZ __ZMPLSSP_accZ)
     (progn
       (if __ZMPLSSP_accZ (setq _ZMPLSSP_accZ (car __ZMPLSSP_accZ)))
       _ZMPLSSP_accZ)))
  (:ZMPRSSP_accZ
   (&rest __ZMPRSSP_accZ)
   (if (keywordp (car __ZMPRSSP_accZ))
       (send* _ZMPRSSP_accZ __ZMPRSSP_accZ)
     (progn
       (if __ZMPRSSP_accZ (setq _ZMPRSSP_accZ (car __ZMPRSSP_accZ)))
       _ZMPRSSP_accZ)))
  (:ZMPDSP_accZ
   (&rest __ZMPDSP_accZ)
   (if (keywordp (car __ZMPDSP_accZ))
       (send* _ZMPDSP_accZ __ZMPDSP_accZ)
     (progn
       (if __ZMPDSP_accZ (setq _ZMPDSP_accZ (car __ZMPDSP_accZ)))
       _ZMPDSP_accZ)))
  (:ZMPLSSP_estimate
   (&rest __ZMPLSSP_estimate)
   (if (keywordp (car __ZMPLSSP_estimate))
       (send* _ZMPLSSP_estimate __ZMPLSSP_estimate)
     (progn
       (if __ZMPLSSP_estimate (setq _ZMPLSSP_estimate (car __ZMPLSSP_estimate)))
       _ZMPLSSP_estimate)))
  (:ZMPRSSP_estimate
   (&rest __ZMPRSSP_estimate)
   (if (keywordp (car __ZMPRSSP_estimate))
       (send* _ZMPRSSP_estimate __ZMPRSSP_estimate)
     (progn
       (if __ZMPRSSP_estimate (setq _ZMPRSSP_estimate (car __ZMPRSSP_estimate)))
       _ZMPRSSP_estimate)))
  (:ZMPDSP_estimate
   (&rest __ZMPDSP_estimate)
   (if (keywordp (car __ZMPDSP_estimate))
       (send* _ZMPDSP_estimate __ZMPDSP_estimate)
     (progn
       (if __ZMPDSP_estimate (setq _ZMPDSP_estimate (car __ZMPDSP_estimate)))
       _ZMPDSP_estimate)))
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
  (:accelFiltered
   (&rest __accelFiltered)
   (if (keywordp (car __accelFiltered))
       (send* _accelFiltered __accelFiltered)
     (progn
       (if __accelFiltered (setq _accelFiltered (car __accelFiltered)))
       _accelFiltered)))
  (:ZMPLSSP_accFil
   (&rest __ZMPLSSP_accFil)
   (if (keywordp (car __ZMPLSSP_accFil))
       (send* _ZMPLSSP_accFil __ZMPLSSP_accFil)
     (progn
       (if __ZMPLSSP_accFil (setq _ZMPLSSP_accFil (car __ZMPLSSP_accFil)))
       _ZMPLSSP_accFil)))
  (:ZMPRSSP_accFil
   (&rest __ZMPRSSP_accFil)
   (if (keywordp (car __ZMPRSSP_accFil))
       (send* _ZMPRSSP_accFil __ZMPRSSP_accFil)
     (progn
       (if __ZMPRSSP_accFil (setq _ZMPRSSP_accFil (car __ZMPRSSP_accFil)))
       _ZMPRSSP_accFil)))
  (:ZMPDSP_accFil
   (&rest __ZMPDSP_accFil)
   (if (keywordp (car __ZMPDSP_accFil))
       (send* _ZMPDSP_accFil __ZMPDSP_accFil)
     (progn
       (if __ZMPDSP_accFil (setq _ZMPDSP_accFil (car __ZMPDSP_accFil)))
       _ZMPDSP_accFil)))
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
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _RFootFK
    (send _RFootFK :serialization-length)
    ;; geometry_msgs/Pose _LFootFK
    (send _LFootFK :serialization-length)
    ;; geometry_msgs/Pose _TorsoFK
    (send _TorsoFK :serialization-length)
    ;; geometry_msgs/Pose _RFootIK
    (send _RFootIK :serialization-length)
    ;; geometry_msgs/Pose _LFootIK
    (send _LFootIK :serialization-length)
    ;; geometry_msgs/Pose _TorsoIK
    (send _TorsoIK :serialization-length)
    ;; geometry_msgs/Point _IMUdegrees
    (send _IMUdegrees :serialization-length)
    ;; geometry_msgs/Inertia _baseInertia
    (send _baseInertia :serialization-length)
    ;; geometry_msgs/Inertia _LSSPInertia
    (send _LSSPInertia :serialization-length)
    ;; geometry_msgs/Inertia _RSSPInertia
    (send _RSSPInertia :serialization-length)
    ;; geometry_msgs/Inertia _DSPInertia
    (send _DSPInertia :serialization-length)
    ;; geometry_msgs/Point _ZMPLSSP
    (send _ZMPLSSP :serialization-length)
    ;; geometry_msgs/Point _ZMPRSSP
    (send _ZMPRSSP :serialization-length)
    ;; geometry_msgs/Point _ZMPDSP
    (send _ZMPDSP :serialization-length)
    ;; geometry_msgs/Point _ZMPLSSP_accZ
    (send _ZMPLSSP_accZ :serialization-length)
    ;; geometry_msgs/Point _ZMPRSSP_accZ
    (send _ZMPRSSP_accZ :serialization-length)
    ;; geometry_msgs/Point _ZMPDSP_accZ
    (send _ZMPDSP_accZ :serialization-length)
    ;; geometry_msgs/Point _ZMPLSSP_estimate
    (send _ZMPLSSP_estimate :serialization-length)
    ;; geometry_msgs/Point _ZMPRSSP_estimate
    (send _ZMPRSSP_estimate :serialization-length)
    ;; geometry_msgs/Point _ZMPDSP_estimate
    (send _ZMPDSP_estimate :serialization-length)
    ;; geometry_msgs/Point _COMLSSPrpy
    (send _COMLSSPrpy :serialization-length)
    ;; geometry_msgs/Point _COMRSSPrpy
    (send _COMRSSPrpy :serialization-length)
    ;; geometry_msgs/Point _COMDSPrpy
    (send _COMDSPrpy :serialization-length)
    ;; geometry_msgs/Point _accelFiltered
    (send _accelFiltered :serialization-length)
    ;; geometry_msgs/Point _ZMPLSSP_accFil
    (send _ZMPLSSP_accFil :serialization-length)
    ;; geometry_msgs/Point _ZMPRSSP_accFil
    (send _ZMPRSSP_accFil :serialization-length)
    ;; geometry_msgs/Point _ZMPDSP_accFil
    (send _ZMPDSP_accFil :serialization-length)
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
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _RFootFK
       (send _RFootFK :serialize s)
     ;; geometry_msgs/Pose _LFootFK
       (send _LFootFK :serialize s)
     ;; geometry_msgs/Pose _TorsoFK
       (send _TorsoFK :serialize s)
     ;; geometry_msgs/Pose _RFootIK
       (send _RFootIK :serialize s)
     ;; geometry_msgs/Pose _LFootIK
       (send _LFootIK :serialize s)
     ;; geometry_msgs/Pose _TorsoIK
       (send _TorsoIK :serialize s)
     ;; geometry_msgs/Point _IMUdegrees
       (send _IMUdegrees :serialize s)
     ;; geometry_msgs/Inertia _baseInertia
       (send _baseInertia :serialize s)
     ;; geometry_msgs/Inertia _LSSPInertia
       (send _LSSPInertia :serialize s)
     ;; geometry_msgs/Inertia _RSSPInertia
       (send _RSSPInertia :serialize s)
     ;; geometry_msgs/Inertia _DSPInertia
       (send _DSPInertia :serialize s)
     ;; geometry_msgs/Point _ZMPLSSP
       (send _ZMPLSSP :serialize s)
     ;; geometry_msgs/Point _ZMPRSSP
       (send _ZMPRSSP :serialize s)
     ;; geometry_msgs/Point _ZMPDSP
       (send _ZMPDSP :serialize s)
     ;; geometry_msgs/Point _ZMPLSSP_accZ
       (send _ZMPLSSP_accZ :serialize s)
     ;; geometry_msgs/Point _ZMPRSSP_accZ
       (send _ZMPRSSP_accZ :serialize s)
     ;; geometry_msgs/Point _ZMPDSP_accZ
       (send _ZMPDSP_accZ :serialize s)
     ;; geometry_msgs/Point _ZMPLSSP_estimate
       (send _ZMPLSSP_estimate :serialize s)
     ;; geometry_msgs/Point _ZMPRSSP_estimate
       (send _ZMPRSSP_estimate :serialize s)
     ;; geometry_msgs/Point _ZMPDSP_estimate
       (send _ZMPDSP_estimate :serialize s)
     ;; geometry_msgs/Point _COMLSSPrpy
       (send _COMLSSPrpy :serialize s)
     ;; geometry_msgs/Point _COMRSSPrpy
       (send _COMRSSPrpy :serialize s)
     ;; geometry_msgs/Point _COMDSPrpy
       (send _COMDSPrpy :serialize s)
     ;; geometry_msgs/Point _accelFiltered
       (send _accelFiltered :serialize s)
     ;; geometry_msgs/Point _ZMPLSSP_accFil
       (send _ZMPLSSP_accFil :serialize s)
     ;; geometry_msgs/Point _ZMPRSSP_accFil
       (send _ZMPRSSP_accFil :serialize s)
     ;; geometry_msgs/Point _ZMPDSP_accFil
       (send _ZMPDSP_accFil :serialize s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _RFootFK
     (send _RFootFK :deserialize buf ptr-) (incf ptr- (send _RFootFK :serialization-length))
   ;; geometry_msgs/Pose _LFootFK
     (send _LFootFK :deserialize buf ptr-) (incf ptr- (send _LFootFK :serialization-length))
   ;; geometry_msgs/Pose _TorsoFK
     (send _TorsoFK :deserialize buf ptr-) (incf ptr- (send _TorsoFK :serialization-length))
   ;; geometry_msgs/Pose _RFootIK
     (send _RFootIK :deserialize buf ptr-) (incf ptr- (send _RFootIK :serialization-length))
   ;; geometry_msgs/Pose _LFootIK
     (send _LFootIK :deserialize buf ptr-) (incf ptr- (send _LFootIK :serialization-length))
   ;; geometry_msgs/Pose _TorsoIK
     (send _TorsoIK :deserialize buf ptr-) (incf ptr- (send _TorsoIK :serialization-length))
   ;; geometry_msgs/Point _IMUdegrees
     (send _IMUdegrees :deserialize buf ptr-) (incf ptr- (send _IMUdegrees :serialization-length))
   ;; geometry_msgs/Inertia _baseInertia
     (send _baseInertia :deserialize buf ptr-) (incf ptr- (send _baseInertia :serialization-length))
   ;; geometry_msgs/Inertia _LSSPInertia
     (send _LSSPInertia :deserialize buf ptr-) (incf ptr- (send _LSSPInertia :serialization-length))
   ;; geometry_msgs/Inertia _RSSPInertia
     (send _RSSPInertia :deserialize buf ptr-) (incf ptr- (send _RSSPInertia :serialization-length))
   ;; geometry_msgs/Inertia _DSPInertia
     (send _DSPInertia :deserialize buf ptr-) (incf ptr- (send _DSPInertia :serialization-length))
   ;; geometry_msgs/Point _ZMPLSSP
     (send _ZMPLSSP :deserialize buf ptr-) (incf ptr- (send _ZMPLSSP :serialization-length))
   ;; geometry_msgs/Point _ZMPRSSP
     (send _ZMPRSSP :deserialize buf ptr-) (incf ptr- (send _ZMPRSSP :serialization-length))
   ;; geometry_msgs/Point _ZMPDSP
     (send _ZMPDSP :deserialize buf ptr-) (incf ptr- (send _ZMPDSP :serialization-length))
   ;; geometry_msgs/Point _ZMPLSSP_accZ
     (send _ZMPLSSP_accZ :deserialize buf ptr-) (incf ptr- (send _ZMPLSSP_accZ :serialization-length))
   ;; geometry_msgs/Point _ZMPRSSP_accZ
     (send _ZMPRSSP_accZ :deserialize buf ptr-) (incf ptr- (send _ZMPRSSP_accZ :serialization-length))
   ;; geometry_msgs/Point _ZMPDSP_accZ
     (send _ZMPDSP_accZ :deserialize buf ptr-) (incf ptr- (send _ZMPDSP_accZ :serialization-length))
   ;; geometry_msgs/Point _ZMPLSSP_estimate
     (send _ZMPLSSP_estimate :deserialize buf ptr-) (incf ptr- (send _ZMPLSSP_estimate :serialization-length))
   ;; geometry_msgs/Point _ZMPRSSP_estimate
     (send _ZMPRSSP_estimate :deserialize buf ptr-) (incf ptr- (send _ZMPRSSP_estimate :serialization-length))
   ;; geometry_msgs/Point _ZMPDSP_estimate
     (send _ZMPDSP_estimate :deserialize buf ptr-) (incf ptr- (send _ZMPDSP_estimate :serialization-length))
   ;; geometry_msgs/Point _COMLSSPrpy
     (send _COMLSSPrpy :deserialize buf ptr-) (incf ptr- (send _COMLSSPrpy :serialization-length))
   ;; geometry_msgs/Point _COMRSSPrpy
     (send _COMRSSPrpy :deserialize buf ptr-) (incf ptr- (send _COMRSSPrpy :serialization-length))
   ;; geometry_msgs/Point _COMDSPrpy
     (send _COMDSPrpy :deserialize buf ptr-) (incf ptr- (send _COMDSPrpy :serialization-length))
   ;; geometry_msgs/Point _accelFiltered
     (send _accelFiltered :deserialize buf ptr-) (incf ptr- (send _accelFiltered :serialization-length))
   ;; geometry_msgs/Point _ZMPLSSP_accFil
     (send _ZMPLSSP_accFil :deserialize buf ptr-) (incf ptr- (send _ZMPLSSP_accFil :serialization-length))
   ;; geometry_msgs/Point _ZMPRSSP_accFil
     (send _ZMPRSSP_accFil :deserialize buf ptr-) (incf ptr- (send _ZMPRSSP_accFil :serialization-length))
   ;; geometry_msgs/Point _ZMPDSP_accFil
     (send _ZMPDSP_accFil :deserialize buf ptr-) (incf ptr- (send _ZMPDSP_accFil :serialization-length))
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
   ;;
   self)
  )

(setf (get data_log_msgs::DataLog :md5sum-) "b0bcca581d42e749460a77b43b4c0423")
(setf (get data_log_msgs::DataLog :datatype-) "data_log_msgs/DataLog")
(setf (get data_log_msgs::DataLog :definition-)
      "#geometry_msgs/Point[] current_joint_msg
geometry_msgs/Pose RFootFK
geometry_msgs/Pose LFootFK
geometry_msgs/Pose TorsoFK
geometry_msgs/Pose RFootIK
geometry_msgs/Pose LFootIK
geometry_msgs/Pose TorsoIK
geometry_msgs/Point IMUdegrees
geometry_msgs/Inertia baseInertia
geometry_msgs/Inertia LSSPInertia
geometry_msgs/Inertia RSSPInertia
geometry_msgs/Inertia DSPInertia
geometry_msgs/Point ZMPLSSP
geometry_msgs/Point ZMPRSSP
geometry_msgs/Point ZMPDSP
geometry_msgs/Point ZMPLSSP_accZ
geometry_msgs/Point ZMPRSSP_accZ
geometry_msgs/Point ZMPDSP_accZ
geometry_msgs/Point ZMPLSSP_estimate
geometry_msgs/Point ZMPRSSP_estimate
geometry_msgs/Point ZMPDSP_estimate
geometry_msgs/Point COMLSSPrpy
geometry_msgs/Point COMRSSPrpy
geometry_msgs/Point COMDSPrpy
geometry_msgs/Point accelFiltered
geometry_msgs/Point ZMPLSSP_accFil
geometry_msgs/Point ZMPRSSP_accFil
geometry_msgs/Point ZMPDSP_accFil
#float32 LAnklePitch_torqueIn     
float32 LAnklePitch_velocityNow  
float32 LAnklePitch_positionIK   
float32 LAnklePitch_positionNow  
float32 LAnklePitch_refPosFromPos
float32 RAnklePitch_velocityNow  
float32 RAnklePitch_positionIK   
float32 RAnklePitch_positionNow 
float32 RAnklePitch_refPosFromPos
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Inertia
# Mass [kg]
float64 m

# Center of mass [m]
geometry_msgs/Vector3 com

# Inertia Tensor [kg-m^2]
#     | ixx ixy ixz |
# I = | ixy iyy iyz |
#     | ixz iyz izz |
float64 ixx
float64 ixy
float64 ixz
float64 iyy
float64 iyz
float64 izz

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :data_log_msgs/DataLog "b0bcca581d42e749460a77b43b4c0423")


