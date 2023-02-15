// Auto-generated. Do not edit!

// (in-package op3_walking_module_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WalkingParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.init_x_offset = null;
      this.init_y_offset = null;
      this.init_z_offset = null;
      this.init_roll_offset = null;
      this.init_pitch_offset = null;
      this.init_yaw_offset = null;
      this.r_x_offset = null;
      this.r_y_offset = null;
      this.r_z_offset = null;
      this.r_roll_offset = null;
      this.r_pitch_offset = null;
      this.r_yaw_offset = null;
      this.l_x_offset = null;
      this.l_y_offset = null;
      this.l_z_offset = null;
      this.l_roll_offset = null;
      this.l_pitch_offset = null;
      this.l_yaw_offset = null;
      this.period_time = null;
      this.dsp_ratio = null;
      this.step_fb_ratio = null;
      this.x_move_amplitude = null;
      this.y_move_amplitude = null;
      this.z_move_amplitude = null;
      this.angle_move_amplitude = null;
      this.move_aim_on = null;
      this.balance_enable = null;
      this.balance_hip_roll_gain = null;
      this.balance_knee_gain = null;
      this.balance_ankle_roll_gain = null;
      this.balance_ankle_pitch_gain = null;
      this.y_swap_amplitude = null;
      this.z_swap_amplitude = null;
      this.arm_swing_gain = null;
      this.pelvis_offset = null;
      this.hip_pitch_offset = null;
      this.KP_P = null;
      this.KD_P = null;
      this.KI_P = null;
      this.D_ANKLE_P = null;
      this.D_KNEE = null;
      this.D_HIP_P = null;
      this.KP_R = null;
      this.KD_R = null;
      this.KI_R = null;
      this.D_ANKLE_R = null;
      this.D_HIP_R = null;
      this.shoulder_gain = null;
      this.p_gain = null;
      this.i_gain = null;
      this.d_gain = null;
      this.zmp_vx = null;
      this.zmp_vy = null;
      this.zmp_vphi = null;
      this.zmp_useGyro = null;
    }
    else {
      if (initObj.hasOwnProperty('init_x_offset')) {
        this.init_x_offset = initObj.init_x_offset
      }
      else {
        this.init_x_offset = 0.0;
      }
      if (initObj.hasOwnProperty('init_y_offset')) {
        this.init_y_offset = initObj.init_y_offset
      }
      else {
        this.init_y_offset = 0.0;
      }
      if (initObj.hasOwnProperty('init_z_offset')) {
        this.init_z_offset = initObj.init_z_offset
      }
      else {
        this.init_z_offset = 0.0;
      }
      if (initObj.hasOwnProperty('init_roll_offset')) {
        this.init_roll_offset = initObj.init_roll_offset
      }
      else {
        this.init_roll_offset = 0.0;
      }
      if (initObj.hasOwnProperty('init_pitch_offset')) {
        this.init_pitch_offset = initObj.init_pitch_offset
      }
      else {
        this.init_pitch_offset = 0.0;
      }
      if (initObj.hasOwnProperty('init_yaw_offset')) {
        this.init_yaw_offset = initObj.init_yaw_offset
      }
      else {
        this.init_yaw_offset = 0.0;
      }
      if (initObj.hasOwnProperty('r_x_offset')) {
        this.r_x_offset = initObj.r_x_offset
      }
      else {
        this.r_x_offset = 0.0;
      }
      if (initObj.hasOwnProperty('r_y_offset')) {
        this.r_y_offset = initObj.r_y_offset
      }
      else {
        this.r_y_offset = 0.0;
      }
      if (initObj.hasOwnProperty('r_z_offset')) {
        this.r_z_offset = initObj.r_z_offset
      }
      else {
        this.r_z_offset = 0.0;
      }
      if (initObj.hasOwnProperty('r_roll_offset')) {
        this.r_roll_offset = initObj.r_roll_offset
      }
      else {
        this.r_roll_offset = 0.0;
      }
      if (initObj.hasOwnProperty('r_pitch_offset')) {
        this.r_pitch_offset = initObj.r_pitch_offset
      }
      else {
        this.r_pitch_offset = 0.0;
      }
      if (initObj.hasOwnProperty('r_yaw_offset')) {
        this.r_yaw_offset = initObj.r_yaw_offset
      }
      else {
        this.r_yaw_offset = 0.0;
      }
      if (initObj.hasOwnProperty('l_x_offset')) {
        this.l_x_offset = initObj.l_x_offset
      }
      else {
        this.l_x_offset = 0.0;
      }
      if (initObj.hasOwnProperty('l_y_offset')) {
        this.l_y_offset = initObj.l_y_offset
      }
      else {
        this.l_y_offset = 0.0;
      }
      if (initObj.hasOwnProperty('l_z_offset')) {
        this.l_z_offset = initObj.l_z_offset
      }
      else {
        this.l_z_offset = 0.0;
      }
      if (initObj.hasOwnProperty('l_roll_offset')) {
        this.l_roll_offset = initObj.l_roll_offset
      }
      else {
        this.l_roll_offset = 0.0;
      }
      if (initObj.hasOwnProperty('l_pitch_offset')) {
        this.l_pitch_offset = initObj.l_pitch_offset
      }
      else {
        this.l_pitch_offset = 0.0;
      }
      if (initObj.hasOwnProperty('l_yaw_offset')) {
        this.l_yaw_offset = initObj.l_yaw_offset
      }
      else {
        this.l_yaw_offset = 0.0;
      }
      if (initObj.hasOwnProperty('period_time')) {
        this.period_time = initObj.period_time
      }
      else {
        this.period_time = 0.0;
      }
      if (initObj.hasOwnProperty('dsp_ratio')) {
        this.dsp_ratio = initObj.dsp_ratio
      }
      else {
        this.dsp_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('step_fb_ratio')) {
        this.step_fb_ratio = initObj.step_fb_ratio
      }
      else {
        this.step_fb_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('x_move_amplitude')) {
        this.x_move_amplitude = initObj.x_move_amplitude
      }
      else {
        this.x_move_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('y_move_amplitude')) {
        this.y_move_amplitude = initObj.y_move_amplitude
      }
      else {
        this.y_move_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('z_move_amplitude')) {
        this.z_move_amplitude = initObj.z_move_amplitude
      }
      else {
        this.z_move_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('angle_move_amplitude')) {
        this.angle_move_amplitude = initObj.angle_move_amplitude
      }
      else {
        this.angle_move_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('move_aim_on')) {
        this.move_aim_on = initObj.move_aim_on
      }
      else {
        this.move_aim_on = false;
      }
      if (initObj.hasOwnProperty('balance_enable')) {
        this.balance_enable = initObj.balance_enable
      }
      else {
        this.balance_enable = false;
      }
      if (initObj.hasOwnProperty('balance_hip_roll_gain')) {
        this.balance_hip_roll_gain = initObj.balance_hip_roll_gain
      }
      else {
        this.balance_hip_roll_gain = 0.0;
      }
      if (initObj.hasOwnProperty('balance_knee_gain')) {
        this.balance_knee_gain = initObj.balance_knee_gain
      }
      else {
        this.balance_knee_gain = 0.0;
      }
      if (initObj.hasOwnProperty('balance_ankle_roll_gain')) {
        this.balance_ankle_roll_gain = initObj.balance_ankle_roll_gain
      }
      else {
        this.balance_ankle_roll_gain = 0.0;
      }
      if (initObj.hasOwnProperty('balance_ankle_pitch_gain')) {
        this.balance_ankle_pitch_gain = initObj.balance_ankle_pitch_gain
      }
      else {
        this.balance_ankle_pitch_gain = 0.0;
      }
      if (initObj.hasOwnProperty('y_swap_amplitude')) {
        this.y_swap_amplitude = initObj.y_swap_amplitude
      }
      else {
        this.y_swap_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('z_swap_amplitude')) {
        this.z_swap_amplitude = initObj.z_swap_amplitude
      }
      else {
        this.z_swap_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('arm_swing_gain')) {
        this.arm_swing_gain = initObj.arm_swing_gain
      }
      else {
        this.arm_swing_gain = 0.0;
      }
      if (initObj.hasOwnProperty('pelvis_offset')) {
        this.pelvis_offset = initObj.pelvis_offset
      }
      else {
        this.pelvis_offset = 0.0;
      }
      if (initObj.hasOwnProperty('hip_pitch_offset')) {
        this.hip_pitch_offset = initObj.hip_pitch_offset
      }
      else {
        this.hip_pitch_offset = 0.0;
      }
      if (initObj.hasOwnProperty('KP_P')) {
        this.KP_P = initObj.KP_P
      }
      else {
        this.KP_P = 0.0;
      }
      if (initObj.hasOwnProperty('KD_P')) {
        this.KD_P = initObj.KD_P
      }
      else {
        this.KD_P = 0.0;
      }
      if (initObj.hasOwnProperty('KI_P')) {
        this.KI_P = initObj.KI_P
      }
      else {
        this.KI_P = 0.0;
      }
      if (initObj.hasOwnProperty('D_ANKLE_P')) {
        this.D_ANKLE_P = initObj.D_ANKLE_P
      }
      else {
        this.D_ANKLE_P = 0.0;
      }
      if (initObj.hasOwnProperty('D_KNEE')) {
        this.D_KNEE = initObj.D_KNEE
      }
      else {
        this.D_KNEE = 0.0;
      }
      if (initObj.hasOwnProperty('D_HIP_P')) {
        this.D_HIP_P = initObj.D_HIP_P
      }
      else {
        this.D_HIP_P = 0.0;
      }
      if (initObj.hasOwnProperty('KP_R')) {
        this.KP_R = initObj.KP_R
      }
      else {
        this.KP_R = 0.0;
      }
      if (initObj.hasOwnProperty('KD_R')) {
        this.KD_R = initObj.KD_R
      }
      else {
        this.KD_R = 0.0;
      }
      if (initObj.hasOwnProperty('KI_R')) {
        this.KI_R = initObj.KI_R
      }
      else {
        this.KI_R = 0.0;
      }
      if (initObj.hasOwnProperty('D_ANKLE_R')) {
        this.D_ANKLE_R = initObj.D_ANKLE_R
      }
      else {
        this.D_ANKLE_R = 0.0;
      }
      if (initObj.hasOwnProperty('D_HIP_R')) {
        this.D_HIP_R = initObj.D_HIP_R
      }
      else {
        this.D_HIP_R = 0.0;
      }
      if (initObj.hasOwnProperty('shoulder_gain')) {
        this.shoulder_gain = initObj.shoulder_gain
      }
      else {
        this.shoulder_gain = 0.0;
      }
      if (initObj.hasOwnProperty('p_gain')) {
        this.p_gain = initObj.p_gain
      }
      else {
        this.p_gain = 0;
      }
      if (initObj.hasOwnProperty('i_gain')) {
        this.i_gain = initObj.i_gain
      }
      else {
        this.i_gain = 0;
      }
      if (initObj.hasOwnProperty('d_gain')) {
        this.d_gain = initObj.d_gain
      }
      else {
        this.d_gain = 0;
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
      if (initObj.hasOwnProperty('zmp_useGyro')) {
        this.zmp_useGyro = initObj.zmp_useGyro
      }
      else {
        this.zmp_useGyro = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WalkingParam
    // Serialize message field [init_x_offset]
    bufferOffset = _serializer.float32(obj.init_x_offset, buffer, bufferOffset);
    // Serialize message field [init_y_offset]
    bufferOffset = _serializer.float32(obj.init_y_offset, buffer, bufferOffset);
    // Serialize message field [init_z_offset]
    bufferOffset = _serializer.float32(obj.init_z_offset, buffer, bufferOffset);
    // Serialize message field [init_roll_offset]
    bufferOffset = _serializer.float32(obj.init_roll_offset, buffer, bufferOffset);
    // Serialize message field [init_pitch_offset]
    bufferOffset = _serializer.float32(obj.init_pitch_offset, buffer, bufferOffset);
    // Serialize message field [init_yaw_offset]
    bufferOffset = _serializer.float32(obj.init_yaw_offset, buffer, bufferOffset);
    // Serialize message field [r_x_offset]
    bufferOffset = _serializer.float32(obj.r_x_offset, buffer, bufferOffset);
    // Serialize message field [r_y_offset]
    bufferOffset = _serializer.float32(obj.r_y_offset, buffer, bufferOffset);
    // Serialize message field [r_z_offset]
    bufferOffset = _serializer.float32(obj.r_z_offset, buffer, bufferOffset);
    // Serialize message field [r_roll_offset]
    bufferOffset = _serializer.float32(obj.r_roll_offset, buffer, bufferOffset);
    // Serialize message field [r_pitch_offset]
    bufferOffset = _serializer.float32(obj.r_pitch_offset, buffer, bufferOffset);
    // Serialize message field [r_yaw_offset]
    bufferOffset = _serializer.float32(obj.r_yaw_offset, buffer, bufferOffset);
    // Serialize message field [l_x_offset]
    bufferOffset = _serializer.float32(obj.l_x_offset, buffer, bufferOffset);
    // Serialize message field [l_y_offset]
    bufferOffset = _serializer.float32(obj.l_y_offset, buffer, bufferOffset);
    // Serialize message field [l_z_offset]
    bufferOffset = _serializer.float32(obj.l_z_offset, buffer, bufferOffset);
    // Serialize message field [l_roll_offset]
    bufferOffset = _serializer.float32(obj.l_roll_offset, buffer, bufferOffset);
    // Serialize message field [l_pitch_offset]
    bufferOffset = _serializer.float32(obj.l_pitch_offset, buffer, bufferOffset);
    // Serialize message field [l_yaw_offset]
    bufferOffset = _serializer.float32(obj.l_yaw_offset, buffer, bufferOffset);
    // Serialize message field [period_time]
    bufferOffset = _serializer.float32(obj.period_time, buffer, bufferOffset);
    // Serialize message field [dsp_ratio]
    bufferOffset = _serializer.float32(obj.dsp_ratio, buffer, bufferOffset);
    // Serialize message field [step_fb_ratio]
    bufferOffset = _serializer.float32(obj.step_fb_ratio, buffer, bufferOffset);
    // Serialize message field [x_move_amplitude]
    bufferOffset = _serializer.float32(obj.x_move_amplitude, buffer, bufferOffset);
    // Serialize message field [y_move_amplitude]
    bufferOffset = _serializer.float32(obj.y_move_amplitude, buffer, bufferOffset);
    // Serialize message field [z_move_amplitude]
    bufferOffset = _serializer.float32(obj.z_move_amplitude, buffer, bufferOffset);
    // Serialize message field [angle_move_amplitude]
    bufferOffset = _serializer.float32(obj.angle_move_amplitude, buffer, bufferOffset);
    // Serialize message field [move_aim_on]
    bufferOffset = _serializer.bool(obj.move_aim_on, buffer, bufferOffset);
    // Serialize message field [balance_enable]
    bufferOffset = _serializer.bool(obj.balance_enable, buffer, bufferOffset);
    // Serialize message field [balance_hip_roll_gain]
    bufferOffset = _serializer.float32(obj.balance_hip_roll_gain, buffer, bufferOffset);
    // Serialize message field [balance_knee_gain]
    bufferOffset = _serializer.float32(obj.balance_knee_gain, buffer, bufferOffset);
    // Serialize message field [balance_ankle_roll_gain]
    bufferOffset = _serializer.float32(obj.balance_ankle_roll_gain, buffer, bufferOffset);
    // Serialize message field [balance_ankle_pitch_gain]
    bufferOffset = _serializer.float32(obj.balance_ankle_pitch_gain, buffer, bufferOffset);
    // Serialize message field [y_swap_amplitude]
    bufferOffset = _serializer.float32(obj.y_swap_amplitude, buffer, bufferOffset);
    // Serialize message field [z_swap_amplitude]
    bufferOffset = _serializer.float32(obj.z_swap_amplitude, buffer, bufferOffset);
    // Serialize message field [arm_swing_gain]
    bufferOffset = _serializer.float32(obj.arm_swing_gain, buffer, bufferOffset);
    // Serialize message field [pelvis_offset]
    bufferOffset = _serializer.float32(obj.pelvis_offset, buffer, bufferOffset);
    // Serialize message field [hip_pitch_offset]
    bufferOffset = _serializer.float32(obj.hip_pitch_offset, buffer, bufferOffset);
    // Serialize message field [KP_P]
    bufferOffset = _serializer.float32(obj.KP_P, buffer, bufferOffset);
    // Serialize message field [KD_P]
    bufferOffset = _serializer.float32(obj.KD_P, buffer, bufferOffset);
    // Serialize message field [KI_P]
    bufferOffset = _serializer.float32(obj.KI_P, buffer, bufferOffset);
    // Serialize message field [D_ANKLE_P]
    bufferOffset = _serializer.float32(obj.D_ANKLE_P, buffer, bufferOffset);
    // Serialize message field [D_KNEE]
    bufferOffset = _serializer.float32(obj.D_KNEE, buffer, bufferOffset);
    // Serialize message field [D_HIP_P]
    bufferOffset = _serializer.float32(obj.D_HIP_P, buffer, bufferOffset);
    // Serialize message field [KP_R]
    bufferOffset = _serializer.float32(obj.KP_R, buffer, bufferOffset);
    // Serialize message field [KD_R]
    bufferOffset = _serializer.float32(obj.KD_R, buffer, bufferOffset);
    // Serialize message field [KI_R]
    bufferOffset = _serializer.float32(obj.KI_R, buffer, bufferOffset);
    // Serialize message field [D_ANKLE_R]
    bufferOffset = _serializer.float32(obj.D_ANKLE_R, buffer, bufferOffset);
    // Serialize message field [D_HIP_R]
    bufferOffset = _serializer.float32(obj.D_HIP_R, buffer, bufferOffset);
    // Serialize message field [shoulder_gain]
    bufferOffset = _serializer.float32(obj.shoulder_gain, buffer, bufferOffset);
    // Serialize message field [p_gain]
    bufferOffset = _serializer.int32(obj.p_gain, buffer, bufferOffset);
    // Serialize message field [i_gain]
    bufferOffset = _serializer.int32(obj.i_gain, buffer, bufferOffset);
    // Serialize message field [d_gain]
    bufferOffset = _serializer.int32(obj.d_gain, buffer, bufferOffset);
    // Serialize message field [zmp_vx]
    bufferOffset = _serializer.float32(obj.zmp_vx, buffer, bufferOffset);
    // Serialize message field [zmp_vy]
    bufferOffset = _serializer.float32(obj.zmp_vy, buffer, bufferOffset);
    // Serialize message field [zmp_vphi]
    bufferOffset = _serializer.float32(obj.zmp_vphi, buffer, bufferOffset);
    // Serialize message field [zmp_useGyro]
    bufferOffset = _serializer.bool(obj.zmp_useGyro, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WalkingParam
    let len;
    let data = new WalkingParam(null);
    // Deserialize message field [init_x_offset]
    data.init_x_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [init_y_offset]
    data.init_y_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [init_z_offset]
    data.init_z_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [init_roll_offset]
    data.init_roll_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [init_pitch_offset]
    data.init_pitch_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [init_yaw_offset]
    data.init_yaw_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r_x_offset]
    data.r_x_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r_y_offset]
    data.r_y_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r_z_offset]
    data.r_z_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r_roll_offset]
    data.r_roll_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r_pitch_offset]
    data.r_pitch_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r_yaw_offset]
    data.r_yaw_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l_x_offset]
    data.l_x_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l_y_offset]
    data.l_y_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l_z_offset]
    data.l_z_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l_roll_offset]
    data.l_roll_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l_pitch_offset]
    data.l_pitch_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l_yaw_offset]
    data.l_yaw_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [period_time]
    data.period_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dsp_ratio]
    data.dsp_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [step_fb_ratio]
    data.step_fb_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_move_amplitude]
    data.x_move_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_move_amplitude]
    data.y_move_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z_move_amplitude]
    data.z_move_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_move_amplitude]
    data.angle_move_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [move_aim_on]
    data.move_aim_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [balance_enable]
    data.balance_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [balance_hip_roll_gain]
    data.balance_hip_roll_gain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [balance_knee_gain]
    data.balance_knee_gain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [balance_ankle_roll_gain]
    data.balance_ankle_roll_gain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [balance_ankle_pitch_gain]
    data.balance_ankle_pitch_gain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_swap_amplitude]
    data.y_swap_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z_swap_amplitude]
    data.z_swap_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm_swing_gain]
    data.arm_swing_gain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pelvis_offset]
    data.pelvis_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hip_pitch_offset]
    data.hip_pitch_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_P]
    data.KP_P = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_P]
    data.KD_P = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KI_P]
    data.KI_P = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [D_ANKLE_P]
    data.D_ANKLE_P = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [D_KNEE]
    data.D_KNEE = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [D_HIP_P]
    data.D_HIP_P = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_R]
    data.KP_R = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_R]
    data.KD_R = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KI_R]
    data.KI_R = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [D_ANKLE_R]
    data.D_ANKLE_R = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [D_HIP_R]
    data.D_HIP_R = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [shoulder_gain]
    data.shoulder_gain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [p_gain]
    data.p_gain = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [i_gain]
    data.i_gain = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [d_gain]
    data.d_gain = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [zmp_vx]
    data.zmp_vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmp_vy]
    data.zmp_vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmp_vphi]
    data.zmp_vphi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmp_useGyro]
    data.zmp_useGyro = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 211;
  }

  static datatype() {
    // Returns string type for a message object
    return 'op3_walking_module_msgs/WalkingParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29c5fd0a9fcd330b7de450bfe61e96dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ####### walking init pose #######
    float32 init_x_offset
    float32 init_y_offset
    float32 init_z_offset
    float32 init_roll_offset
    float32 init_pitch_offset
    float32 init_yaw_offset
    float32 r_x_offset
    float32 r_y_offset
    float32 r_z_offset
    float32 r_roll_offset
    float32 r_pitch_offset
    float32 r_yaw_offset
    float32 l_x_offset
    float32 l_y_offset
    float32 l_z_offset
    float32 l_roll_offset
    float32 l_pitch_offset
    float32 l_yaw_offset
    
    
    ####### time parameter #####
    float32 period_time
    float32 dsp_ratio
    float32 step_fb_ratio
    
    ########## walking parameter ########
    float32 x_move_amplitude
    float32 y_move_amplitude
    float32 z_move_amplitude
    float32 angle_move_amplitude
    bool move_aim_on
    
    ########## balance parameter ##########
    bool balance_enable
    float32 balance_hip_roll_gain
    float32 balance_knee_gain
    float32 balance_ankle_roll_gain
    float32 balance_ankle_pitch_gain
    float32 y_swap_amplitude
    float32 z_swap_amplitude
    float32 arm_swing_gain
    float32 pelvis_offset
    float32 hip_pitch_offset
    
    ########## balance parameter ##########
    float32 KP_P
    float32 KD_P
    float32 KI_P
    float32 D_ANKLE_P
    float32 D_KNEE
    float32 D_HIP_P
    
    float32 KP_R
    float32 KD_R
    float32 KI_R
    float32 D_ANKLE_R
    float32 D_HIP_R
    float32 shoulder_gain
    
    ########## gain parameter ##########
    int32 p_gain
    int32 i_gain
    int32 d_gain
    
    ########## ZMP WALKING BIT-BOTS ###########
    float32 zmp_vx
    float32 zmp_vy
    float32 zmp_vphi
    
    bool zmp_useGyro
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WalkingParam(null);
    if (msg.init_x_offset !== undefined) {
      resolved.init_x_offset = msg.init_x_offset;
    }
    else {
      resolved.init_x_offset = 0.0
    }

    if (msg.init_y_offset !== undefined) {
      resolved.init_y_offset = msg.init_y_offset;
    }
    else {
      resolved.init_y_offset = 0.0
    }

    if (msg.init_z_offset !== undefined) {
      resolved.init_z_offset = msg.init_z_offset;
    }
    else {
      resolved.init_z_offset = 0.0
    }

    if (msg.init_roll_offset !== undefined) {
      resolved.init_roll_offset = msg.init_roll_offset;
    }
    else {
      resolved.init_roll_offset = 0.0
    }

    if (msg.init_pitch_offset !== undefined) {
      resolved.init_pitch_offset = msg.init_pitch_offset;
    }
    else {
      resolved.init_pitch_offset = 0.0
    }

    if (msg.init_yaw_offset !== undefined) {
      resolved.init_yaw_offset = msg.init_yaw_offset;
    }
    else {
      resolved.init_yaw_offset = 0.0
    }

    if (msg.r_x_offset !== undefined) {
      resolved.r_x_offset = msg.r_x_offset;
    }
    else {
      resolved.r_x_offset = 0.0
    }

    if (msg.r_y_offset !== undefined) {
      resolved.r_y_offset = msg.r_y_offset;
    }
    else {
      resolved.r_y_offset = 0.0
    }

    if (msg.r_z_offset !== undefined) {
      resolved.r_z_offset = msg.r_z_offset;
    }
    else {
      resolved.r_z_offset = 0.0
    }

    if (msg.r_roll_offset !== undefined) {
      resolved.r_roll_offset = msg.r_roll_offset;
    }
    else {
      resolved.r_roll_offset = 0.0
    }

    if (msg.r_pitch_offset !== undefined) {
      resolved.r_pitch_offset = msg.r_pitch_offset;
    }
    else {
      resolved.r_pitch_offset = 0.0
    }

    if (msg.r_yaw_offset !== undefined) {
      resolved.r_yaw_offset = msg.r_yaw_offset;
    }
    else {
      resolved.r_yaw_offset = 0.0
    }

    if (msg.l_x_offset !== undefined) {
      resolved.l_x_offset = msg.l_x_offset;
    }
    else {
      resolved.l_x_offset = 0.0
    }

    if (msg.l_y_offset !== undefined) {
      resolved.l_y_offset = msg.l_y_offset;
    }
    else {
      resolved.l_y_offset = 0.0
    }

    if (msg.l_z_offset !== undefined) {
      resolved.l_z_offset = msg.l_z_offset;
    }
    else {
      resolved.l_z_offset = 0.0
    }

    if (msg.l_roll_offset !== undefined) {
      resolved.l_roll_offset = msg.l_roll_offset;
    }
    else {
      resolved.l_roll_offset = 0.0
    }

    if (msg.l_pitch_offset !== undefined) {
      resolved.l_pitch_offset = msg.l_pitch_offset;
    }
    else {
      resolved.l_pitch_offset = 0.0
    }

    if (msg.l_yaw_offset !== undefined) {
      resolved.l_yaw_offset = msg.l_yaw_offset;
    }
    else {
      resolved.l_yaw_offset = 0.0
    }

    if (msg.period_time !== undefined) {
      resolved.period_time = msg.period_time;
    }
    else {
      resolved.period_time = 0.0
    }

    if (msg.dsp_ratio !== undefined) {
      resolved.dsp_ratio = msg.dsp_ratio;
    }
    else {
      resolved.dsp_ratio = 0.0
    }

    if (msg.step_fb_ratio !== undefined) {
      resolved.step_fb_ratio = msg.step_fb_ratio;
    }
    else {
      resolved.step_fb_ratio = 0.0
    }

    if (msg.x_move_amplitude !== undefined) {
      resolved.x_move_amplitude = msg.x_move_amplitude;
    }
    else {
      resolved.x_move_amplitude = 0.0
    }

    if (msg.y_move_amplitude !== undefined) {
      resolved.y_move_amplitude = msg.y_move_amplitude;
    }
    else {
      resolved.y_move_amplitude = 0.0
    }

    if (msg.z_move_amplitude !== undefined) {
      resolved.z_move_amplitude = msg.z_move_amplitude;
    }
    else {
      resolved.z_move_amplitude = 0.0
    }

    if (msg.angle_move_amplitude !== undefined) {
      resolved.angle_move_amplitude = msg.angle_move_amplitude;
    }
    else {
      resolved.angle_move_amplitude = 0.0
    }

    if (msg.move_aim_on !== undefined) {
      resolved.move_aim_on = msg.move_aim_on;
    }
    else {
      resolved.move_aim_on = false
    }

    if (msg.balance_enable !== undefined) {
      resolved.balance_enable = msg.balance_enable;
    }
    else {
      resolved.balance_enable = false
    }

    if (msg.balance_hip_roll_gain !== undefined) {
      resolved.balance_hip_roll_gain = msg.balance_hip_roll_gain;
    }
    else {
      resolved.balance_hip_roll_gain = 0.0
    }

    if (msg.balance_knee_gain !== undefined) {
      resolved.balance_knee_gain = msg.balance_knee_gain;
    }
    else {
      resolved.balance_knee_gain = 0.0
    }

    if (msg.balance_ankle_roll_gain !== undefined) {
      resolved.balance_ankle_roll_gain = msg.balance_ankle_roll_gain;
    }
    else {
      resolved.balance_ankle_roll_gain = 0.0
    }

    if (msg.balance_ankle_pitch_gain !== undefined) {
      resolved.balance_ankle_pitch_gain = msg.balance_ankle_pitch_gain;
    }
    else {
      resolved.balance_ankle_pitch_gain = 0.0
    }

    if (msg.y_swap_amplitude !== undefined) {
      resolved.y_swap_amplitude = msg.y_swap_amplitude;
    }
    else {
      resolved.y_swap_amplitude = 0.0
    }

    if (msg.z_swap_amplitude !== undefined) {
      resolved.z_swap_amplitude = msg.z_swap_amplitude;
    }
    else {
      resolved.z_swap_amplitude = 0.0
    }

    if (msg.arm_swing_gain !== undefined) {
      resolved.arm_swing_gain = msg.arm_swing_gain;
    }
    else {
      resolved.arm_swing_gain = 0.0
    }

    if (msg.pelvis_offset !== undefined) {
      resolved.pelvis_offset = msg.pelvis_offset;
    }
    else {
      resolved.pelvis_offset = 0.0
    }

    if (msg.hip_pitch_offset !== undefined) {
      resolved.hip_pitch_offset = msg.hip_pitch_offset;
    }
    else {
      resolved.hip_pitch_offset = 0.0
    }

    if (msg.KP_P !== undefined) {
      resolved.KP_P = msg.KP_P;
    }
    else {
      resolved.KP_P = 0.0
    }

    if (msg.KD_P !== undefined) {
      resolved.KD_P = msg.KD_P;
    }
    else {
      resolved.KD_P = 0.0
    }

    if (msg.KI_P !== undefined) {
      resolved.KI_P = msg.KI_P;
    }
    else {
      resolved.KI_P = 0.0
    }

    if (msg.D_ANKLE_P !== undefined) {
      resolved.D_ANKLE_P = msg.D_ANKLE_P;
    }
    else {
      resolved.D_ANKLE_P = 0.0
    }

    if (msg.D_KNEE !== undefined) {
      resolved.D_KNEE = msg.D_KNEE;
    }
    else {
      resolved.D_KNEE = 0.0
    }

    if (msg.D_HIP_P !== undefined) {
      resolved.D_HIP_P = msg.D_HIP_P;
    }
    else {
      resolved.D_HIP_P = 0.0
    }

    if (msg.KP_R !== undefined) {
      resolved.KP_R = msg.KP_R;
    }
    else {
      resolved.KP_R = 0.0
    }

    if (msg.KD_R !== undefined) {
      resolved.KD_R = msg.KD_R;
    }
    else {
      resolved.KD_R = 0.0
    }

    if (msg.KI_R !== undefined) {
      resolved.KI_R = msg.KI_R;
    }
    else {
      resolved.KI_R = 0.0
    }

    if (msg.D_ANKLE_R !== undefined) {
      resolved.D_ANKLE_R = msg.D_ANKLE_R;
    }
    else {
      resolved.D_ANKLE_R = 0.0
    }

    if (msg.D_HIP_R !== undefined) {
      resolved.D_HIP_R = msg.D_HIP_R;
    }
    else {
      resolved.D_HIP_R = 0.0
    }

    if (msg.shoulder_gain !== undefined) {
      resolved.shoulder_gain = msg.shoulder_gain;
    }
    else {
      resolved.shoulder_gain = 0.0
    }

    if (msg.p_gain !== undefined) {
      resolved.p_gain = msg.p_gain;
    }
    else {
      resolved.p_gain = 0
    }

    if (msg.i_gain !== undefined) {
      resolved.i_gain = msg.i_gain;
    }
    else {
      resolved.i_gain = 0
    }

    if (msg.d_gain !== undefined) {
      resolved.d_gain = msg.d_gain;
    }
    else {
      resolved.d_gain = 0
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

    if (msg.zmp_useGyro !== undefined) {
      resolved.zmp_useGyro = msg.zmp_useGyro;
    }
    else {
      resolved.zmp_useGyro = false
    }

    return resolved;
    }
};

module.exports = WalkingParam;
