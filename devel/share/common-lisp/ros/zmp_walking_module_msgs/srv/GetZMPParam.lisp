; Auto-generated. Do not edit!


(cl:in-package zmp_walking_module_msgs-srv)


;//! \htmlinclude GetZMPParam-request.msg.html

(cl:defclass <GetZMPParam-request> (roslisp-msg-protocol:ros-message)
  ((get_param
    :reader get_param
    :initarg :get_param
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetZMPParam-request (<GetZMPParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetZMPParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetZMPParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zmp_walking_module_msgs-srv:<GetZMPParam-request> is deprecated: use zmp_walking_module_msgs-srv:GetZMPParam-request instead.")))

(cl:ensure-generic-function 'get_param-val :lambda-list '(m))
(cl:defmethod get_param-val ((m <GetZMPParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-srv:get_param-val is deprecated.  Use zmp_walking_module_msgs-srv:get_param instead.")
  (get_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetZMPParam-request>) ostream)
  "Serializes a message object of type '<GetZMPParam-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_param) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetZMPParam-request>) istream)
  "Deserializes a message object of type '<GetZMPParam-request>"
    (cl:setf (cl:slot-value msg 'get_param) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetZMPParam-request>)))
  "Returns string type for a service object of type '<GetZMPParam-request>"
  "zmp_walking_module_msgs/GetZMPParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZMPParam-request)))
  "Returns string type for a service object of type 'GetZMPParam-request"
  "zmp_walking_module_msgs/GetZMPParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetZMPParam-request>)))
  "Returns md5sum for a message object of type '<GetZMPParam-request>"
  "345512f6abd01a81ac305105720e1009")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetZMPParam-request)))
  "Returns md5sum for a message object of type 'GetZMPParam-request"
  "345512f6abd01a81ac305105720e1009")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetZMPParam-request>)))
  "Returns full string definition for message of type '<GetZMPParam-request>"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetZMPParam-request)))
  "Returns full string definition for message of type 'GetZMPParam-request"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetZMPParam-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetZMPParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetZMPParam-request
    (cl:cons ':get_param (get_param msg))
))
;//! \htmlinclude GetZMPParam-response.msg.html

(cl:defclass <GetZMPParam-response> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type zmp_walking_module_msgs-msg:ZMPWalkingParam
    :initform (cl:make-instance 'zmp_walking_module_msgs-msg:ZMPWalkingParam)))
)

(cl:defclass GetZMPParam-response (<GetZMPParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetZMPParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetZMPParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zmp_walking_module_msgs-srv:<GetZMPParam-response> is deprecated: use zmp_walking_module_msgs-srv:GetZMPParam-response instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetZMPParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zmp_walking_module_msgs-srv:parameters-val is deprecated.  Use zmp_walking_module_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetZMPParam-response>) ostream)
  "Serializes a message object of type '<GetZMPParam-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetZMPParam-response>) istream)
  "Deserializes a message object of type '<GetZMPParam-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetZMPParam-response>)))
  "Returns string type for a service object of type '<GetZMPParam-response>"
  "zmp_walking_module_msgs/GetZMPParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZMPParam-response)))
  "Returns string type for a service object of type 'GetZMPParam-response"
  "zmp_walking_module_msgs/GetZMPParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetZMPParam-response>)))
  "Returns md5sum for a message object of type '<GetZMPParam-response>"
  "345512f6abd01a81ac305105720e1009")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetZMPParam-response)))
  "Returns md5sum for a message object of type 'GetZMPParam-response"
  "345512f6abd01a81ac305105720e1009")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetZMPParam-response>)))
  "Returns full string definition for message of type '<GetZMPParam-response>"
  (cl:format cl:nil "ZMPWalkingParam    parameters~%~%~%================================================================================~%MSG: zmp_walking_module_msgs/ZMPWalkingParam~%########## ZMP WALKING BIT-BOTS ###########~%~%bool feedback_~%~%float32 L_Shift~%float32 L_Lift~%float32 L_P_Kick~%float32 L_P_Cool~%~%float32 R_Shift~%float32 R_Lift~%float32 R_P_Kick~%float32 R_P_Cool~%~%float32 Kp~%float32 Kd~%float32 TH1~%float32 TH2~%float32 Acc~%~%float32 KpP~%float32 KpR~%float32 KdP~%float32 KdR~%float32 Ki~%~%float32 zmp_vx~%float32 zmp_vy~%float32 zmp_vphi~%float32 m_zmp_vx~%float32 m_zmp_vy~%float32 m_zmp_vphi~%float32 zmp_vx_man~%~%bool zmp_useGyro~%float32 arm_pitch~%float32 arm_roll~%float32 arm_elbow~%~%float32 supp_front~%float32 supp_front2~%float32 supp_turn~%float32 supp_side_x~%float32 supp_side_y~%float32 supp_x~%float32 supp_y~%~%float32 suppmod_y_init~%float32 turncomp_thrs~%float32 turn_comp~%float32 accel_comp~%float32 front_comp~%float32 hiproll_comp~%float32 tstep~%float32 tzmp~%float32 velfast_forward~%float32 velfast_turn~%float32 angkle_supp_factor~%~%float32 foot_y~%float32 foot_x~%float32 stand_offset~%float32 body_height~%float32 step_height~%float32 belly_roll~%float32 belly_hip~%float32 bodytilt~%~%float32 ankleX_fact~%float32 ankleX_deadband~%float32 ankleX_maxVal~%~%float32 ankleY_fact~%float32 ankleY_deadband~%float32 ankleY_maxVal~%~%float32 kneeX_fact~%float32 kneeX_deadband~%float32 kneeX_maxVal~%~%float32 hipY_fact~%float32 hipY_deadband~%float32 hipY_maxVal~%~%float32 armY_fact~%float32 armY_deadband~%float32 armY_maxVal~%~%float32 armX_fact~%float32 armX_deadband~%float32 armX_maxVal~%~%float32 ballPosX~%float32 ballPosY~%float32 ballPosZ~%~%float32 goalPosX~%float32 goalPosY~%float32 goalPosZ~%~%float32 power~%float32 TRetract~%float32 TKick~%float32 TRising~%float32 TDown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetZMPParam-response)))
  "Returns full string definition for message of type 'GetZMPParam-response"
  (cl:format cl:nil "ZMPWalkingParam    parameters~%~%~%================================================================================~%MSG: zmp_walking_module_msgs/ZMPWalkingParam~%########## ZMP WALKING BIT-BOTS ###########~%~%bool feedback_~%~%float32 L_Shift~%float32 L_Lift~%float32 L_P_Kick~%float32 L_P_Cool~%~%float32 R_Shift~%float32 R_Lift~%float32 R_P_Kick~%float32 R_P_Cool~%~%float32 Kp~%float32 Kd~%float32 TH1~%float32 TH2~%float32 Acc~%~%float32 KpP~%float32 KpR~%float32 KdP~%float32 KdR~%float32 Ki~%~%float32 zmp_vx~%float32 zmp_vy~%float32 zmp_vphi~%float32 m_zmp_vx~%float32 m_zmp_vy~%float32 m_zmp_vphi~%float32 zmp_vx_man~%~%bool zmp_useGyro~%float32 arm_pitch~%float32 arm_roll~%float32 arm_elbow~%~%float32 supp_front~%float32 supp_front2~%float32 supp_turn~%float32 supp_side_x~%float32 supp_side_y~%float32 supp_x~%float32 supp_y~%~%float32 suppmod_y_init~%float32 turncomp_thrs~%float32 turn_comp~%float32 accel_comp~%float32 front_comp~%float32 hiproll_comp~%float32 tstep~%float32 tzmp~%float32 velfast_forward~%float32 velfast_turn~%float32 angkle_supp_factor~%~%float32 foot_y~%float32 foot_x~%float32 stand_offset~%float32 body_height~%float32 step_height~%float32 belly_roll~%float32 belly_hip~%float32 bodytilt~%~%float32 ankleX_fact~%float32 ankleX_deadband~%float32 ankleX_maxVal~%~%float32 ankleY_fact~%float32 ankleY_deadband~%float32 ankleY_maxVal~%~%float32 kneeX_fact~%float32 kneeX_deadband~%float32 kneeX_maxVal~%~%float32 hipY_fact~%float32 hipY_deadband~%float32 hipY_maxVal~%~%float32 armY_fact~%float32 armY_deadband~%float32 armY_maxVal~%~%float32 armX_fact~%float32 armX_deadband~%float32 armX_maxVal~%~%float32 ballPosX~%float32 ballPosY~%float32 ballPosZ~%~%float32 goalPosX~%float32 goalPosY~%float32 goalPosZ~%~%float32 power~%float32 TRetract~%float32 TKick~%float32 TRising~%float32 TDown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetZMPParam-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetZMPParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetZMPParam-response
    (cl:cons ':parameters (parameters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetZMPParam)))
  'GetZMPParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetZMPParam)))
  'GetZMPParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZMPParam)))
  "Returns string type for a service object of type '<GetZMPParam>"
  "zmp_walking_module_msgs/GetZMPParam")