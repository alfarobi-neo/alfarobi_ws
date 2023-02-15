// Auto-generated. Do not edit!

// (in-package zmp_walking_module_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ZMPWalkingParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback_ = null;
      this.L_Shift = null;
      this.L_Lift = null;
      this.L_P_Kick = null;
      this.L_P_Cool = null;
      this.R_Shift = null;
      this.R_Lift = null;
      this.R_P_Kick = null;
      this.R_P_Cool = null;
      this.Kp = null;
      this.Kd = null;
      this.TH1 = null;
      this.TH2 = null;
      this.Acc = null;
      this.KpP = null;
      this.KpR = null;
      this.KdP = null;
      this.KdR = null;
      this.Ki = null;
      this.zmp_vx = null;
      this.zmp_vy = null;
      this.zmp_vphi = null;
      this.m_zmp_vx = null;
      this.m_zmp_vy = null;
      this.m_zmp_vphi = null;
      this.zmp_vx_man = null;
      this.zmp_useGyro = null;
      this.arm_pitch = null;
      this.arm_roll = null;
      this.arm_elbow = null;
      this.supp_front = null;
      this.supp_front2 = null;
      this.supp_turn = null;
      this.supp_side_x = null;
      this.supp_side_y = null;
      this.supp_x = null;
      this.supp_y = null;
      this.suppmod_y_init = null;
      this.turncomp_thrs = null;
      this.turn_comp = null;
      this.accel_comp = null;
      this.front_comp = null;
      this.hiproll_comp = null;
      this.tstep = null;
      this.tzmp = null;
      this.velfast_forward = null;
      this.velfast_turn = null;
      this.angkle_supp_factor = null;
      this.foot_y = null;
      this.foot_x = null;
      this.stand_offset = null;
      this.body_height = null;
      this.step_height = null;
      this.belly_roll = null;
      this.belly_hip = null;
      this.bodytilt = null;
      this.ankleX_fact = null;
      this.ankleX_deadband = null;
      this.ankleX_maxVal = null;
      this.ankleY_fact = null;
      this.ankleY_deadband = null;
      this.ankleY_maxVal = null;
      this.kneeX_fact = null;
      this.kneeX_deadband = null;
      this.kneeX_maxVal = null;
      this.hipY_fact = null;
      this.hipY_deadband = null;
      this.hipY_maxVal = null;
      this.armY_fact = null;
      this.armY_deadband = null;
      this.armY_maxVal = null;
      this.armX_fact = null;
      this.armX_deadband = null;
      this.armX_maxVal = null;
      this.ballPosX = null;
      this.ballPosY = null;
      this.ballPosZ = null;
      this.goalPosX = null;
      this.goalPosY = null;
      this.goalPosZ = null;
      this.power = null;
      this.TRetract = null;
      this.TKick = null;
      this.TRising = null;
      this.TDown = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback_')) {
        this.feedback_ = initObj.feedback_
      }
      else {
        this.feedback_ = false;
      }
      if (initObj.hasOwnProperty('L_Shift')) {
        this.L_Shift = initObj.L_Shift
      }
      else {
        this.L_Shift = 0.0;
      }
      if (initObj.hasOwnProperty('L_Lift')) {
        this.L_Lift = initObj.L_Lift
      }
      else {
        this.L_Lift = 0.0;
      }
      if (initObj.hasOwnProperty('L_P_Kick')) {
        this.L_P_Kick = initObj.L_P_Kick
      }
      else {
        this.L_P_Kick = 0.0;
      }
      if (initObj.hasOwnProperty('L_P_Cool')) {
        this.L_P_Cool = initObj.L_P_Cool
      }
      else {
        this.L_P_Cool = 0.0;
      }
      if (initObj.hasOwnProperty('R_Shift')) {
        this.R_Shift = initObj.R_Shift
      }
      else {
        this.R_Shift = 0.0;
      }
      if (initObj.hasOwnProperty('R_Lift')) {
        this.R_Lift = initObj.R_Lift
      }
      else {
        this.R_Lift = 0.0;
      }
      if (initObj.hasOwnProperty('R_P_Kick')) {
        this.R_P_Kick = initObj.R_P_Kick
      }
      else {
        this.R_P_Kick = 0.0;
      }
      if (initObj.hasOwnProperty('R_P_Cool')) {
        this.R_P_Cool = initObj.R_P_Cool
      }
      else {
        this.R_P_Cool = 0.0;
      }
      if (initObj.hasOwnProperty('Kp')) {
        this.Kp = initObj.Kp
      }
      else {
        this.Kp = 0.0;
      }
      if (initObj.hasOwnProperty('Kd')) {
        this.Kd = initObj.Kd
      }
      else {
        this.Kd = 0.0;
      }
      if (initObj.hasOwnProperty('TH1')) {
        this.TH1 = initObj.TH1
      }
      else {
        this.TH1 = 0.0;
      }
      if (initObj.hasOwnProperty('TH2')) {
        this.TH2 = initObj.TH2
      }
      else {
        this.TH2 = 0.0;
      }
      if (initObj.hasOwnProperty('Acc')) {
        this.Acc = initObj.Acc
      }
      else {
        this.Acc = 0.0;
      }
      if (initObj.hasOwnProperty('KpP')) {
        this.KpP = initObj.KpP
      }
      else {
        this.KpP = 0.0;
      }
      if (initObj.hasOwnProperty('KpR')) {
        this.KpR = initObj.KpR
      }
      else {
        this.KpR = 0.0;
      }
      if (initObj.hasOwnProperty('KdP')) {
        this.KdP = initObj.KdP
      }
      else {
        this.KdP = 0.0;
      }
      if (initObj.hasOwnProperty('KdR')) {
        this.KdR = initObj.KdR
      }
      else {
        this.KdR = 0.0;
      }
      if (initObj.hasOwnProperty('Ki')) {
        this.Ki = initObj.Ki
      }
      else {
        this.Ki = 0.0;
      }
      if (initObj.hasOwnProperty('zmp_vx')) {
        this.zmp_vx = initObj.zmp_vx
      }
      else {
        this.zmp_vx = 0.0;
      }
      if (initObj.hasOwnProperty('zmp_vy')) {
        this.zmp_vy = initObj.zmp_vy
      }
      else {
        this.zmp_vy = 0.0;
      }
      if (initObj.hasOwnProperty('zmp_vphi')) {
        this.zmp_vphi = initObj.zmp_vphi
      }
      else {
        this.zmp_vphi = 0.0;
      }
      if (initObj.hasOwnProperty('m_zmp_vx')) {
        this.m_zmp_vx = initObj.m_zmp_vx
      }
      else {
        this.m_zmp_vx = 0.0;
      }
      if (initObj.hasOwnProperty('m_zmp_vy')) {
        this.m_zmp_vy = initObj.m_zmp_vy
      }
      else {
        this.m_zmp_vy = 0.0;
      }
      if (initObj.hasOwnProperty('m_zmp_vphi')) {
        this.m_zmp_vphi = initObj.m_zmp_vphi
      }
      else {
        this.m_zmp_vphi = 0.0;
      }
      if (initObj.hasOwnProperty('zmp_vx_man')) {
        this.zmp_vx_man = initObj.zmp_vx_man
      }
      else {
        this.zmp_vx_man = 0.0;
      }
      if (initObj.hasOwnProperty('zmp_useGyro')) {
        this.zmp_useGyro = initObj.zmp_useGyro
      }
      else {
        this.zmp_useGyro = false;
      }
      if (initObj.hasOwnProperty('arm_pitch')) {
        this.arm_pitch = initObj.arm_pitch
      }
      else {
        this.arm_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('arm_roll')) {
        this.arm_roll = initObj.arm_roll
      }
      else {
        this.arm_roll = 0.0;
      }
      if (initObj.hasOwnProperty('arm_elbow')) {
        this.arm_elbow = initObj.arm_elbow
      }
      else {
        this.arm_elbow = 0.0;
      }
      if (initObj.hasOwnProperty('supp_front')) {
        this.supp_front = initObj.supp_front
      }
      else {
        this.supp_front = 0.0;
      }
      if (initObj.hasOwnProperty('supp_front2')) {
        this.supp_front2 = initObj.supp_front2
      }
      else {
        this.supp_front2 = 0.0;
      }
      if (initObj.hasOwnProperty('supp_turn')) {
        this.supp_turn = initObj.supp_turn
      }
      else {
        this.supp_turn = 0.0;
      }
      if (initObj.hasOwnProperty('supp_side_x')) {
        this.supp_side_x = initObj.supp_side_x
      }
      else {
        this.supp_side_x = 0.0;
      }
      if (initObj.hasOwnProperty('supp_side_y')) {
        this.supp_side_y = initObj.supp_side_y
      }
      else {
        this.supp_side_y = 0.0;
      }
      if (initObj.hasOwnProperty('supp_x')) {
        this.supp_x = initObj.supp_x
      }
      else {
        this.supp_x = 0.0;
      }
      if (initObj.hasOwnProperty('supp_y')) {
        this.supp_y = initObj.supp_y
      }
      else {
        this.supp_y = 0.0;
      }
      if (initObj.hasOwnProperty('suppmod_y_init')) {
        this.suppmod_y_init = initObj.suppmod_y_init
      }
      else {
        this.suppmod_y_init = 0.0;
      }
      if (initObj.hasOwnProperty('turncomp_thrs')) {
        this.turncomp_thrs = initObj.turncomp_thrs
      }
      else {
        this.turncomp_thrs = 0.0;
      }
      if (initObj.hasOwnProperty('turn_comp')) {
        this.turn_comp = initObj.turn_comp
      }
      else {
        this.turn_comp = 0.0;
      }
      if (initObj.hasOwnProperty('accel_comp')) {
        this.accel_comp = initObj.accel_comp
      }
      else {
        this.accel_comp = 0.0;
      }
      if (initObj.hasOwnProperty('front_comp')) {
        this.front_comp = initObj.front_comp
      }
      else {
        this.front_comp = 0.0;
      }
      if (initObj.hasOwnProperty('hiproll_comp')) {
        this.hiproll_comp = initObj.hiproll_comp
      }
      else {
        this.hiproll_comp = 0.0;
      }
      if (initObj.hasOwnProperty('tstep')) {
        this.tstep = initObj.tstep
      }
      else {
        this.tstep = 0.0;
      }
      if (initObj.hasOwnProperty('tzmp')) {
        this.tzmp = initObj.tzmp
      }
      else {
        this.tzmp = 0.0;
      }
      if (initObj.hasOwnProperty('velfast_forward')) {
        this.velfast_forward = initObj.velfast_forward
      }
      else {
        this.velfast_forward = 0.0;
      }
      if (initObj.hasOwnProperty('velfast_turn')) {
        this.velfast_turn = initObj.velfast_turn
      }
      else {
        this.velfast_turn = 0.0;
      }
      if (initObj.hasOwnProperty('angkle_supp_factor')) {
        this.angkle_supp_factor = initObj.angkle_supp_factor
      }
      else {
        this.angkle_supp_factor = 0.0;
      }
      if (initObj.hasOwnProperty('foot_y')) {
        this.foot_y = initObj.foot_y
      }
      else {
        this.foot_y = 0.0;
      }
      if (initObj.hasOwnProperty('foot_x')) {
        this.foot_x = initObj.foot_x
      }
      else {
        this.foot_x = 0.0;
      }
      if (initObj.hasOwnProperty('stand_offset')) {
        this.stand_offset = initObj.stand_offset
      }
      else {
        this.stand_offset = 0.0;
      }
      if (initObj.hasOwnProperty('body_height')) {
        this.body_height = initObj.body_height
      }
      else {
        this.body_height = 0.0;
      }
      if (initObj.hasOwnProperty('step_height')) {
        this.step_height = initObj.step_height
      }
      else {
        this.step_height = 0.0;
      }
      if (initObj.hasOwnProperty('belly_roll')) {
        this.belly_roll = initObj.belly_roll
      }
      else {
        this.belly_roll = 0.0;
      }
      if (initObj.hasOwnProperty('belly_hip')) {
        this.belly_hip = initObj.belly_hip
      }
      else {
        this.belly_hip = 0.0;
      }
      if (initObj.hasOwnProperty('bodytilt')) {
        this.bodytilt = initObj.bodytilt
      }
      else {
        this.bodytilt = 0.0;
      }
      if (initObj.hasOwnProperty('ankleX_fact')) {
        this.ankleX_fact = initObj.ankleX_fact
      }
      else {
        this.ankleX_fact = 0.0;
      }
      if (initObj.hasOwnProperty('ankleX_deadband')) {
        this.ankleX_deadband = initObj.ankleX_deadband
      }
      else {
        this.ankleX_deadband = 0.0;
      }
      if (initObj.hasOwnProperty('ankleX_maxVal')) {
        this.ankleX_maxVal = initObj.ankleX_maxVal
      }
      else {
        this.ankleX_maxVal = 0.0;
      }
      if (initObj.hasOwnProperty('ankleY_fact')) {
        this.ankleY_fact = initObj.ankleY_fact
      }
      else {
        this.ankleY_fact = 0.0;
      }
      if (initObj.hasOwnProperty('ankleY_deadband')) {
        this.ankleY_deadband = initObj.ankleY_deadband
      }
      else {
        this.ankleY_deadband = 0.0;
      }
      if (initObj.hasOwnProperty('ankleY_maxVal')) {
        this.ankleY_maxVal = initObj.ankleY_maxVal
      }
      else {
        this.ankleY_maxVal = 0.0;
      }
      if (initObj.hasOwnProperty('kneeX_fact')) {
        this.kneeX_fact = initObj.kneeX_fact
      }
      else {
        this.kneeX_fact = 0.0;
      }
      if (initObj.hasOwnProperty('kneeX_deadband')) {
        this.kneeX_deadband = initObj.kneeX_deadband
      }
      else {
        this.kneeX_deadband = 0.0;
      }
      if (initObj.hasOwnProperty('kneeX_maxVal')) {
        this.kneeX_maxVal = initObj.kneeX_maxVal
      }
      else {
        this.kneeX_maxVal = 0.0;
      }
      if (initObj.hasOwnProperty('hipY_fact')) {
        this.hipY_fact = initObj.hipY_fact
      }
      else {
        this.hipY_fact = 0.0;
      }
      if (initObj.hasOwnProperty('hipY_deadband')) {
        this.hipY_deadband = initObj.hipY_deadband
      }
      else {
        this.hipY_deadband = 0.0;
      }
      if (initObj.hasOwnProperty('hipY_maxVal')) {
        this.hipY_maxVal = initObj.hipY_maxVal
      }
      else {
        this.hipY_maxVal = 0.0;
      }
      if (initObj.hasOwnProperty('armY_fact')) {
        this.armY_fact = initObj.armY_fact
      }
      else {
        this.armY_fact = 0.0;
      }
      if (initObj.hasOwnProperty('armY_deadband')) {
        this.armY_deadband = initObj.armY_deadband
      }
      else {
        this.armY_deadband = 0.0;
      }
      if (initObj.hasOwnProperty('armY_maxVal')) {
        this.armY_maxVal = initObj.armY_maxVal
      }
      else {
        this.armY_maxVal = 0.0;
      }
      if (initObj.hasOwnProperty('armX_fact')) {
        this.armX_fact = initObj.armX_fact
      }
      else {
        this.armX_fact = 0.0;
      }
      if (initObj.hasOwnProperty('armX_deadband')) {
        this.armX_deadband = initObj.armX_deadband
      }
      else {
        this.armX_deadband = 0.0;
      }
      if (initObj.hasOwnProperty('armX_maxVal')) {
        this.armX_maxVal = initObj.armX_maxVal
      }
      else {
        this.armX_maxVal = 0.0;
      }
      if (initObj.hasOwnProperty('ballPosX')) {
        this.ballPosX = initObj.ballPosX
      }
      else {
        this.ballPosX = 0.0;
      }
      if (initObj.hasOwnProperty('ballPosY')) {
        this.ballPosY = initObj.ballPosY
      }
      else {
        this.ballPosY = 0.0;
      }
      if (initObj.hasOwnProperty('ballPosZ')) {
        this.ballPosZ = initObj.ballPosZ
      }
      else {
        this.ballPosZ = 0.0;
      }
      if (initObj.hasOwnProperty('goalPosX')) {
        this.goalPosX = initObj.goalPosX
      }
      else {
        this.goalPosX = 0.0;
      }
      if (initObj.hasOwnProperty('goalPosY')) {
        this.goalPosY = initObj.goalPosY
      }
      else {
        this.goalPosY = 0.0;
      }
      if (initObj.hasOwnProperty('goalPosZ')) {
        this.goalPosZ = initObj.goalPosZ
      }
      else {
        this.goalPosZ = 0.0;
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0.0;
      }
      if (initObj.hasOwnProperty('TRetract')) {
        this.TRetract = initObj.TRetract
      }
      else {
        this.TRetract = 0.0;
      }
      if (initObj.hasOwnProperty('TKick')) {
        this.TKick = initObj.TKick
      }
      else {
        this.TKick = 0.0;
      }
      if (initObj.hasOwnProperty('TRising')) {
        this.TRising = initObj.TRising
      }
      else {
        this.TRising = 0.0;
      }
      if (initObj.hasOwnProperty('TDown')) {
        this.TDown = initObj.TDown
      }
      else {
        this.TDown = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ZMPWalkingParam
    // Serialize message field [feedback_]
    bufferOffset = _serializer.bool(obj.feedback_, buffer, bufferOffset);
    // Serialize message field [L_Shift]
    bufferOffset = _serializer.float32(obj.L_Shift, buffer, bufferOffset);
    // Serialize message field [L_Lift]
    bufferOffset = _serializer.float32(obj.L_Lift, buffer, bufferOffset);
    // Serialize message field [L_P_Kick]
    bufferOffset = _serializer.float32(obj.L_P_Kick, buffer, bufferOffset);
    // Serialize message field [L_P_Cool]
    bufferOffset = _serializer.float32(obj.L_P_Cool, buffer, bufferOffset);
    // Serialize message field [R_Shift]
    bufferOffset = _serializer.float32(obj.R_Shift, buffer, bufferOffset);
    // Serialize message field [R_Lift]
    bufferOffset = _serializer.float32(obj.R_Lift, buffer, bufferOffset);
    // Serialize message field [R_P_Kick]
    bufferOffset = _serializer.float32(obj.R_P_Kick, buffer, bufferOffset);
    // Serialize message field [R_P_Cool]
    bufferOffset = _serializer.float32(obj.R_P_Cool, buffer, bufferOffset);
    // Serialize message field [Kp]
    bufferOffset = _serializer.float32(obj.Kp, buffer, bufferOffset);
    // Serialize message field [Kd]
    bufferOffset = _serializer.float32(obj.Kd, buffer, bufferOffset);
    // Serialize message field [TH1]
    bufferOffset = _serializer.float32(obj.TH1, buffer, bufferOffset);
    // Serialize message field [TH2]
    bufferOffset = _serializer.float32(obj.TH2, buffer, bufferOffset);
    // Serialize message field [Acc]
    bufferOffset = _serializer.float32(obj.Acc, buffer, bufferOffset);
    // Serialize message field [KpP]
    bufferOffset = _serializer.float32(obj.KpP, buffer, bufferOffset);
    // Serialize message field [KpR]
    bufferOffset = _serializer.float32(obj.KpR, buffer, bufferOffset);
    // Serialize message field [KdP]
    bufferOffset = _serializer.float32(obj.KdP, buffer, bufferOffset);
    // Serialize message field [KdR]
    bufferOffset = _serializer.float32(obj.KdR, buffer, bufferOffset);
    // Serialize message field [Ki]
    bufferOffset = _serializer.float32(obj.Ki, buffer, bufferOffset);
    // Serialize message field [zmp_vx]
    bufferOffset = _serializer.float32(obj.zmp_vx, buffer, bufferOffset);
    // Serialize message field [zmp_vy]
    bufferOffset = _serializer.float32(obj.zmp_vy, buffer, bufferOffset);
    // Serialize message field [zmp_vphi]
    bufferOffset = _serializer.float32(obj.zmp_vphi, buffer, bufferOffset);
    // Serialize message field [m_zmp_vx]
    bufferOffset = _serializer.float32(obj.m_zmp_vx, buffer, bufferOffset);
    // Serialize message field [m_zmp_vy]
    bufferOffset = _serializer.float32(obj.m_zmp_vy, buffer, bufferOffset);
    // Serialize message field [m_zmp_vphi]
    bufferOffset = _serializer.float32(obj.m_zmp_vphi, buffer, bufferOffset);
    // Serialize message field [zmp_vx_man]
    bufferOffset = _serializer.float32(obj.zmp_vx_man, buffer, bufferOffset);
    // Serialize message field [zmp_useGyro]
    bufferOffset = _serializer.bool(obj.zmp_useGyro, buffer, bufferOffset);
    // Serialize message field [arm_pitch]
    bufferOffset = _serializer.float32(obj.arm_pitch, buffer, bufferOffset);
    // Serialize message field [arm_roll]
    bufferOffset = _serializer.float32(obj.arm_roll, buffer, bufferOffset);
    // Serialize message field [arm_elbow]
    bufferOffset = _serializer.float32(obj.arm_elbow, buffer, bufferOffset);
    // Serialize message field [supp_front]
    bufferOffset = _serializer.float32(obj.supp_front, buffer, bufferOffset);
    // Serialize message field [supp_front2]
    bufferOffset = _serializer.float32(obj.supp_front2, buffer, bufferOffset);
    // Serialize message field [supp_turn]
    bufferOffset = _serializer.float32(obj.supp_turn, buffer, bufferOffset);
    // Serialize message field [supp_side_x]
    bufferOffset = _serializer.float32(obj.supp_side_x, buffer, bufferOffset);
    // Serialize message field [supp_side_y]
    bufferOffset = _serializer.float32(obj.supp_side_y, buffer, bufferOffset);
    // Serialize message field [supp_x]
    bufferOffset = _serializer.float32(obj.supp_x, buffer, bufferOffset);
    // Serialize message field [supp_y]
    bufferOffset = _serializer.float32(obj.supp_y, buffer, bufferOffset);
    // Serialize message field [suppmod_y_init]
    bufferOffset = _serializer.float32(obj.suppmod_y_init, buffer, bufferOffset);
    // Serialize message field [turncomp_thrs]
    bufferOffset = _serializer.float32(obj.turncomp_thrs, buffer, bufferOffset);
    // Serialize message field [turn_comp]
    bufferOffset = _serializer.float32(obj.turn_comp, buffer, bufferOffset);
    // Serialize message field [accel_comp]
    bufferOffset = _serializer.float32(obj.accel_comp, buffer, bufferOffset);
    // Serialize message field [front_comp]
    bufferOffset = _serializer.float32(obj.front_comp, buffer, bufferOffset);
    // Serialize message field [hiproll_comp]
    bufferOffset = _serializer.float32(obj.hiproll_comp, buffer, bufferOffset);
    // Serialize message field [tstep]
    bufferOffset = _serializer.float32(obj.tstep, buffer, bufferOffset);
    // Serialize message field [tzmp]
    bufferOffset = _serializer.float32(obj.tzmp, buffer, bufferOffset);
    // Serialize message field [velfast_forward]
    bufferOffset = _serializer.float32(obj.velfast_forward, buffer, bufferOffset);
    // Serialize message field [velfast_turn]
    bufferOffset = _serializer.float32(obj.velfast_turn, buffer, bufferOffset);
    // Serialize message field [angkle_supp_factor]
    bufferOffset = _serializer.float32(obj.angkle_supp_factor, buffer, bufferOffset);
    // Serialize message field [foot_y]
    bufferOffset = _serializer.float32(obj.foot_y, buffer, bufferOffset);
    // Serialize message field [foot_x]
    bufferOffset = _serializer.float32(obj.foot_x, buffer, bufferOffset);
    // Serialize message field [stand_offset]
    bufferOffset = _serializer.float32(obj.stand_offset, buffer, bufferOffset);
    // Serialize message field [body_height]
    bufferOffset = _serializer.float32(obj.body_height, buffer, bufferOffset);
    // Serialize message field [step_height]
    bufferOffset = _serializer.float32(obj.step_height, buffer, bufferOffset);
    // Serialize message field [belly_roll]
    bufferOffset = _serializer.float32(obj.belly_roll, buffer, bufferOffset);
    // Serialize message field [belly_hip]
    bufferOffset = _serializer.float32(obj.belly_hip, buffer, bufferOffset);
    // Serialize message field [bodytilt]
    bufferOffset = _serializer.float32(obj.bodytilt, buffer, bufferOffset);
    // Serialize message field [ankleX_fact]
    bufferOffset = _serializer.float32(obj.ankleX_fact, buffer, bufferOffset);
    // Serialize message field [ankleX_deadband]
    bufferOffset = _serializer.float32(obj.ankleX_deadband, buffer, bufferOffset);
    // Serialize message field [ankleX_maxVal]
    bufferOffset = _serializer.float32(obj.ankleX_maxVal, buffer, bufferOffset);
    // Serialize message field [ankleY_fact]
    bufferOffset = _serializer.float32(obj.ankleY_fact, buffer, bufferOffset);
    // Serialize message field [ankleY_deadband]
    bufferOffset = _serializer.float32(obj.ankleY_deadband, buffer, bufferOffset);
    // Serialize message field [ankleY_maxVal]
    bufferOffset = _serializer.float32(obj.ankleY_maxVal, buffer, bufferOffset);
    // Serialize message field [kneeX_fact]
    bufferOffset = _serializer.float32(obj.kneeX_fact, buffer, bufferOffset);
    // Serialize message field [kneeX_deadband]
    bufferOffset = _serializer.float32(obj.kneeX_deadband, buffer, bufferOffset);
    // Serialize message field [kneeX_maxVal]
    bufferOffset = _serializer.float32(obj.kneeX_maxVal, buffer, bufferOffset);
    // Serialize message field [hipY_fact]
    bufferOffset = _serializer.float32(obj.hipY_fact, buffer, bufferOffset);
    // Serialize message field [hipY_deadband]
    bufferOffset = _serializer.float32(obj.hipY_deadband, buffer, bufferOffset);
    // Serialize message field [hipY_maxVal]
    bufferOffset = _serializer.float32(obj.hipY_maxVal, buffer, bufferOffset);
    // Serialize message field [armY_fact]
    bufferOffset = _serializer.float32(obj.armY_fact, buffer, bufferOffset);
    // Serialize message field [armY_deadband]
    bufferOffset = _serializer.float32(obj.armY_deadband, buffer, bufferOffset);
    // Serialize message field [armY_maxVal]
    bufferOffset = _serializer.float32(obj.armY_maxVal, buffer, bufferOffset);
    // Serialize message field [armX_fact]
    bufferOffset = _serializer.float32(obj.armX_fact, buffer, bufferOffset);
    // Serialize message field [armX_deadband]
    bufferOffset = _serializer.float32(obj.armX_deadband, buffer, bufferOffset);
    // Serialize message field [armX_maxVal]
    bufferOffset = _serializer.float32(obj.armX_maxVal, buffer, bufferOffset);
    // Serialize message field [ballPosX]
    bufferOffset = _serializer.float32(obj.ballPosX, buffer, bufferOffset);
    // Serialize message field [ballPosY]
    bufferOffset = _serializer.float32(obj.ballPosY, buffer, bufferOffset);
    // Serialize message field [ballPosZ]
    bufferOffset = _serializer.float32(obj.ballPosZ, buffer, bufferOffset);
    // Serialize message field [goalPosX]
    bufferOffset = _serializer.float32(obj.goalPosX, buffer, bufferOffset);
    // Serialize message field [goalPosY]
    bufferOffset = _serializer.float32(obj.goalPosY, buffer, bufferOffset);
    // Serialize message field [goalPosZ]
    bufferOffset = _serializer.float32(obj.goalPosZ, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.float32(obj.power, buffer, bufferOffset);
    // Serialize message field [TRetract]
    bufferOffset = _serializer.float32(obj.TRetract, buffer, bufferOffset);
    // Serialize message field [TKick]
    bufferOffset = _serializer.float32(obj.TKick, buffer, bufferOffset);
    // Serialize message field [TRising]
    bufferOffset = _serializer.float32(obj.TRising, buffer, bufferOffset);
    // Serialize message field [TDown]
    bufferOffset = _serializer.float32(obj.TDown, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ZMPWalkingParam
    let len;
    let data = new ZMPWalkingParam(null);
    // Deserialize message field [feedback_]
    data.feedback_ = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [L_Shift]
    data.L_Shift = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Lift]
    data.L_Lift = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_P_Kick]
    data.L_P_Kick = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_P_Cool]
    data.L_P_Cool = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Shift]
    data.R_Shift = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Lift]
    data.R_Lift = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_P_Kick]
    data.R_P_Kick = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_P_Cool]
    data.R_P_Cool = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Kp]
    data.Kp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Kd]
    data.Kd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TH1]
    data.TH1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TH2]
    data.TH2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Acc]
    data.Acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KpP]
    data.KpP = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KpR]
    data.KpR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KdP]
    data.KdP = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KdR]
    data.KdR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Ki]
    data.Ki = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmp_vx]
    data.zmp_vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmp_vy]
    data.zmp_vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmp_vphi]
    data.zmp_vphi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m_zmp_vx]
    data.m_zmp_vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m_zmp_vy]
    data.m_zmp_vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m_zmp_vphi]
    data.m_zmp_vphi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmp_vx_man]
    data.zmp_vx_man = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmp_useGyro]
    data.zmp_useGyro = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [arm_pitch]
    data.arm_pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm_roll]
    data.arm_roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm_elbow]
    data.arm_elbow = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [supp_front]
    data.supp_front = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [supp_front2]
    data.supp_front2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [supp_turn]
    data.supp_turn = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [supp_side_x]
    data.supp_side_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [supp_side_y]
    data.supp_side_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [supp_x]
    data.supp_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [supp_y]
    data.supp_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [suppmod_y_init]
    data.suppmod_y_init = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [turncomp_thrs]
    data.turncomp_thrs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [turn_comp]
    data.turn_comp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_comp]
    data.accel_comp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_comp]
    data.front_comp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hiproll_comp]
    data.hiproll_comp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tstep]
    data.tstep = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tzmp]
    data.tzmp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velfast_forward]
    data.velfast_forward = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velfast_turn]
    data.velfast_turn = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angkle_supp_factor]
    data.angkle_supp_factor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [foot_y]
    data.foot_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [foot_x]
    data.foot_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stand_offset]
    data.stand_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [body_height]
    data.body_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [step_height]
    data.step_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [belly_roll]
    data.belly_roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [belly_hip]
    data.belly_hip = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bodytilt]
    data.bodytilt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ankleX_fact]
    data.ankleX_fact = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ankleX_deadband]
    data.ankleX_deadband = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ankleX_maxVal]
    data.ankleX_maxVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ankleY_fact]
    data.ankleY_fact = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ankleY_deadband]
    data.ankleY_deadband = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ankleY_maxVal]
    data.ankleY_maxVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kneeX_fact]
    data.kneeX_fact = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kneeX_deadband]
    data.kneeX_deadband = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kneeX_maxVal]
    data.kneeX_maxVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hipY_fact]
    data.hipY_fact = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hipY_deadband]
    data.hipY_deadband = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hipY_maxVal]
    data.hipY_maxVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [armY_fact]
    data.armY_fact = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [armY_deadband]
    data.armY_deadband = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [armY_maxVal]
    data.armY_maxVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [armX_fact]
    data.armX_fact = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [armX_deadband]
    data.armX_deadband = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [armX_maxVal]
    data.armX_maxVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ballPosX]
    data.ballPosX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ballPosY]
    data.ballPosY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ballPosZ]
    data.ballPosZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [goalPosX]
    data.goalPosX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [goalPosY]
    data.goalPosY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [goalPosZ]
    data.goalPosZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TRetract]
    data.TRetract = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TKick]
    data.TKick = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TRising]
    data.TRising = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TDown]
    data.TDown = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 334;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zmp_walking_module_msgs/ZMPWalkingParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18fd4f4232f23b551ffb99639a489507';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ########## ZMP WALKING BIT-BOTS ###########
    
    bool feedback_
    
    float32 L_Shift
    float32 L_Lift
    float32 L_P_Kick
    float32 L_P_Cool
    
    float32 R_Shift
    float32 R_Lift
    float32 R_P_Kick
    float32 R_P_Cool
    
    float32 Kp
    float32 Kd
    float32 TH1
    float32 TH2
    float32 Acc
    
    float32 KpP
    float32 KpR
    float32 KdP
    float32 KdR
    float32 Ki
    
    float32 zmp_vx
    float32 zmp_vy
    float32 zmp_vphi
    float32 m_zmp_vx
    float32 m_zmp_vy
    float32 m_zmp_vphi
    float32 zmp_vx_man
    
    bool zmp_useGyro
    float32 arm_pitch
    float32 arm_roll
    float32 arm_elbow
    
    float32 supp_front
    float32 supp_front2
    float32 supp_turn
    float32 supp_side_x
    float32 supp_side_y
    float32 supp_x
    float32 supp_y
    
    float32 suppmod_y_init
    float32 turncomp_thrs
    float32 turn_comp
    float32 accel_comp
    float32 front_comp
    float32 hiproll_comp
    float32 tstep
    float32 tzmp
    float32 velfast_forward
    float32 velfast_turn
    float32 angkle_supp_factor
    
    float32 foot_y
    float32 foot_x
    float32 stand_offset
    float32 body_height
    float32 step_height
    float32 belly_roll
    float32 belly_hip
    float32 bodytilt
    
    float32 ankleX_fact
    float32 ankleX_deadband
    float32 ankleX_maxVal
    
    float32 ankleY_fact
    float32 ankleY_deadband
    float32 ankleY_maxVal
    
    float32 kneeX_fact
    float32 kneeX_deadband
    float32 kneeX_maxVal
    
    float32 hipY_fact
    float32 hipY_deadband
    float32 hipY_maxVal
    
    float32 armY_fact
    float32 armY_deadband
    float32 armY_maxVal
    
    float32 armX_fact
    float32 armX_deadband
    float32 armX_maxVal
    
    float32 ballPosX
    float32 ballPosY
    float32 ballPosZ
    
    float32 goalPosX
    float32 goalPosY
    float32 goalPosZ
    
    float32 power
    float32 TRetract
    float32 TKick
    float32 TRising
    float32 TDown
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ZMPWalkingParam(null);
    if (msg.feedback_ !== undefined) {
      resolved.feedback_ = msg.feedback_;
    }
    else {
      resolved.feedback_ = false
    }

    if (msg.L_Shift !== undefined) {
      resolved.L_Shift = msg.L_Shift;
    }
    else {
      resolved.L_Shift = 0.0
    }

    if (msg.L_Lift !== undefined) {
      resolved.L_Lift = msg.L_Lift;
    }
    else {
      resolved.L_Lift = 0.0
    }

    if (msg.L_P_Kick !== undefined) {
      resolved.L_P_Kick = msg.L_P_Kick;
    }
    else {
      resolved.L_P_Kick = 0.0
    }

    if (msg.L_P_Cool !== undefined) {
      resolved.L_P_Cool = msg.L_P_Cool;
    }
    else {
      resolved.L_P_Cool = 0.0
    }

    if (msg.R_Shift !== undefined) {
      resolved.R_Shift = msg.R_Shift;
    }
    else {
      resolved.R_Shift = 0.0
    }

    if (msg.R_Lift !== undefined) {
      resolved.R_Lift = msg.R_Lift;
    }
    else {
      resolved.R_Lift = 0.0
    }

    if (msg.R_P_Kick !== undefined) {
      resolved.R_P_Kick = msg.R_P_Kick;
    }
    else {
      resolved.R_P_Kick = 0.0
    }

    if (msg.R_P_Cool !== undefined) {
      resolved.R_P_Cool = msg.R_P_Cool;
    }
    else {
      resolved.R_P_Cool = 0.0
    }

    if (msg.Kp !== undefined) {
      resolved.Kp = msg.Kp;
    }
    else {
      resolved.Kp = 0.0
    }

    if (msg.Kd !== undefined) {
      resolved.Kd = msg.Kd;
    }
    else {
      resolved.Kd = 0.0
    }

    if (msg.TH1 !== undefined) {
      resolved.TH1 = msg.TH1;
    }
    else {
      resolved.TH1 = 0.0
    }

    if (msg.TH2 !== undefined) {
      resolved.TH2 = msg.TH2;
    }
    else {
      resolved.TH2 = 0.0
    }

    if (msg.Acc !== undefined) {
      resolved.Acc = msg.Acc;
    }
    else {
      resolved.Acc = 0.0
    }

    if (msg.KpP !== undefined) {
      resolved.KpP = msg.KpP;
    }
    else {
      resolved.KpP = 0.0
    }

    if (msg.KpR !== undefined) {
      resolved.KpR = msg.KpR;
    }
    else {
      resolved.KpR = 0.0
    }

    if (msg.KdP !== undefined) {
      resolved.KdP = msg.KdP;
    }
    else {
      resolved.KdP = 0.0
    }

    if (msg.KdR !== undefined) {
      resolved.KdR = msg.KdR;
    }
    else {
      resolved.KdR = 0.0
    }

    if (msg.Ki !== undefined) {
      resolved.Ki = msg.Ki;
    }
    else {
      resolved.Ki = 0.0
    }

    if (msg.zmp_vx !== undefined) {
      resolved.zmp_vx = msg.zmp_vx;
    }
    else {
      resolved.zmp_vx = 0.0
    }

    if (msg.zmp_vy !== undefined) {
      resolved.zmp_vy = msg.zmp_vy;
    }
    else {
      resolved.zmp_vy = 0.0
    }

    if (msg.zmp_vphi !== undefined) {
      resolved.zmp_vphi = msg.zmp_vphi;
    }
    else {
      resolved.zmp_vphi = 0.0
    }

    if (msg.m_zmp_vx !== undefined) {
      resolved.m_zmp_vx = msg.m_zmp_vx;
    }
    else {
      resolved.m_zmp_vx = 0.0
    }

    if (msg.m_zmp_vy !== undefined) {
      resolved.m_zmp_vy = msg.m_zmp_vy;
    }
    else {
      resolved.m_zmp_vy = 0.0
    }

    if (msg.m_zmp_vphi !== undefined) {
      resolved.m_zmp_vphi = msg.m_zmp_vphi;
    }
    else {
      resolved.m_zmp_vphi = 0.0
    }

    if (msg.zmp_vx_man !== undefined) {
      resolved.zmp_vx_man = msg.zmp_vx_man;
    }
    else {
      resolved.zmp_vx_man = 0.0
    }

    if (msg.zmp_useGyro !== undefined) {
      resolved.zmp_useGyro = msg.zmp_useGyro;
    }
    else {
      resolved.zmp_useGyro = false
    }

    if (msg.arm_pitch !== undefined) {
      resolved.arm_pitch = msg.arm_pitch;
    }
    else {
      resolved.arm_pitch = 0.0
    }

    if (msg.arm_roll !== undefined) {
      resolved.arm_roll = msg.arm_roll;
    }
    else {
      resolved.arm_roll = 0.0
    }

    if (msg.arm_elbow !== undefined) {
      resolved.arm_elbow = msg.arm_elbow;
    }
    else {
      resolved.arm_elbow = 0.0
    }

    if (msg.supp_front !== undefined) {
      resolved.supp_front = msg.supp_front;
    }
    else {
      resolved.supp_front = 0.0
    }

    if (msg.supp_front2 !== undefined) {
      resolved.supp_front2 = msg.supp_front2;
    }
    else {
      resolved.supp_front2 = 0.0
    }

    if (msg.supp_turn !== undefined) {
      resolved.supp_turn = msg.supp_turn;
    }
    else {
      resolved.supp_turn = 0.0
    }

    if (msg.supp_side_x !== undefined) {
      resolved.supp_side_x = msg.supp_side_x;
    }
    else {
      resolved.supp_side_x = 0.0
    }

    if (msg.supp_side_y !== undefined) {
      resolved.supp_side_y = msg.supp_side_y;
    }
    else {
      resolved.supp_side_y = 0.0
    }

    if (msg.supp_x !== undefined) {
      resolved.supp_x = msg.supp_x;
    }
    else {
      resolved.supp_x = 0.0
    }

    if (msg.supp_y !== undefined) {
      resolved.supp_y = msg.supp_y;
    }
    else {
      resolved.supp_y = 0.0
    }

    if (msg.suppmod_y_init !== undefined) {
      resolved.suppmod_y_init = msg.suppmod_y_init;
    }
    else {
      resolved.suppmod_y_init = 0.0
    }

    if (msg.turncomp_thrs !== undefined) {
      resolved.turncomp_thrs = msg.turncomp_thrs;
    }
    else {
      resolved.turncomp_thrs = 0.0
    }

    if (msg.turn_comp !== undefined) {
      resolved.turn_comp = msg.turn_comp;
    }
    else {
      resolved.turn_comp = 0.0
    }

    if (msg.accel_comp !== undefined) {
      resolved.accel_comp = msg.accel_comp;
    }
    else {
      resolved.accel_comp = 0.0
    }

    if (msg.front_comp !== undefined) {
      resolved.front_comp = msg.front_comp;
    }
    else {
      resolved.front_comp = 0.0
    }

    if (msg.hiproll_comp !== undefined) {
      resolved.hiproll_comp = msg.hiproll_comp;
    }
    else {
      resolved.hiproll_comp = 0.0
    }

    if (msg.tstep !== undefined) {
      resolved.tstep = msg.tstep;
    }
    else {
      resolved.tstep = 0.0
    }

    if (msg.tzmp !== undefined) {
      resolved.tzmp = msg.tzmp;
    }
    else {
      resolved.tzmp = 0.0
    }

    if (msg.velfast_forward !== undefined) {
      resolved.velfast_forward = msg.velfast_forward;
    }
    else {
      resolved.velfast_forward = 0.0
    }

    if (msg.velfast_turn !== undefined) {
      resolved.velfast_turn = msg.velfast_turn;
    }
    else {
      resolved.velfast_turn = 0.0
    }

    if (msg.angkle_supp_factor !== undefined) {
      resolved.angkle_supp_factor = msg.angkle_supp_factor;
    }
    else {
      resolved.angkle_supp_factor = 0.0
    }

    if (msg.foot_y !== undefined) {
      resolved.foot_y = msg.foot_y;
    }
    else {
      resolved.foot_y = 0.0
    }

    if (msg.foot_x !== undefined) {
      resolved.foot_x = msg.foot_x;
    }
    else {
      resolved.foot_x = 0.0
    }

    if (msg.stand_offset !== undefined) {
      resolved.stand_offset = msg.stand_offset;
    }
    else {
      resolved.stand_offset = 0.0
    }

    if (msg.body_height !== undefined) {
      resolved.body_height = msg.body_height;
    }
    else {
      resolved.body_height = 0.0
    }

    if (msg.step_height !== undefined) {
      resolved.step_height = msg.step_height;
    }
    else {
      resolved.step_height = 0.0
    }

    if (msg.belly_roll !== undefined) {
      resolved.belly_roll = msg.belly_roll;
    }
    else {
      resolved.belly_roll = 0.0
    }

    if (msg.belly_hip !== undefined) {
      resolved.belly_hip = msg.belly_hip;
    }
    else {
      resolved.belly_hip = 0.0
    }

    if (msg.bodytilt !== undefined) {
      resolved.bodytilt = msg.bodytilt;
    }
    else {
      resolved.bodytilt = 0.0
    }

    if (msg.ankleX_fact !== undefined) {
      resolved.ankleX_fact = msg.ankleX_fact;
    }
    else {
      resolved.ankleX_fact = 0.0
    }

    if (msg.ankleX_deadband !== undefined) {
      resolved.ankleX_deadband = msg.ankleX_deadband;
    }
    else {
      resolved.ankleX_deadband = 0.0
    }

    if (msg.ankleX_maxVal !== undefined) {
      resolved.ankleX_maxVal = msg.ankleX_maxVal;
    }
    else {
      resolved.ankleX_maxVal = 0.0
    }

    if (msg.ankleY_fact !== undefined) {
      resolved.ankleY_fact = msg.ankleY_fact;
    }
    else {
      resolved.ankleY_fact = 0.0
    }

    if (msg.ankleY_deadband !== undefined) {
      resolved.ankleY_deadband = msg.ankleY_deadband;
    }
    else {
      resolved.ankleY_deadband = 0.0
    }

    if (msg.ankleY_maxVal !== undefined) {
      resolved.ankleY_maxVal = msg.ankleY_maxVal;
    }
    else {
      resolved.ankleY_maxVal = 0.0
    }

    if (msg.kneeX_fact !== undefined) {
      resolved.kneeX_fact = msg.kneeX_fact;
    }
    else {
      resolved.kneeX_fact = 0.0
    }

    if (msg.kneeX_deadband !== undefined) {
      resolved.kneeX_deadband = msg.kneeX_deadband;
    }
    else {
      resolved.kneeX_deadband = 0.0
    }

    if (msg.kneeX_maxVal !== undefined) {
      resolved.kneeX_maxVal = msg.kneeX_maxVal;
    }
    else {
      resolved.kneeX_maxVal = 0.0
    }

    if (msg.hipY_fact !== undefined) {
      resolved.hipY_fact = msg.hipY_fact;
    }
    else {
      resolved.hipY_fact = 0.0
    }

    if (msg.hipY_deadband !== undefined) {
      resolved.hipY_deadband = msg.hipY_deadband;
    }
    else {
      resolved.hipY_deadband = 0.0
    }

    if (msg.hipY_maxVal !== undefined) {
      resolved.hipY_maxVal = msg.hipY_maxVal;
    }
    else {
      resolved.hipY_maxVal = 0.0
    }

    if (msg.armY_fact !== undefined) {
      resolved.armY_fact = msg.armY_fact;
    }
    else {
      resolved.armY_fact = 0.0
    }

    if (msg.armY_deadband !== undefined) {
      resolved.armY_deadband = msg.armY_deadband;
    }
    else {
      resolved.armY_deadband = 0.0
    }

    if (msg.armY_maxVal !== undefined) {
      resolved.armY_maxVal = msg.armY_maxVal;
    }
    else {
      resolved.armY_maxVal = 0.0
    }

    if (msg.armX_fact !== undefined) {
      resolved.armX_fact = msg.armX_fact;
    }
    else {
      resolved.armX_fact = 0.0
    }

    if (msg.armX_deadband !== undefined) {
      resolved.armX_deadband = msg.armX_deadband;
    }
    else {
      resolved.armX_deadband = 0.0
    }

    if (msg.armX_maxVal !== undefined) {
      resolved.armX_maxVal = msg.armX_maxVal;
    }
    else {
      resolved.armX_maxVal = 0.0
    }

    if (msg.ballPosX !== undefined) {
      resolved.ballPosX = msg.ballPosX;
    }
    else {
      resolved.ballPosX = 0.0
    }

    if (msg.ballPosY !== undefined) {
      resolved.ballPosY = msg.ballPosY;
    }
    else {
      resolved.ballPosY = 0.0
    }

    if (msg.ballPosZ !== undefined) {
      resolved.ballPosZ = msg.ballPosZ;
    }
    else {
      resolved.ballPosZ = 0.0
    }

    if (msg.goalPosX !== undefined) {
      resolved.goalPosX = msg.goalPosX;
    }
    else {
      resolved.goalPosX = 0.0
    }

    if (msg.goalPosY !== undefined) {
      resolved.goalPosY = msg.goalPosY;
    }
    else {
      resolved.goalPosY = 0.0
    }

    if (msg.goalPosZ !== undefined) {
      resolved.goalPosZ = msg.goalPosZ;
    }
    else {
      resolved.goalPosZ = 0.0
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0.0
    }

    if (msg.TRetract !== undefined) {
      resolved.TRetract = msg.TRetract;
    }
    else {
      resolved.TRetract = 0.0
    }

    if (msg.TKick !== undefined) {
      resolved.TKick = msg.TKick;
    }
    else {
      resolved.TKick = 0.0
    }

    if (msg.TRising !== undefined) {
      resolved.TRising = msg.TRising;
    }
    else {
      resolved.TRising = 0.0
    }

    if (msg.TDown !== undefined) {
      resolved.TDown = msg.TDown;
    }
    else {
      resolved.TDown = 0.0
    }

    return resolved;
    }
};

module.exports = ZMPWalkingParam;
