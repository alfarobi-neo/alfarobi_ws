; Auto-generated. Do not edit!


(cl:in-package densis_msgs-msg)


;//! \htmlinclude densis.msg.html

(cl:defclass <densis> (roslisp-msg-protocol:ros-message)
  ((IMUorientation
    :reader IMUorientation
    :initarg :IMUorientation
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (IMUgyro
    :reader IMUgyro
    :initarg :IMUgyro
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (COMLSSP
    :reader COMLSSP
    :initarg :COMLSSP
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (COMRSSP
    :reader COMRSSP
    :initarg :COMRSSP
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (COMDSP
    :reader COMDSP
    :initarg :COMDSP
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
    :initform 0.0)
   (COMDSPrpy_pitch_Est
    :reader COMDSPrpy_pitch_Est
    :initarg :COMDSPrpy_pitch_Est
    :type cl:float
    :initform 0.0)
   (gyro_pitch_Est
    :reader gyro_pitch_Est
    :initarg :gyro_pitch_Est
    :type cl:float
    :initform 0.0)
   (COMDSPrpy_pitch_Meas
    :reader COMDSPrpy_pitch_Meas
    :initarg :COMDSPrpy_pitch_Meas
    :type cl:float
    :initform 0.0)
   (gyro_pitch_Meas
    :reader gyro_pitch_Meas
    :initarg :gyro_pitch_Meas
    :type cl:float
    :initform 0.0)
   (gyro_pitch_Fil
    :reader gyro_pitch_Fil
    :initarg :gyro_pitch_Fil
    :type cl:float
    :initform 0.0)
   (CP_0
    :reader CP_0
    :initarg :CP_0
    :type cl:float
    :initform 0.0)
   (CP_1
    :reader CP_1
    :initarg :CP_1
    :type cl:float
    :initform 0.0)
   (CP_2
    :reader CP_2
    :initarg :CP_2
    :type cl:float
    :initform 0.0)
   (CP_3
    :reader CP_3
    :initarg :CP_3
    :type cl:float
    :initform 0.0))
)

(cl:defclass densis (<densis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <densis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'densis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name densis_msgs-msg:<densis> is deprecated: use densis_msgs-msg:densis instead.")))

(cl:ensure-generic-function 'IMUorientation-val :lambda-list '(m))
(cl:defmethod IMUorientation-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:IMUorientation-val is deprecated.  Use densis_msgs-msg:IMUorientation instead.")
  (IMUorientation m))

(cl:ensure-generic-function 'IMUgyro-val :lambda-list '(m))
(cl:defmethod IMUgyro-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:IMUgyro-val is deprecated.  Use densis_msgs-msg:IMUgyro instead.")
  (IMUgyro m))

(cl:ensure-generic-function 'COMLSSP-val :lambda-list '(m))
(cl:defmethod COMLSSP-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:COMLSSP-val is deprecated.  Use densis_msgs-msg:COMLSSP instead.")
  (COMLSSP m))

(cl:ensure-generic-function 'COMRSSP-val :lambda-list '(m))
(cl:defmethod COMRSSP-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:COMRSSP-val is deprecated.  Use densis_msgs-msg:COMRSSP instead.")
  (COMRSSP m))

(cl:ensure-generic-function 'COMDSP-val :lambda-list '(m))
(cl:defmethod COMDSP-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:COMDSP-val is deprecated.  Use densis_msgs-msg:COMDSP instead.")
  (COMDSP m))

(cl:ensure-generic-function 'COMLSSPrpy-val :lambda-list '(m))
(cl:defmethod COMLSSPrpy-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:COMLSSPrpy-val is deprecated.  Use densis_msgs-msg:COMLSSPrpy instead.")
  (COMLSSPrpy m))

(cl:ensure-generic-function 'COMRSSPrpy-val :lambda-list '(m))
(cl:defmethod COMRSSPrpy-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:COMRSSPrpy-val is deprecated.  Use densis_msgs-msg:COMRSSPrpy instead.")
  (COMRSSPrpy m))

(cl:ensure-generic-function 'COMDSPrpy-val :lambda-list '(m))
(cl:defmethod COMDSPrpy-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:COMDSPrpy-val is deprecated.  Use densis_msgs-msg:COMDSPrpy instead.")
  (COMDSPrpy m))

(cl:ensure-generic-function 'ZMPLSSP-val :lambda-list '(m))
(cl:defmethod ZMPLSSP-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:ZMPLSSP-val is deprecated.  Use densis_msgs-msg:ZMPLSSP instead.")
  (ZMPLSSP m))

(cl:ensure-generic-function 'ZMPRSSP-val :lambda-list '(m))
(cl:defmethod ZMPRSSP-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:ZMPRSSP-val is deprecated.  Use densis_msgs-msg:ZMPRSSP instead.")
  (ZMPRSSP m))

(cl:ensure-generic-function 'ZMPDSP-val :lambda-list '(m))
(cl:defmethod ZMPDSP-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:ZMPDSP-val is deprecated.  Use densis_msgs-msg:ZMPDSP instead.")
  (ZMPDSP m))

(cl:ensure-generic-function 'LAnklePitch_velocityNow-val :lambda-list '(m))
(cl:defmethod LAnklePitch_velocityNow-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:LAnklePitch_velocityNow-val is deprecated.  Use densis_msgs-msg:LAnklePitch_velocityNow instead.")
  (LAnklePitch_velocityNow m))

(cl:ensure-generic-function 'LAnklePitch_positionIK-val :lambda-list '(m))
(cl:defmethod LAnklePitch_positionIK-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:LAnklePitch_positionIK-val is deprecated.  Use densis_msgs-msg:LAnklePitch_positionIK instead.")
  (LAnklePitch_positionIK m))

(cl:ensure-generic-function 'LAnklePitch_positionNow-val :lambda-list '(m))
(cl:defmethod LAnklePitch_positionNow-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:LAnklePitch_positionNow-val is deprecated.  Use densis_msgs-msg:LAnklePitch_positionNow instead.")
  (LAnklePitch_positionNow m))

(cl:ensure-generic-function 'LAnklePitch_refPosFromPos-val :lambda-list '(m))
(cl:defmethod LAnklePitch_refPosFromPos-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:LAnklePitch_refPosFromPos-val is deprecated.  Use densis_msgs-msg:LAnklePitch_refPosFromPos instead.")
  (LAnklePitch_refPosFromPos m))

(cl:ensure-generic-function 'RAnklePitch_velocityNow-val :lambda-list '(m))
(cl:defmethod RAnklePitch_velocityNow-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:RAnklePitch_velocityNow-val is deprecated.  Use densis_msgs-msg:RAnklePitch_velocityNow instead.")
  (RAnklePitch_velocityNow m))

(cl:ensure-generic-function 'RAnklePitch_positionIK-val :lambda-list '(m))
(cl:defmethod RAnklePitch_positionIK-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:RAnklePitch_positionIK-val is deprecated.  Use densis_msgs-msg:RAnklePitch_positionIK instead.")
  (RAnklePitch_positionIK m))

(cl:ensure-generic-function 'RAnklePitch_positionNow-val :lambda-list '(m))
(cl:defmethod RAnklePitch_positionNow-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:RAnklePitch_positionNow-val is deprecated.  Use densis_msgs-msg:RAnklePitch_positionNow instead.")
  (RAnklePitch_positionNow m))

(cl:ensure-generic-function 'RAnklePitch_refPosFromPos-val :lambda-list '(m))
(cl:defmethod RAnklePitch_refPosFromPos-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:RAnklePitch_refPosFromPos-val is deprecated.  Use densis_msgs-msg:RAnklePitch_refPosFromPos instead.")
  (RAnklePitch_refPosFromPos m))

(cl:ensure-generic-function 'COMDSPrpy_pitch_Est-val :lambda-list '(m))
(cl:defmethod COMDSPrpy_pitch_Est-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:COMDSPrpy_pitch_Est-val is deprecated.  Use densis_msgs-msg:COMDSPrpy_pitch_Est instead.")
  (COMDSPrpy_pitch_Est m))

(cl:ensure-generic-function 'gyro_pitch_Est-val :lambda-list '(m))
(cl:defmethod gyro_pitch_Est-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:gyro_pitch_Est-val is deprecated.  Use densis_msgs-msg:gyro_pitch_Est instead.")
  (gyro_pitch_Est m))

(cl:ensure-generic-function 'COMDSPrpy_pitch_Meas-val :lambda-list '(m))
(cl:defmethod COMDSPrpy_pitch_Meas-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:COMDSPrpy_pitch_Meas-val is deprecated.  Use densis_msgs-msg:COMDSPrpy_pitch_Meas instead.")
  (COMDSPrpy_pitch_Meas m))

(cl:ensure-generic-function 'gyro_pitch_Meas-val :lambda-list '(m))
(cl:defmethod gyro_pitch_Meas-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:gyro_pitch_Meas-val is deprecated.  Use densis_msgs-msg:gyro_pitch_Meas instead.")
  (gyro_pitch_Meas m))

(cl:ensure-generic-function 'gyro_pitch_Fil-val :lambda-list '(m))
(cl:defmethod gyro_pitch_Fil-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:gyro_pitch_Fil-val is deprecated.  Use densis_msgs-msg:gyro_pitch_Fil instead.")
  (gyro_pitch_Fil m))

(cl:ensure-generic-function 'CP_0-val :lambda-list '(m))
(cl:defmethod CP_0-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:CP_0-val is deprecated.  Use densis_msgs-msg:CP_0 instead.")
  (CP_0 m))

(cl:ensure-generic-function 'CP_1-val :lambda-list '(m))
(cl:defmethod CP_1-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:CP_1-val is deprecated.  Use densis_msgs-msg:CP_1 instead.")
  (CP_1 m))

(cl:ensure-generic-function 'CP_2-val :lambda-list '(m))
(cl:defmethod CP_2-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:CP_2-val is deprecated.  Use densis_msgs-msg:CP_2 instead.")
  (CP_2 m))

(cl:ensure-generic-function 'CP_3-val :lambda-list '(m))
(cl:defmethod CP_3-val ((m <densis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader densis_msgs-msg:CP_3-val is deprecated.  Use densis_msgs-msg:CP_3 instead.")
  (CP_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <densis>) ostream)
  "Serializes a message object of type '<densis>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'IMUorientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'IMUgyro) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMLSSP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMRSSP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMDSP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMLSSPrpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMRSSPrpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'COMDSPrpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPLSSP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPRSSP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ZMPDSP) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'COMDSPrpy_pitch_Est))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_pitch_Est))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'COMDSPrpy_pitch_Meas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_pitch_Meas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_pitch_Fil))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CP_0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CP_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CP_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CP_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <densis>) istream)
  "Deserializes a message object of type '<densis>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'IMUorientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'IMUgyro) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMLSSP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMRSSP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMDSP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMLSSPrpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMRSSPrpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'COMDSPrpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPLSSP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPRSSP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ZMPDSP) istream)
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'COMDSPrpy_pitch_Est) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_pitch_Est) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'COMDSPrpy_pitch_Meas) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_pitch_Meas) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_pitch_Fil) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CP_0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CP_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CP_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CP_3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<densis>)))
  "Returns string type for a message object of type '<densis>"
  "densis_msgs/densis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'densis)))
  "Returns string type for a message object of type 'densis"
  "densis_msgs/densis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<densis>)))
  "Returns md5sum for a message object of type '<densis>"
  "ff16778aedf270b756c96df44fa2eccc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'densis)))
  "Returns md5sum for a message object of type 'densis"
  "ff16778aedf270b756c96df44fa2eccc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<densis>)))
  "Returns full string definition for message of type '<densis>"
  (cl:format cl:nil "geometry_msgs/Point IMUorientation~%geometry_msgs/Point IMUgyro~%geometry_msgs/Point COMLSSP~%geometry_msgs/Point COMRSSP~%geometry_msgs/Point COMDSP~%geometry_msgs/Point COMLSSPrpy~%geometry_msgs/Point COMRSSPrpy~%geometry_msgs/Point COMDSPrpy~%geometry_msgs/Point ZMPLSSP~%geometry_msgs/Point ZMPRSSP~%geometry_msgs/Point ZMPDSP~%~%#geometry_msgs/Transform LAnklePitch~%#geometry_msgs/Transform RAnklePitch~%~%float32 LAnklePitch_velocityNow  ~%float32 LAnklePitch_positionIK   ~%float32 LAnklePitch_positionNow  ~%float32 LAnklePitch_refPosFromPos ~%float32 RAnklePitch_velocityNow  ~%float32 RAnklePitch_positionIK   ~%float32 RAnklePitch_positionNow ~%float32 RAnklePitch_refPosFromPos~%~%float32 COMDSPrpy_pitch_Est~%float32 gyro_pitch_Est~%float32 COMDSPrpy_pitch_Meas~%float32 gyro_pitch_Meas~%float32 gyro_pitch_Fil~%~%float32 CP_0~%float32 CP_1~%float32 CP_2~%float32 CP_3~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'densis)))
  "Returns full string definition for message of type 'densis"
  (cl:format cl:nil "geometry_msgs/Point IMUorientation~%geometry_msgs/Point IMUgyro~%geometry_msgs/Point COMLSSP~%geometry_msgs/Point COMRSSP~%geometry_msgs/Point COMDSP~%geometry_msgs/Point COMLSSPrpy~%geometry_msgs/Point COMRSSPrpy~%geometry_msgs/Point COMDSPrpy~%geometry_msgs/Point ZMPLSSP~%geometry_msgs/Point ZMPRSSP~%geometry_msgs/Point ZMPDSP~%~%#geometry_msgs/Transform LAnklePitch~%#geometry_msgs/Transform RAnklePitch~%~%float32 LAnklePitch_velocityNow  ~%float32 LAnklePitch_positionIK   ~%float32 LAnklePitch_positionNow  ~%float32 LAnklePitch_refPosFromPos ~%float32 RAnklePitch_velocityNow  ~%float32 RAnklePitch_positionIK   ~%float32 RAnklePitch_positionNow ~%float32 RAnklePitch_refPosFromPos~%~%float32 COMDSPrpy_pitch_Est~%float32 gyro_pitch_Est~%float32 COMDSPrpy_pitch_Meas~%float32 gyro_pitch_Meas~%float32 gyro_pitch_Fil~%~%float32 CP_0~%float32 CP_1~%float32 CP_2~%float32 CP_3~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <densis>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'IMUorientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'IMUgyro))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMLSSP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMRSSP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMDSP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMLSSPrpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMRSSPrpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'COMDSPrpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPLSSP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPRSSP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ZMPDSP))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <densis>))
  "Converts a ROS message object to a list"
  (cl:list 'densis
    (cl:cons ':IMUorientation (IMUorientation msg))
    (cl:cons ':IMUgyro (IMUgyro msg))
    (cl:cons ':COMLSSP (COMLSSP msg))
    (cl:cons ':COMRSSP (COMRSSP msg))
    (cl:cons ':COMDSP (COMDSP msg))
    (cl:cons ':COMLSSPrpy (COMLSSPrpy msg))
    (cl:cons ':COMRSSPrpy (COMRSSPrpy msg))
    (cl:cons ':COMDSPrpy (COMDSPrpy msg))
    (cl:cons ':ZMPLSSP (ZMPLSSP msg))
    (cl:cons ':ZMPRSSP (ZMPRSSP msg))
    (cl:cons ':ZMPDSP (ZMPDSP msg))
    (cl:cons ':LAnklePitch_velocityNow (LAnklePitch_velocityNow msg))
    (cl:cons ':LAnklePitch_positionIK (LAnklePitch_positionIK msg))
    (cl:cons ':LAnklePitch_positionNow (LAnklePitch_positionNow msg))
    (cl:cons ':LAnklePitch_refPosFromPos (LAnklePitch_refPosFromPos msg))
    (cl:cons ':RAnklePitch_velocityNow (RAnklePitch_velocityNow msg))
    (cl:cons ':RAnklePitch_positionIK (RAnklePitch_positionIK msg))
    (cl:cons ':RAnklePitch_positionNow (RAnklePitch_positionNow msg))
    (cl:cons ':RAnklePitch_refPosFromPos (RAnklePitch_refPosFromPos msg))
    (cl:cons ':COMDSPrpy_pitch_Est (COMDSPrpy_pitch_Est msg))
    (cl:cons ':gyro_pitch_Est (gyro_pitch_Est msg))
    (cl:cons ':COMDSPrpy_pitch_Meas (COMDSPrpy_pitch_Meas msg))
    (cl:cons ':gyro_pitch_Meas (gyro_pitch_Meas msg))
    (cl:cons ':gyro_pitch_Fil (gyro_pitch_Fil msg))
    (cl:cons ':CP_0 (CP_0 msg))
    (cl:cons ':CP_1 (CP_1 msg))
    (cl:cons ':CP_2 (CP_2 msg))
    (cl:cons ':CP_3 (CP_3 msg))
))
