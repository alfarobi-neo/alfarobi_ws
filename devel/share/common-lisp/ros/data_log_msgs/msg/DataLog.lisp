; Auto-generated. Do not edit!


(cl:in-package data_log_msgs-msg)


;//! \htmlinclude DataLog.msg.html

(cl:defclass <DataLog> (roslisp-msg-protocol:ros-message)
  ((RFootFK
    :reader RFootFK
    :initarg :RFootFK
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (LFootFK
    :reader LFootFK
    :initarg :LFootFK
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (TorsoFK
    :reader TorsoFK
    :initarg :TorsoFK
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (RFootIK
    :reader RFootIK
    :initarg :RFootIK
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (LFootIK
    :reader LFootIK
    :initarg :LFootIK
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (TorsoIK
    :reader TorsoIK
    :initarg :TorsoIK
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (IMUdegrees
    :reader IMUdegrees
    :initarg :IMUdegrees
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (baseInertia
    :reader baseInertia
    :initarg :baseInertia
    :type geometry_msgs-msg:Inertia
    :initform (cl:make-instance 'geometry_msgs-msg:Inertia))
   (LSSPInertia
    :reader LSSPInertia
    :initarg :LSSPInertia
    :type geometry_msgs-msg:Inertia
    :initform (cl:make-instance 'geometry_msgs-msg:Inertia))
   (RSSPInertia
    :reader RSSPInertia
    :initarg :RSSPInertia
    :type geometry_msgs-msg:Inertia
    :initform (cl:make-instance 'geometry_msgs-msg:Inertia))
   (DSPInertia
    :reader DSPInertia
    :initarg :DSPInertia
    :type geometry_msgs-msg:Inertia
    :initform (cl:make-instance 'geometry_msgs-msg:Inertia))
   (ZMPLSSP
    :reader ZMPLSSP
    :initarg :ZMPLSSP
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPRSSP
    :reader ZMPRSSP
    :initarg :ZMPRSSP
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPDSP
    :reader ZMPDSP
    :initarg :ZMPDSP
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPLSSP_accZ
    :reader ZMPLSSP_accZ
    :initarg :ZMPLSSP_accZ
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPRSSP_accZ
    :reader ZMPRSSP_accZ
    :initarg :ZMPRSSP_accZ
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPDSP_accZ
    :reader ZMPDSP_accZ
    :initarg :ZMPDSP_accZ
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPLSSP_estimate
    :reader ZMPLSSP_estimate
    :initarg :ZMPLSSP_estimate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPRSSP_estimate
    :reader ZMPRSSP_estimate
    :initarg :ZMPRSSP_estimate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPDSP_estimate
    :reader ZMPDSP_estimate
    :initarg :ZMPDSP_estimate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (COMLSSPrpy
    :reader COMLSSPrpy
    :initarg :COMLSSPrpy
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (COMRSSPrpy
    :reader COMRSSPrpy
    :initarg :COMRSSPrpy
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (COMDSPrpy
    :reader COMDSPrpy
    :initarg :COMDSPrpy
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (accelFiltered
    :reader accelFiltered
    :initarg :accelFiltered
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPLSSP_accFil
    :reader ZMPLSSP_accFil
    :initarg :ZMPLSSP_accFil
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPRSSP_accFil
    :reader ZMPRSSP_accFil
    :initarg :ZMPRSSP_accFil
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ZMPDSP_accFil
    :reader ZMPDSP_accFil
    :initarg :ZMPDSP_accFil
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (LAnklePitch_velocityNow
    :reader LAnklePitch_velocityNow
    :initarg :LAnklePitch_velocityNow
    :type cl:float
    :initform 0.0)
   (LAnklePitch_positionIK
    :reader LAnklePitch_positionIK
    :initarg :LAnklePitch_positionIK
    :type cl:float
    :initform 0.0)
   (LAnklePitch_positionNow
    :reader LAnklePitch_positionNow
    :initarg :LAnklePitch_positionNow
    :type cl:float
    :initform 0.0)
   (LAnklePitch_refPosFromPos
    :reader LAnklePitch_refPosFromPos
    :initarg :LAnklePitch_refPosFromPos
    :type cl:float
    :initform 0.0)
   (RAnklePitch_velocityNow
    :reader RAnklePitch_velocityNow
    :initarg :RAnklePitch_velocityNow
    :type cl:float
    :initform 0.0)
   (RAnklePitch_positionIK
    :reader RAnklePitch_positionIK
    :initarg :RAnklePitch_positionIK
    :type cl:float
    :initform 0.0)
   (RAnklePitch_positionNow
    :reader RAnklePitch_positionNow
    :initarg :RAnklePitch_positionNow
    :type cl:float
    :initform 0.0)
   (RAnklePitch_refPosFromPos
    :reader RAnklePitch_refPosFromPos
    :initarg :RAnklePitch_refPosFromPos
    :type cl:float
    :initform 0.0))
)

(cl:defclass DataLog (<DataLog>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataLog>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataLog)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name data_log_msgs-msg:<DataLog> is deprecated: use data_log_msgs-msg:DataLog instead.")))

(cl:ensure-generic-function 'RFootFK-val :lambda-list '(m))
(cl:defmethod RFootFK-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:RFootFK-val is deprecated.  Use data_log_msgs-msg:RFootFK instead.")
  (RFootFK m))

(cl:ensure-generic-function 'LFootFK-val :lambda-list '(m))
(cl:defmethod LFootFK-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:LFootFK-val is deprecated.  Use data_log_msgs-msg:LFootFK instead.")
  (LFootFK m))

(cl:ensure-generic-function 'TorsoFK-val :lambda-list '(m))
(cl:defmethod TorsoFK-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:TorsoFK-val is deprecated.  Use data_log_msgs-msg:TorsoFK instead.")
  (TorsoFK m))

(cl:ensure-generic-function 'RFootIK-val :lambda-list '(m))
(cl:defmethod RFootIK-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:RFootIK-val is deprecated.  Use data_log_msgs-msg:RFootIK instead.")
  (RFootIK m))

(cl:ensure-generic-function 'LFootIK-val :lambda-list '(m))
(cl:defmethod LFootIK-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:LFootIK-val is deprecated.  Use data_log_msgs-msg:LFootIK instead.")
  (LFootIK m))

(cl:ensure-generic-function 'TorsoIK-val :lambda-list '(m))
(cl:defmethod TorsoIK-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:TorsoIK-val is deprecated.  Use data_log_msgs-msg:TorsoIK instead.")
  (TorsoIK m))

(cl:ensure-generic-function 'IMUdegrees-val :lambda-list '(m))
(cl:defmethod IMUdegrees-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:IMUdegrees-val is deprecated.  Use data_log_msgs-msg:IMUdegrees instead.")
  (IMUdegrees m))

(cl:ensure-generic-function 'baseInertia-val :lambda-list '(m))
(cl:defmethod baseInertia-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:baseInertia-val is deprecated.  Use data_log_msgs-msg:baseInertia instead.")
  (baseInertia m))

(cl:ensure-generic-function 'LSSPInertia-val :lambda-list '(m))
(cl:defmethod LSSPInertia-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:LSSPInertia-val is deprecated.  Use data_log_msgs-msg:LSSPInertia instead.")
  (LSSPInertia m))

(cl:ensure-generic-function 'RSSPInertia-val :lambda-list '(m))
(cl:defmethod RSSPInertia-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:RSSPInertia-val is deprecated.  Use data_log_msgs-msg:RSSPInertia instead.")
  (RSSPInertia m))

(cl:ensure-generic-function 'DSPInertia-val :lambda-list '(m))
(cl:defmethod DSPInertia-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:DSPInertia-val is deprecated.  Use data_log_msgs-msg:DSPInertia instead.")
  (DSPInertia m))

(cl:ensure-generic-function 'ZMPLSSP-val :lambda-list '(m))
(cl:defmethod ZMPLSSP-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPLSSP-val is deprecated.  Use data_log_msgs-msg:ZMPLSSP instead.")
  (ZMPLSSP m))

(cl:ensure-generic-function 'ZMPRSSP-val :lambda-list '(m))
(cl:defmethod ZMPRSSP-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPRSSP-val is deprecated.  Use data_log_msgs-msg:ZMPRSSP instead.")
  (ZMPRSSP m))

(cl:ensure-generic-function 'ZMPDSP-val :lambda-list '(m))
(cl:defmethod ZMPDSP-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPDSP-val is deprecated.  Use data_log_msgs-msg:ZMPDSP instead.")
  (ZMPDSP m))

(cl:ensure-generic-function 'ZMPLSSP_accZ-val :lambda-list '(m))
(cl:defmethod ZMPLSSP_accZ-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPLSSP_accZ-val is deprecated.  Use data_log_msgs-msg:ZMPLSSP_accZ instead.")
  (ZMPLSSP_accZ m))

(cl:ensure-generic-function 'ZMPRSSP_accZ-val :lambda-list '(m))
(cl:defmethod ZMPRSSP_accZ-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPRSSP_accZ-val is deprecated.  Use data_log_msgs-msg:ZMPRSSP_accZ instead.")
  (ZMPRSSP_accZ m))

(cl:ensure-generic-function 'ZMPDSP_accZ-val :lambda-list '(m))
(cl:defmethod ZMPDSP_accZ-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPDSP_accZ-val is deprecated.  Use data_log_msgs-msg:ZMPDSP_accZ instead.")
  (ZMPDSP_accZ m))

(cl:ensure-generic-function 'ZMPLSSP_estimate-val :lambda-list '(m))
(cl:defmethod ZMPLSSP_estimate-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPLSSP_estimate-val is deprecated.  Use data_log_msgs-msg:ZMPLSSP_estimate instead.")
  (ZMPLSSP_estimate m))

(cl:ensure-generic-function 'ZMPRSSP_estimate-val :lambda-list '(m))
(cl:defmethod ZMPRSSP_estimate-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPRSSP_estimate-val is deprecated.  Use data_log_msgs-msg:ZMPRSSP_estimate instead.")
  (ZMPRSSP_estimate m))

(cl:ensure-generic-function 'ZMPDSP_estimate-val :lambda-list '(m))
(cl:defmethod ZMPDSP_estimate-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPDSP_estimate-val is deprecated.  Use data_log_msgs-msg:ZMPDSP_estimate instead.")
  (ZMPDSP_estimate m))

(cl:ensure-generic-function 'COMLSSPrpy-val :lambda-list '(m))
(cl:defmethod COMLSSPrpy-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:COMLSSPrpy-val is deprecated.  Use data_log_msgs-msg:COMLSSPrpy instead.")
  (COMLSSPrpy m))

(cl:ensure-generic-function 'COMRSSPrpy-val :lambda-list '(m))
(cl:defmethod COMRSSPrpy-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:COMRSSPrpy-val is deprecated.  Use data_log_msgs-msg:COMRSSPrpy instead.")
  (COMRSSPrpy m))

(cl:ensure-generic-function 'COMDSPrpy-val :lambda-list '(m))
(cl:defmethod COMDSPrpy-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:COMDSPrpy-val is deprecated.  Use data_log_msgs-msg:COMDSPrpy instead.")
  (COMDSPrpy m))

(cl:ensure-generic-function 'accelFiltered-val :lambda-list '(m))
(cl:defmethod accelFiltered-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:accelFiltered-val is deprecated.  Use data_log_msgs-msg:accelFiltered instead.")
  (accelFiltered m))

(cl:ensure-generic-function 'ZMPLSSP_accFil-val :lambda-list '(m))
(cl:defmethod ZMPLSSP_accFil-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPLSSP_accFil-val is deprecated.  Use data_log_msgs-msg:ZMPLSSP_accFil instead.")
  (ZMPLSSP_accFil m))

(cl:ensure-generic-function 'ZMPRSSP_accFil-val :lambda-list '(m))
(cl:defmethod ZMPRSSP_accFil-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPRSSP_accFil-val is deprecated.  Use data_log_msgs-msg:ZMPRSSP_accFil instead.")
  (ZMPRSSP_accFil m))

(cl:ensure-generic-function 'ZMPDSP_accFil-val :lambda-list '(m))
(cl:defmethod ZMPDSP_accFil-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:ZMPDSP_accFil-val is deprecated.  Use data_log_msgs-msg:ZMPDSP_accFil instead.")
  (ZMPDSP_accFil m))

(cl:ensure-generic-function 'LAnklePitch_velocityNow-val :lambda-list '(m))
(cl:defmethod LAnklePitch_velocityNow-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:LAnklePitch_velocityNow-val is deprecated.  Use data_log_msgs-msg:LAnklePitch_velocityNow instead.")
  (LAnklePitch_velocityNow m))

(cl:ensure-generic-function 'LAnklePitch_positionIK-val :lambda-list '(m))
(cl:defmethod LAnklePitch_positionIK-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:LAnklePitch_positionIK-val is deprecated.  Use data_log_msgs-msg:LAnklePitch_positionIK instead.")
  (LAnklePitch_positionIK m))

(cl:ensure-generic-function 'LAnklePitch_positionNow-val :lambda-list '(m))
(cl:defmethod LAnklePitch_positionNow-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:LAnklePitch_positionNow-val is deprecated.  Use data_log_msgs-msg:LAnklePitch_positionNow instead.")
  (LAnklePitch_positionNow m))

(cl:ensure-generic-function 'LAnklePitch_refPosFromPos-val :lambda-list '(m))
(cl:defmethod LAnklePitch_refPosFromPos-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:LAnklePitch_refPosFromPos-val is deprecated.  Use data_log_msgs-msg:LAnklePitch_refPosFromPos instead.")
  (LAnklePitch_refPosFromPos m))

(cl:ensure-generic-function 'RAnklePitch_velocityNow-val :lambda-list '(m))
(cl:defmethod RAnklePitch_velocityNow-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:RAnklePitch_velocityNow-val is deprecated.  Use data_log_msgs-msg:RAnklePitch_velocityNow instead.")
  (RAnklePitch_velocityNow m))

(cl:ensure-generic-function 'RAnklePitch_positionIK-val :lambda-list '(m))
(cl:defmethod RAnklePitch_positionIK-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:RAnklePitch_positionIK-val is deprecated.  Use data_log_msgs-msg:RAnklePitch_positionIK instead.")
  (RAnklePitch_positionIK m))

(cl:ensure-generic-function 'RAnklePitch_positionNow-val :lambda-list '(m))
(cl:defmethod RAnklePitch_positionNow-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:RAnklePitch_positionNow-val is deprecated.  Use data_log_msgs-msg:RAnklePitch_positionNow instead.")
  (RAnklePitch_positionNow m))

(cl:ensure-generic-function 'RAnklePitch_refPosFromPos-val :lambda-list '(m))
(cl:defmethod RAnklePitch_refPosFromPos-val ((m <DataLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_log_msgs-msg:RAnklePitch_refPosFromPos-val is deprecated.  Use data_log_msgs-msg:RAnklePitch_refPosFromPos instead.")
  (RAnklePitch_refPosFromPos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataLog>) ostream)
  "Serializes a message object of type '<DataLog>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RFootFK) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'LFootFK) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'TorsoFK) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RFootIK) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'LFootIK) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'TorsoIK) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'IMUdegrees) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'baseInertia) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'LSSPInertia) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RSSPInertia) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'DSPInertia) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPLSSP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPRSSP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPDSP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPLSSP_accZ) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPRSSP_accZ) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPDSP_accZ) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPLSSP_estimate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPRSSP_estimate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPDSP_estimate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMLSSPrpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMRSSPrpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMDSPrpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accelFiltered) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPLSSP_accFil) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPRSSP_accFil) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPDSP_accFil) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LAnklePitch_velocityNow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LAnklePitch_positionIK))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LAnklePitch_positionNow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LAnklePitch_refPosFromPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RAnklePitch_velocityNow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RAnklePitch_positionIK))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RAnklePitch_positionNow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RAnklePitch_refPosFromPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataLog>) istream)
  "Deserializes a message object of type '<DataLog>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RFootFK) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'LFootFK) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'TorsoFK) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RFootIK) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'LFootIK) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'TorsoIK) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'IMUdegrees) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'baseInertia) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'LSSPInertia) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RSSPInertia) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'DSPInertia) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPLSSP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPRSSP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPDSP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPLSSP_accZ) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPRSSP_accZ) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPDSP_accZ) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPLSSP_estimate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPRSSP_estimate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPDSP_estimate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMLSSPrpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMRSSPrpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMDSPrpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accelFiltered) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPLSSP_accFil) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPRSSP_accFil) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPDSP_accFil) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LAnklePitch_velocityNow) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LAnklePitch_positionIK) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LAnklePitch_positionNow) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LAnklePitch_refPosFromPos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RAnklePitch_velocityNow) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RAnklePitch_positionIK) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RAnklePitch_positionNow) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RAnklePitch_refPosFromPos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataLog>)))
  "Returns string type for a message object of type '<DataLog>"
  "data_log_msgs/DataLog")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataLog)))
  "Returns string type for a message object of type 'DataLog"
  "data_log_msgs/DataLog")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataLog>)))
  "Returns md5sum for a message object of type '<DataLog>"
  "b0bcca581d42e749460a77b43b4c0423")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataLog)))
  "Returns md5sum for a message object of type 'DataLog"
  "b0bcca581d42e749460a77b43b4c0423")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataLog>)))
  "Returns full string definition for message of type '<DataLog>"
  (cl:format cl:nil "#geometry_msgs/Point[] current_joint_msg~%geometry_msgs/Pose RFootFK~%geometry_msgs/Pose LFootFK~%geometry_msgs/Pose TorsoFK~%geometry_msgs/Pose RFootIK~%geometry_msgs/Pose LFootIK~%geometry_msgs/Pose TorsoIK~%geometry_msgs/Point IMUdegrees~%geometry_msgs/Inertia baseInertia~%geometry_msgs/Inertia LSSPInertia~%geometry_msgs/Inertia RSSPInertia~%geometry_msgs/Inertia DSPInertia~%geometry_msgs/Point ZMPLSSP~%geometry_msgs/Point ZMPRSSP~%geometry_msgs/Point ZMPDSP~%geometry_msgs/Point ZMPLSSP_accZ~%geometry_msgs/Point ZMPRSSP_accZ~%geometry_msgs/Point ZMPDSP_accZ~%geometry_msgs/Point ZMPLSSP_estimate~%geometry_msgs/Point ZMPRSSP_estimate~%geometry_msgs/Point ZMPDSP_estimate~%geometry_msgs/Point COMLSSPrpy~%geometry_msgs/Point COMRSSPrpy~%geometry_msgs/Point COMDSPrpy~%geometry_msgs/Point accelFiltered~%geometry_msgs/Point ZMPLSSP_accFil~%geometry_msgs/Point ZMPRSSP_accFil~%geometry_msgs/Point ZMPDSP_accFil~%#float32 LAnklePitch_torqueIn     ~%float32 LAnklePitch_velocityNow  ~%float32 LAnklePitch_positionIK   ~%float32 LAnklePitch_positionNow  ~%float32 LAnklePitch_refPosFromPos~%float32 RAnklePitch_velocityNow  ~%float32 RAnklePitch_positionIK   ~%float32 RAnklePitch_positionNow ~%float32 RAnklePitch_refPosFromPos~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Inertia~%# Mass [kg]~%float64 m~%~%# Center of mass [m]~%geometry_msgs/Vector3 com~%~%# Inertia Tensor [kg-m^2]~%#     | ixx ixy ixz |~%# I = | ixy iyy iyz |~%#     | ixz iyz izz |~%float64 ixx~%float64 ixy~%float64 ixz~%float64 iyy~%float64 iyz~%float64 izz~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataLog)))
  "Returns full string definition for message of type 'DataLog"
  (cl:format cl:nil "#geometry_msgs/Point[] current_joint_msg~%geometry_msgs/Pose RFootFK~%geometry_msgs/Pose LFootFK~%geometry_msgs/Pose TorsoFK~%geometry_msgs/Pose RFootIK~%geometry_msgs/Pose LFootIK~%geometry_msgs/Pose TorsoIK~%geometry_msgs/Point IMUdegrees~%geometry_msgs/Inertia baseInertia~%geometry_msgs/Inertia LSSPInertia~%geometry_msgs/Inertia RSSPInertia~%geometry_msgs/Inertia DSPInertia~%geometry_msgs/Point ZMPLSSP~%geometry_msgs/Point ZMPRSSP~%geometry_msgs/Point ZMPDSP~%geometry_msgs/Point ZMPLSSP_accZ~%geometry_msgs/Point ZMPRSSP_accZ~%geometry_msgs/Point ZMPDSP_accZ~%geometry_msgs/Point ZMPLSSP_estimate~%geometry_msgs/Point ZMPRSSP_estimate~%geometry_msgs/Point ZMPDSP_estimate~%geometry_msgs/Point COMLSSPrpy~%geometry_msgs/Point COMRSSPrpy~%geometry_msgs/Point COMDSPrpy~%geometry_msgs/Point accelFiltered~%geometry_msgs/Point ZMPLSSP_accFil~%geometry_msgs/Point ZMPRSSP_accFil~%geometry_msgs/Point ZMPDSP_accFil~%#float32 LAnklePitch_torqueIn     ~%float32 LAnklePitch_velocityNow  ~%float32 LAnklePitch_positionIK   ~%float32 LAnklePitch_positionNow  ~%float32 LAnklePitch_refPosFromPos~%float32 RAnklePitch_velocityNow  ~%float32 RAnklePitch_positionIK   ~%float32 RAnklePitch_positionNow ~%float32 RAnklePitch_refPosFromPos~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Inertia~%# Mass [kg]~%float64 m~%~%# Center of mass [m]~%geometry_msgs/Vector3 com~%~%# Inertia Tensor [kg-m^2]~%#     | ixx ixy ixz |~%# I = | ixy iyy iyz |~%#     | ixz iyz izz |~%float64 ixx~%float64 ixy~%float64 ixz~%float64 iyy~%float64 iyz~%float64 izz~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataLog>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RFootFK))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'LFootFK))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'TorsoFK))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RFootIK))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'LFootIK))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'TorsoIK))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'IMUdegrees))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'baseInertia))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'LSSPInertia))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RSSPInertia))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'DSPInertia))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPLSSP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPRSSP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPDSP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPLSSP_accZ))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPRSSP_accZ))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPDSP_accZ))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPLSSP_estimate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPRSSP_estimate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPDSP_estimate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMLSSPrpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMRSSPrpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMDSPrpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accelFiltered))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPLSSP_accFil))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPRSSP_accFil))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPDSP_accFil))
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataLog>))
  "Converts a ROS message object to a list"
  (cl:list 'DataLog
    (cl:cons ':RFootFK (RFootFK msg))
    (cl:cons ':LFootFK (LFootFK msg))
    (cl:cons ':TorsoFK (TorsoFK msg))
    (cl:cons ':RFootIK (RFootIK msg))
    (cl:cons ':LFootIK (LFootIK msg))
    (cl:cons ':TorsoIK (TorsoIK msg))
    (cl:cons ':IMUdegrees (IMUdegrees msg))
    (cl:cons ':baseInertia (baseInertia msg))
    (cl:cons ':LSSPInertia (LSSPInertia msg))
    (cl:cons ':RSSPInertia (RSSPInertia msg))
    (cl:cons ':DSPInertia (DSPInertia msg))
    (cl:cons ':ZMPLSSP (ZMPLSSP msg))
    (cl:cons ':ZMPRSSP (ZMPRSSP msg))
    (cl:cons ':ZMPDSP (ZMPDSP msg))
    (cl:cons ':ZMPLSSP_accZ (ZMPLSSP_accZ msg))
    (cl:cons ':ZMPRSSP_accZ (ZMPRSSP_accZ msg))
    (cl:cons ':ZMPDSP_accZ (ZMPDSP_accZ msg))
    (cl:cons ':ZMPLSSP_estimate (ZMPLSSP_estimate msg))
    (cl:cons ':ZMPRSSP_estimate (ZMPRSSP_estimate msg))
    (cl:cons ':ZMPDSP_estimate (ZMPDSP_estimate msg))
    (cl:cons ':COMLSSPrpy (COMLSSPrpy msg))
    (cl:cons ':COMRSSPrpy (COMRSSPrpy msg))
    (cl:cons ':COMDSPrpy (COMDSPrpy msg))
    (cl:cons ':accelFiltered (accelFiltered msg))
    (cl:cons ':ZMPLSSP_accFil (ZMPLSSP_accFil msg))
    (cl:cons ':ZMPRSSP_accFil (ZMPRSSP_accFil msg))
    (cl:cons ':ZMPDSP_accFil (ZMPDSP_accFil msg))
    (cl:cons ':LAnklePitch_velocityNow (LAnklePitch_velocityNow msg))
    (cl:cons ':LAnklePitch_positionIK (LAnklePitch_positionIK msg))
    (cl:cons ':LAnklePitch_positionNow (LAnklePitch_positionNow msg))
    (cl:cons ':LAnklePitch_refPosFromPos (LAnklePitch_refPosFromPos msg))
    (cl:cons ':RAnklePitch_velocityNow (RAnklePitch_velocityNow msg))
    (cl:cons ':RAnklePitch_positionIK (RAnklePitch_positionIK msg))
    (cl:cons ':RAnklePitch_positionNow (RAnklePitch_positionNow msg))
    (cl:cons ':RAnklePitch_refPosFromPos (RAnklePitch_refPosFromPos msg))
))
