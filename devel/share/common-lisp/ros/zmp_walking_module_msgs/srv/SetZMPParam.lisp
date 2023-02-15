; Auto-generated. Do not edit!


(cl:in-package zmp_walking_module_msgs-srv)


;//! \htmlinclude SetZMPParam-request.msg.html

(cl:defclass <SetZMPParam-request> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type zmp_walking_module_msgs-msg:ZMPWalkingParam
    :initform (cl:make-instance 'zmp_walking_module_msgs-msg:ZMPWalkingParam)))
)

(cl:defclass SetZMPParam-request (<SetZMPParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetZMPParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetZMPParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zmp_walking_module_msgs-srv:<SetZMPParam-request> is deprecated: use zmp_walking_module_msgs-srv:SetZMPParam-request instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <SetZMPParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-srv:parameters-val is deprecated.  Use zmp_walking_module_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetZMPParam-request>) ostream)
  "Serializes a message object of type '<SetZMPParam-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetZMPParam-request>) istream)
  "Deserializes a message object of type '<SetZMPParam-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetZMPParam-request>)))
  "Returns string type for a service object of type '<SetZMPParam-request>"
  "zmp_walking_module_msgs/SetZMPParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetZMPParam-request)))
  "Returns string type for a service object of type 'SetZMPParam-request"
  "zmp_walking_module_msgs/SetZMPParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetZMPParam-request>)))
  "Returns md5sum for a message object of type '<SetZMPParam-request>"
  "5e9b025a73e0773bcc6bbe494dae167b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetZMPParam-request)))
  "Returns md5sum for a message object of type 'SetZMPParam-request"
  "5e9b025a73e0773bcc6bbe494dae167b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetZMPParam-request>)))
  "Returns full string definition for message of type '<SetZMPParam-request>"
  (cl:format cl:nil "ZMPWalkingParam    parameters~%~%================================================================================~%MSG: zmp_walking_module_msgs/ZMPWalkingParam~%########## ZMP WALKING BIT-BOTS ###########~%~%bool feedback_~%~%float32 L_Shift~%float32 L_Lift~%float32 L_P_Kick~%float32 L_P_Cool~%~%float32 R_Shift~%float32 R_Lift~%float32 R_P_Kick~%float32 R_P_Cool~%~%float32 Kp~%float32 Kd~%float32 TH1~%float32 TH2~%float32 Acc~%~%float32 KpP~%float32 KpR~%float32 KdP~%float32 KdR~%float32 Ki~%~%float32 zmp_vx~%float32 zmp_vy~%float32 zmp_vphi~%float32 m_zmp_vx~%float32 m_zmp_vy~%float32 m_zmp_vphi~%float32 zmp_vx_man~%~%bool zmp_useGyro~%float32 arm_pitch~%float32 arm_roll~%float32 arm_elbow~%~%float32 supp_front~%float32 supp_front2~%float32 supp_turn~%float32 supp_side_x~%float32 supp_side_y~%float32 supp_x~%float32 supp_y~%~%float32 suppmod_y_init~%float32 turncomp_thrs~%float32 turn_comp~%float32 accel_comp~%float32 front_comp~%float32 hiproll_comp~%float32 tstep~%float32 tzmp~%float32 velfast_forward~%float32 velfast_turn~%float32 angkle_supp_factor~%~%float32 foot_y~%float32 foot_x~%float32 stand_offset~%float32 body_height~%float32 step_height~%float32 belly_roll~%float32 belly_hip~%float32 bodytilt~%~%float32 ankleX_fact~%float32 ankleX_deadband~%float32 ankleX_maxVal~%~%float32 ankleY_fact~%float32 ankleY_deadband~%float32 ankleY_maxVal~%~%float32 kneeX_fact~%float32 kneeX_deadband~%float32 kneeX_maxVal~%~%float32 hipY_fact~%float32 hipY_deadband~%float32 hipY_maxVal~%~%float32 armY_fact~%float32 armY_deadband~%float32 armY_maxVal~%~%float32 armX_fact~%float32 armX_deadband~%float32 armX_maxVal~%~%float32 ballPosX~%float32 ballPosY~%float32 ballPosZ~%~%float32 goalPosX~%float32 goalPosY~%float32 goalPosZ~%~%float32 power~%float32 TRetract~%float32 TKick~%float32 TRising~%float32 TDown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetZMPParam-request)))
  "Returns full string definition for message of type 'SetZMPParam-request"
  (cl:format cl:nil "ZMPWalkingParam    parameters~%~%================================================================================~%MSG: zmp_walking_module_msgs/ZMPWalkingParam~%########## ZMP WALKING BIT-BOTS ###########~%~%bool feedback_~%~%float32 L_Shift~%float32 L_Lift~%float32 L_P_Kick~%float32 L_P_Cool~%~%float32 R_Shift~%float32 R_Lift~%float32 R_P_Kick~%float32 R_P_Cool~%~%float32 Kp~%float32 Kd~%float32 TH1~%float32 TH2~%float32 Acc~%~%float32 KpP~%float32 KpR~%float32 KdP~%float32 KdR~%float32 Ki~%~%float32 zmp_vx~%float32 zmp_vy~%float32 zmp_vphi~%float32 m_zmp_vx~%float32 m_zmp_vy~%float32 m_zmp_vphi~%float32 zmp_vx_man~%~%bool zmp_useGyro~%float32 arm_pitch~%float32 arm_roll~%float32 arm_elbow~%~%float32 supp_front~%float32 supp_front2~%float32 supp_turn~%float32 supp_side_x~%float32 supp_side_y~%float32 supp_x~%float32 supp_y~%~%float32 suppmod_y_init~%float32 turncomp_thrs~%float32 turn_comp~%float32 accel_comp~%float32 front_comp~%float32 hiproll_comp~%float32 tstep~%float32 tzmp~%float32 velfast_forward~%float32 velfast_turn~%float32 angkle_supp_factor~%~%float32 foot_y~%float32 foot_x~%float32 stand_offset~%float32 body_height~%float32 step_height~%float32 belly_roll~%float32 belly_hip~%float32 bodytilt~%~%float32 ankleX_fact~%float32 ankleX_deadband~%float32 ankleX_maxVal~%~%float32 ankleY_fact~%float32 ankleY_deadband~%float32 ankleY_maxVal~%~%float32 kneeX_fact~%float32 kneeX_deadband~%float32 kneeX_maxVal~%~%float32 hipY_fact~%float32 hipY_deadband~%float32 hipY_maxVal~%~%float32 armY_fact~%float32 armY_deadband~%float32 armY_maxVal~%~%float32 armX_fact~%float32 armX_deadband~%float32 armX_maxVal~%~%float32 ballPosX~%float32 ballPosY~%float32 ballPosZ~%~%float32 goalPosX~%float32 goalPosY~%float32 goalPosZ~%~%float32 power~%float32 TRetract~%float32 TKick~%float32 TRising~%float32 TDown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetZMPParam-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetZMPParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetZMPParam-request
    (cl:cons ':parameters (parameters msg))
))
;//! \htmlinclude SetZMPParam-response.msg.html

(cl:defclass <SetZMPParam-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetZMPParam-response (<SetZMPParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetZMPParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetZMPParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zmp_walking_module_msgs-srv:<SetZMPParam-response> is deprecated: use zmp_walking_module_msgs-srv:SetZMPParam-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetZMPParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-srv:result-val is deprecated.  Use zmp_walking_module_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetZMPParam-response>) ostream)
  "Serializes a message object of type '<SetZMPParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetZMPParam-response>) istream)
  "Deserializes a message object of type '<SetZMPParam-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetZMPParam-response>)))
  "Returns string type for a service object of type '<SetZMPParam-response>"
  "zmp_walking_module_msgs/SetZMPParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetZMPParam-response)))
  "Returns string type for a service object of type 'SetZMPParam-response"
  "zmp_walking_module_msgs/SetZMPParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetZMPParam-response>)))
  "Returns md5sum for a message object of type '<SetZMPParam-response>"
  "5e9b025a73e0773bcc6bbe494dae167b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetZMPParam-response)))
  "Returns md5sum for a message object of type 'SetZMPParam-response"
  "5e9b025a73e0773bcc6bbe494dae167b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetZMPParam-response>)))
  "Returns full string definition for message of type '<SetZMPParam-response>"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetZMPParam-response)))
  "Returns full string definition for message of type 'SetZMPParam-response"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetZMPParam-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetZMPParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetZMPParam-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetZMPParam)))
  'SetZMPParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetZMPParam)))
  'SetZMPParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetZMPParam)))
  "Returns string type for a service object of type '<SetZMPParam>"
  "zmp_walking_module_msgs/SetZMPParam")