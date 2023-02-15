; Auto-generated. Do not edit!


(cl:in-package mcl_localization-msg)


;//! \htmlinclude localization_param.msg.html

(cl:defclass <localization_param> (roslisp-msg-protocol:ros-message)
  ((mcl_afast
    :reader mcl_afast
    :initarg :mcl_afast
    :type cl:float
    :initform 0.0)
   (mcl_aslow
    :reader mcl_aslow
    :initarg :mcl_aslow
    :type cl:float
    :initform 0.0)
   (mcl_variance
    :reader mcl_variance
    :initarg :mcl_variance
    :type cl:float
    :initform 0.0)
   (mgauss_x
    :reader mgauss_x
    :initarg :mgauss_x
    :type cl:float
    :initform 0.0)
   (mgauss_y
    :reader mgauss_y
    :initarg :mgauss_y
    :type cl:float
    :initform 0.0)
   (mgauss_w
    :reader mgauss_w
    :initarg :mgauss_w
    :type cl:float
    :initform 0.0)
   (vgauss_x
    :reader vgauss_x
    :initarg :vgauss_x
    :type cl:float
    :initform 0.0)
   (vgauss_y
    :reader vgauss_y
    :initarg :vgauss_y
    :type cl:float
    :initform 0.0)
   (mcl_wcmps
    :reader mcl_wcmps
    :initarg :mcl_wcmps
    :type cl:float
    :initform 0.0))
)

(cl:defclass localization_param (<localization_param>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localization_param>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localization_param)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcl_localization-msg:<localization_param> is deprecated: use mcl_localization-msg:localization_param instead.")))

(cl:ensure-generic-function 'mcl_afast-val :lambda-list '(m))
(cl:defmethod mcl_afast-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:mcl_afast-val is deprecated.  Use mcl_localization-msg:mcl_afast instead.")
  (mcl_afast m))

(cl:ensure-generic-function 'mcl_aslow-val :lambda-list '(m))
(cl:defmethod mcl_aslow-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:mcl_aslow-val is deprecated.  Use mcl_localization-msg:mcl_aslow instead.")
  (mcl_aslow m))

(cl:ensure-generic-function 'mcl_variance-val :lambda-list '(m))
(cl:defmethod mcl_variance-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:mcl_variance-val is deprecated.  Use mcl_localization-msg:mcl_variance instead.")
  (mcl_variance m))

(cl:ensure-generic-function 'mgauss_x-val :lambda-list '(m))
(cl:defmethod mgauss_x-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:mgauss_x-val is deprecated.  Use mcl_localization-msg:mgauss_x instead.")
  (mgauss_x m))

(cl:ensure-generic-function 'mgauss_y-val :lambda-list '(m))
(cl:defmethod mgauss_y-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:mgauss_y-val is deprecated.  Use mcl_localization-msg:mgauss_y instead.")
  (mgauss_y m))

(cl:ensure-generic-function 'mgauss_w-val :lambda-list '(m))
(cl:defmethod mgauss_w-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:mgauss_w-val is deprecated.  Use mcl_localization-msg:mgauss_w instead.")
  (mgauss_w m))

(cl:ensure-generic-function 'vgauss_x-val :lambda-list '(m))
(cl:defmethod vgauss_x-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:vgauss_x-val is deprecated.  Use mcl_localization-msg:vgauss_x instead.")
  (vgauss_x m))

(cl:ensure-generic-function 'vgauss_y-val :lambda-list '(m))
(cl:defmethod vgauss_y-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:vgauss_y-val is deprecated.  Use mcl_localization-msg:vgauss_y instead.")
  (vgauss_y m))

(cl:ensure-generic-function 'mcl_wcmps-val :lambda-list '(m))
(cl:defmethod mcl_wcmps-val ((m <localization_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcl_localization-msg:mcl_wcmps-val is deprecated.  Use mcl_localization-msg:mcl_wcmps instead.")
  (mcl_wcmps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localization_param>) ostream)
  "Serializes a message object of type '<localization_param>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mcl_afast))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mcl_aslow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mcl_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mgauss_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mgauss_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mgauss_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vgauss_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vgauss_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mcl_wcmps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localization_param>) istream)
  "Deserializes a message object of type '<localization_param>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mcl_afast) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mcl_aslow) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mcl_variance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mgauss_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mgauss_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mgauss_w) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vgauss_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vgauss_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mcl_wcmps) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localization_param>)))
  "Returns string type for a message object of type '<localization_param>"
  "mcl_localization/localization_param")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localization_param)))
  "Returns string type for a message object of type 'localization_param"
  "mcl_localization/localization_param")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localization_param>)))
  "Returns md5sum for a message object of type '<localization_param>"
  "8a9ad945fdf7665608477890478ed39f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localization_param)))
  "Returns md5sum for a message object of type 'localization_param"
  "8a9ad945fdf7665608477890478ed39f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localization_param>)))
  "Returns full string definition for message of type '<localization_param>"
  (cl:format cl:nil "float64 mcl_afast~%float64 mcl_aslow~%float64 mcl_variance~%float64 mgauss_x~%float64 mgauss_y~%float64 mgauss_w~%float64 vgauss_x~%float64 vgauss_y~%float64 mcl_wcmps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localization_param)))
  "Returns full string definition for message of type 'localization_param"
  (cl:format cl:nil "float64 mcl_afast~%float64 mcl_aslow~%float64 mcl_variance~%float64 mgauss_x~%float64 mgauss_y~%float64 mgauss_w~%float64 vgauss_x~%float64 vgauss_y~%float64 mcl_wcmps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localization_param>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localization_param>))
  "Converts a ROS message object to a list"
  (cl:list 'localization_param
    (cl:cons ':mcl_afast (mcl_afast msg))
    (cl:cons ':mcl_aslow (mcl_aslow msg))
    (cl:cons ':mcl_variance (mcl_variance msg))
    (cl:cons ':mgauss_x (mgauss_x msg))
    (cl:cons ':mgauss_y (mgauss_y msg))
    (cl:cons ':mgauss_w (mgauss_w msg))
    (cl:cons ':vgauss_x (vgauss_x msg))
    (cl:cons ':vgauss_y (vgauss_y msg))
    (cl:cons ':mcl_wcmps (mcl_wcmps msg))
))
