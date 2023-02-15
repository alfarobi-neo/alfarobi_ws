// Auto-generated. Do not edit!

// (in-package capture_step_module_msgs.msg)


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
      this.halt_pos_leg_ext = null;
      this.halt_pos_leg_roll_ext = null;
      this.halt_pos_leg_pitch_ext = null;
      this.halt_pos_foot_roll_ext = null;
      this.halt_pos_foot_pitch_ext = null;
      this.const_ground_push = null;
      this.propt_ground_push = null;
      this.const_step_height = null;
      this.propt_step_height = null;
      this.swing_start = null;
      this.swing_stop = null;
      this.sagittal_swg_fwd = null;
      this.sagittal_swg_bwd = null;
      this.lateral_swg = null;
      this.lateral_swg_offset = null;
      this.trng_lateral_swg_offset = null;
      this.rotational_swg = null;
      this.rotational_swg_offset = null;
      this.lateral_hip_swg = null;
      this.fwd_lean = null;
      this.bwd_lean = null;
      this.fwd_trng_lean = null;
      this.gait_vel_limit = null;
      this.sagittal_acc = null;
      this.lateral_acc = null;
      this.rotational_acc = null;
      this.const_step_freq = null;
      this.sagittal_prop_step_freq = null;
      this.lateral_prop_step_freq = null;
      this.x_move_amplitude = null;
      this.y_move_amplitude = null;
      this.angle_move_amplitude = null;
      this.halt_position = null;
      this.leg_lifting = null;
      this.leg_swing = null;
      this.lateral_swing = null;
      this.leaning = null;
    }
    else {
      if (initObj.hasOwnProperty('halt_pos_leg_ext')) {
        this.halt_pos_leg_ext = initObj.halt_pos_leg_ext
      }
      else {
        this.halt_pos_leg_ext = 0.0;
      }
      if (initObj.hasOwnProperty('halt_pos_leg_roll_ext')) {
        this.halt_pos_leg_roll_ext = initObj.halt_pos_leg_roll_ext
      }
      else {
        this.halt_pos_leg_roll_ext = 0.0;
      }
      if (initObj.hasOwnProperty('halt_pos_leg_pitch_ext')) {
        this.halt_pos_leg_pitch_ext = initObj.halt_pos_leg_pitch_ext
      }
      else {
        this.halt_pos_leg_pitch_ext = 0.0;
      }
      if (initObj.hasOwnProperty('halt_pos_foot_roll_ext')) {
        this.halt_pos_foot_roll_ext = initObj.halt_pos_foot_roll_ext
      }
      else {
        this.halt_pos_foot_roll_ext = 0.0;
      }
      if (initObj.hasOwnProperty('halt_pos_foot_pitch_ext')) {
        this.halt_pos_foot_pitch_ext = initObj.halt_pos_foot_pitch_ext
      }
      else {
        this.halt_pos_foot_pitch_ext = 0.0;
      }
      if (initObj.hasOwnProperty('const_ground_push')) {
        this.const_ground_push = initObj.const_ground_push
      }
      else {
        this.const_ground_push = 0.0;
      }
      if (initObj.hasOwnProperty('propt_ground_push')) {
        this.propt_ground_push = initObj.propt_ground_push
      }
      else {
        this.propt_ground_push = 0.0;
      }
      if (initObj.hasOwnProperty('const_step_height')) {
        this.const_step_height = initObj.const_step_height
      }
      else {
        this.const_step_height = 0.0;
      }
      if (initObj.hasOwnProperty('propt_step_height')) {
        this.propt_step_height = initObj.propt_step_height
      }
      else {
        this.propt_step_height = 0.0;
      }
      if (initObj.hasOwnProperty('swing_start')) {
        this.swing_start = initObj.swing_start
      }
      else {
        this.swing_start = 0.0;
      }
      if (initObj.hasOwnProperty('swing_stop')) {
        this.swing_stop = initObj.swing_stop
      }
      else {
        this.swing_stop = 0.0;
      }
      if (initObj.hasOwnProperty('sagittal_swg_fwd')) {
        this.sagittal_swg_fwd = initObj.sagittal_swg_fwd
      }
      else {
        this.sagittal_swg_fwd = 0.0;
      }
      if (initObj.hasOwnProperty('sagittal_swg_bwd')) {
        this.sagittal_swg_bwd = initObj.sagittal_swg_bwd
      }
      else {
        this.sagittal_swg_bwd = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_swg')) {
        this.lateral_swg = initObj.lateral_swg
      }
      else {
        this.lateral_swg = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_swg_offset')) {
        this.lateral_swg_offset = initObj.lateral_swg_offset
      }
      else {
        this.lateral_swg_offset = 0.0;
      }
      if (initObj.hasOwnProperty('trng_lateral_swg_offset')) {
        this.trng_lateral_swg_offset = initObj.trng_lateral_swg_offset
      }
      else {
        this.trng_lateral_swg_offset = 0.0;
      }
      if (initObj.hasOwnProperty('rotational_swg')) {
        this.rotational_swg = initObj.rotational_swg
      }
      else {
        this.rotational_swg = 0.0;
      }
      if (initObj.hasOwnProperty('rotational_swg_offset')) {
        this.rotational_swg_offset = initObj.rotational_swg_offset
      }
      else {
        this.rotational_swg_offset = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_hip_swg')) {
        this.lateral_hip_swg = initObj.lateral_hip_swg
      }
      else {
        this.lateral_hip_swg = 0.0;
      }
      if (initObj.hasOwnProperty('fwd_lean')) {
        this.fwd_lean = initObj.fwd_lean
      }
      else {
        this.fwd_lean = 0.0;
      }
      if (initObj.hasOwnProperty('bwd_lean')) {
        this.bwd_lean = initObj.bwd_lean
      }
      else {
        this.bwd_lean = 0.0;
      }
      if (initObj.hasOwnProperty('fwd_trng_lean')) {
        this.fwd_trng_lean = initObj.fwd_trng_lean
      }
      else {
        this.fwd_trng_lean = 0.0;
      }
      if (initObj.hasOwnProperty('gait_vel_limit')) {
        this.gait_vel_limit = initObj.gait_vel_limit
      }
      else {
        this.gait_vel_limit = 0.0;
      }
      if (initObj.hasOwnProperty('sagittal_acc')) {
        this.sagittal_acc = initObj.sagittal_acc
      }
      else {
        this.sagittal_acc = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_acc')) {
        this.lateral_acc = initObj.lateral_acc
      }
      else {
        this.lateral_acc = 0.0;
      }
      if (initObj.hasOwnProperty('rotational_acc')) {
        this.rotational_acc = initObj.rotational_acc
      }
      else {
        this.rotational_acc = 0.0;
      }
      if (initObj.hasOwnProperty('const_step_freq')) {
        this.const_step_freq = initObj.const_step_freq
      }
      else {
        this.const_step_freq = 0.0;
      }
      if (initObj.hasOwnProperty('sagittal_prop_step_freq')) {
        this.sagittal_prop_step_freq = initObj.sagittal_prop_step_freq
      }
      else {
        this.sagittal_prop_step_freq = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_prop_step_freq')) {
        this.lateral_prop_step_freq = initObj.lateral_prop_step_freq
      }
      else {
        this.lateral_prop_step_freq = 0.0;
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
      if (initObj.hasOwnProperty('angle_move_amplitude')) {
        this.angle_move_amplitude = initObj.angle_move_amplitude
      }
      else {
        this.angle_move_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('halt_position')) {
        this.halt_position = initObj.halt_position
      }
      else {
        this.halt_position = false;
      }
      if (initObj.hasOwnProperty('leg_lifting')) {
        this.leg_lifting = initObj.leg_lifting
      }
      else {
        this.leg_lifting = false;
      }
      if (initObj.hasOwnProperty('leg_swing')) {
        this.leg_swing = initObj.leg_swing
      }
      else {
        this.leg_swing = false;
      }
      if (initObj.hasOwnProperty('lateral_swing')) {
        this.lateral_swing = initObj.lateral_swing
      }
      else {
        this.lateral_swing = false;
      }
      if (initObj.hasOwnProperty('leaning')) {
        this.leaning = initObj.leaning
      }
      else {
        this.leaning = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WalkingParam
    // Serialize message field [halt_pos_leg_ext]
    bufferOffset = _serializer.float32(obj.halt_pos_leg_ext, buffer, bufferOffset);
    // Serialize message field [halt_pos_leg_roll_ext]
    bufferOffset = _serializer.float32(obj.halt_pos_leg_roll_ext, buffer, bufferOffset);
    // Serialize message field [halt_pos_leg_pitch_ext]
    bufferOffset = _serializer.float32(obj.halt_pos_leg_pitch_ext, buffer, bufferOffset);
    // Serialize message field [halt_pos_foot_roll_ext]
    bufferOffset = _serializer.float32(obj.halt_pos_foot_roll_ext, buffer, bufferOffset);
    // Serialize message field [halt_pos_foot_pitch_ext]
    bufferOffset = _serializer.float32(obj.halt_pos_foot_pitch_ext, buffer, bufferOffset);
    // Serialize message field [const_ground_push]
    bufferOffset = _serializer.float32(obj.const_ground_push, buffer, bufferOffset);
    // Serialize message field [propt_ground_push]
    bufferOffset = _serializer.float32(obj.propt_ground_push, buffer, bufferOffset);
    // Serialize message field [const_step_height]
    bufferOffset = _serializer.float32(obj.const_step_height, buffer, bufferOffset);
    // Serialize message field [propt_step_height]
    bufferOffset = _serializer.float32(obj.propt_step_height, buffer, bufferOffset);
    // Serialize message field [swing_start]
    bufferOffset = _serializer.float32(obj.swing_start, buffer, bufferOffset);
    // Serialize message field [swing_stop]
    bufferOffset = _serializer.float32(obj.swing_stop, buffer, bufferOffset);
    // Serialize message field [sagittal_swg_fwd]
    bufferOffset = _serializer.float32(obj.sagittal_swg_fwd, buffer, bufferOffset);
    // Serialize message field [sagittal_swg_bwd]
    bufferOffset = _serializer.float32(obj.sagittal_swg_bwd, buffer, bufferOffset);
    // Serialize message field [lateral_swg]
    bufferOffset = _serializer.float32(obj.lateral_swg, buffer, bufferOffset);
    // Serialize message field [lateral_swg_offset]
    bufferOffset = _serializer.float32(obj.lateral_swg_offset, buffer, bufferOffset);
    // Serialize message field [trng_lateral_swg_offset]
    bufferOffset = _serializer.float32(obj.trng_lateral_swg_offset, buffer, bufferOffset);
    // Serialize message field [rotational_swg]
    bufferOffset = _serializer.float32(obj.rotational_swg, buffer, bufferOffset);
    // Serialize message field [rotational_swg_offset]
    bufferOffset = _serializer.float32(obj.rotational_swg_offset, buffer, bufferOffset);
    // Serialize message field [lateral_hip_swg]
    bufferOffset = _serializer.float32(obj.lateral_hip_swg, buffer, bufferOffset);
    // Serialize message field [fwd_lean]
    bufferOffset = _serializer.float32(obj.fwd_lean, buffer, bufferOffset);
    // Serialize message field [bwd_lean]
    bufferOffset = _serializer.float32(obj.bwd_lean, buffer, bufferOffset);
    // Serialize message field [fwd_trng_lean]
    bufferOffset = _serializer.float32(obj.fwd_trng_lean, buffer, bufferOffset);
    // Serialize message field [gait_vel_limit]
    bufferOffset = _serializer.float32(obj.gait_vel_limit, buffer, bufferOffset);
    // Serialize message field [sagittal_acc]
    bufferOffset = _serializer.float32(obj.sagittal_acc, buffer, bufferOffset);
    // Serialize message field [lateral_acc]
    bufferOffset = _serializer.float32(obj.lateral_acc, buffer, bufferOffset);
    // Serialize message field [rotational_acc]
    bufferOffset = _serializer.float32(obj.rotational_acc, buffer, bufferOffset);
    // Serialize message field [const_step_freq]
    bufferOffset = _serializer.float32(obj.const_step_freq, buffer, bufferOffset);
    // Serialize message field [sagittal_prop_step_freq]
    bufferOffset = _serializer.float32(obj.sagittal_prop_step_freq, buffer, bufferOffset);
    // Serialize message field [lateral_prop_step_freq]
    bufferOffset = _serializer.float32(obj.lateral_prop_step_freq, buffer, bufferOffset);
    // Serialize message field [x_move_amplitude]
    bufferOffset = _serializer.float32(obj.x_move_amplitude, buffer, bufferOffset);
    // Serialize message field [y_move_amplitude]
    bufferOffset = _serializer.float32(obj.y_move_amplitude, buffer, bufferOffset);
    // Serialize message field [angle_move_amplitude]
    bufferOffset = _serializer.float32(obj.angle_move_amplitude, buffer, bufferOffset);
    // Serialize message field [halt_position]
    bufferOffset = _serializer.bool(obj.halt_position, buffer, bufferOffset);
    // Serialize message field [leg_lifting]
    bufferOffset = _serializer.bool(obj.leg_lifting, buffer, bufferOffset);
    // Serialize message field [leg_swing]
    bufferOffset = _serializer.bool(obj.leg_swing, buffer, bufferOffset);
    // Serialize message field [lateral_swing]
    bufferOffset = _serializer.bool(obj.lateral_swing, buffer, bufferOffset);
    // Serialize message field [leaning]
    bufferOffset = _serializer.bool(obj.leaning, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WalkingParam
    let len;
    let data = new WalkingParam(null);
    // Deserialize message field [halt_pos_leg_ext]
    data.halt_pos_leg_ext = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [halt_pos_leg_roll_ext]
    data.halt_pos_leg_roll_ext = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [halt_pos_leg_pitch_ext]
    data.halt_pos_leg_pitch_ext = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [halt_pos_foot_roll_ext]
    data.halt_pos_foot_roll_ext = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [halt_pos_foot_pitch_ext]
    data.halt_pos_foot_pitch_ext = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [const_ground_push]
    data.const_ground_push = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [propt_ground_push]
    data.propt_ground_push = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [const_step_height]
    data.const_step_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [propt_step_height]
    data.propt_step_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [swing_start]
    data.swing_start = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [swing_stop]
    data.swing_stop = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sagittal_swg_fwd]
    data.sagittal_swg_fwd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sagittal_swg_bwd]
    data.sagittal_swg_bwd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_swg]
    data.lateral_swg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_swg_offset]
    data.lateral_swg_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trng_lateral_swg_offset]
    data.trng_lateral_swg_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotational_swg]
    data.rotational_swg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotational_swg_offset]
    data.rotational_swg_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_hip_swg]
    data.lateral_hip_swg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fwd_lean]
    data.fwd_lean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bwd_lean]
    data.bwd_lean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fwd_trng_lean]
    data.fwd_trng_lean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gait_vel_limit]
    data.gait_vel_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sagittal_acc]
    data.sagittal_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_acc]
    data.lateral_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotational_acc]
    data.rotational_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [const_step_freq]
    data.const_step_freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sagittal_prop_step_freq]
    data.sagittal_prop_step_freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_prop_step_freq]
    data.lateral_prop_step_freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_move_amplitude]
    data.x_move_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_move_amplitude]
    data.y_move_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_move_amplitude]
    data.angle_move_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [halt_position]
    data.halt_position = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [leg_lifting]
    data.leg_lifting = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [leg_swing]
    data.leg_swing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lateral_swing]
    data.lateral_swing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [leaning]
    data.leaning = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 133;
  }

  static datatype() {
    // Returns string type for a message object
    return 'capture_step_module_msgs/WalkingParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a551969adc87659403547b3d4bb643f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ####### Halt Position #######
    float32 halt_pos_leg_ext
    float32 halt_pos_leg_roll_ext
    float32 halt_pos_leg_pitch_ext
    float32 halt_pos_foot_roll_ext
    float32 halt_pos_foot_pitch_ext
    
    ####### Leg Lifting #####
    float32 const_ground_push
    float32 propt_ground_push
    float32 const_step_height
    float32 propt_step_height
    
    ########## Leg Swing ########
    float32 swing_start
    float32 swing_stop
    float32 sagittal_swg_fwd
    float32 sagittal_swg_bwd
    float32 lateral_swg
    float32 lateral_swg_offset
    float32 trng_lateral_swg_offset
    float32 rotational_swg
    float32 rotational_swg_offset
    
    ########## Lateral Hip Swing ##########
    float32 lateral_hip_swg
    
    ########## Leaning ##########
    float32 fwd_lean
    float32 bwd_lean
    float32 fwd_trng_lean
    
    ########## Step ##########
    float32 gait_vel_limit
    float32 sagittal_acc
    float32 lateral_acc
    float32 rotational_acc
    float32 const_step_freq
    float32 sagittal_prop_step_freq
    float32 lateral_prop_step_freq
    
    ########## walking parameter ########
    float32 x_move_amplitude
    float32 y_move_amplitude
    float32 angle_move_amplitude
    bool halt_position
    bool leg_lifting
    bool leg_swing
    bool lateral_swing
    bool leaning
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WalkingParam(null);
    if (msg.halt_pos_leg_ext !== undefined) {
      resolved.halt_pos_leg_ext = msg.halt_pos_leg_ext;
    }
    else {
      resolved.halt_pos_leg_ext = 0.0
    }

    if (msg.halt_pos_leg_roll_ext !== undefined) {
      resolved.halt_pos_leg_roll_ext = msg.halt_pos_leg_roll_ext;
    }
    else {
      resolved.halt_pos_leg_roll_ext = 0.0
    }

    if (msg.halt_pos_leg_pitch_ext !== undefined) {
      resolved.halt_pos_leg_pitch_ext = msg.halt_pos_leg_pitch_ext;
    }
    else {
      resolved.halt_pos_leg_pitch_ext = 0.0
    }

    if (msg.halt_pos_foot_roll_ext !== undefined) {
      resolved.halt_pos_foot_roll_ext = msg.halt_pos_foot_roll_ext;
    }
    else {
      resolved.halt_pos_foot_roll_ext = 0.0
    }

    if (msg.halt_pos_foot_pitch_ext !== undefined) {
      resolved.halt_pos_foot_pitch_ext = msg.halt_pos_foot_pitch_ext;
    }
    else {
      resolved.halt_pos_foot_pitch_ext = 0.0
    }

    if (msg.const_ground_push !== undefined) {
      resolved.const_ground_push = msg.const_ground_push;
    }
    else {
      resolved.const_ground_push = 0.0
    }

    if (msg.propt_ground_push !== undefined) {
      resolved.propt_ground_push = msg.propt_ground_push;
    }
    else {
      resolved.propt_ground_push = 0.0
    }

    if (msg.const_step_height !== undefined) {
      resolved.const_step_height = msg.const_step_height;
    }
    else {
      resolved.const_step_height = 0.0
    }

    if (msg.propt_step_height !== undefined) {
      resolved.propt_step_height = msg.propt_step_height;
    }
    else {
      resolved.propt_step_height = 0.0
    }

    if (msg.swing_start !== undefined) {
      resolved.swing_start = msg.swing_start;
    }
    else {
      resolved.swing_start = 0.0
    }

    if (msg.swing_stop !== undefined) {
      resolved.swing_stop = msg.swing_stop;
    }
    else {
      resolved.swing_stop = 0.0
    }

    if (msg.sagittal_swg_fwd !== undefined) {
      resolved.sagittal_swg_fwd = msg.sagittal_swg_fwd;
    }
    else {
      resolved.sagittal_swg_fwd = 0.0
    }

    if (msg.sagittal_swg_bwd !== undefined) {
      resolved.sagittal_swg_bwd = msg.sagittal_swg_bwd;
    }
    else {
      resolved.sagittal_swg_bwd = 0.0
    }

    if (msg.lateral_swg !== undefined) {
      resolved.lateral_swg = msg.lateral_swg;
    }
    else {
      resolved.lateral_swg = 0.0
    }

    if (msg.lateral_swg_offset !== undefined) {
      resolved.lateral_swg_offset = msg.lateral_swg_offset;
    }
    else {
      resolved.lateral_swg_offset = 0.0
    }

    if (msg.trng_lateral_swg_offset !== undefined) {
      resolved.trng_lateral_swg_offset = msg.trng_lateral_swg_offset;
    }
    else {
      resolved.trng_lateral_swg_offset = 0.0
    }

    if (msg.rotational_swg !== undefined) {
      resolved.rotational_swg = msg.rotational_swg;
    }
    else {
      resolved.rotational_swg = 0.0
    }

    if (msg.rotational_swg_offset !== undefined) {
      resolved.rotational_swg_offset = msg.rotational_swg_offset;
    }
    else {
      resolved.rotational_swg_offset = 0.0
    }

    if (msg.lateral_hip_swg !== undefined) {
      resolved.lateral_hip_swg = msg.lateral_hip_swg;
    }
    else {
      resolved.lateral_hip_swg = 0.0
    }

    if (msg.fwd_lean !== undefined) {
      resolved.fwd_lean = msg.fwd_lean;
    }
    else {
      resolved.fwd_lean = 0.0
    }

    if (msg.bwd_lean !== undefined) {
      resolved.bwd_lean = msg.bwd_lean;
    }
    else {
      resolved.bwd_lean = 0.0
    }

    if (msg.fwd_trng_lean !== undefined) {
      resolved.fwd_trng_lean = msg.fwd_trng_lean;
    }
    else {
      resolved.fwd_trng_lean = 0.0
    }

    if (msg.gait_vel_limit !== undefined) {
      resolved.gait_vel_limit = msg.gait_vel_limit;
    }
    else {
      resolved.gait_vel_limit = 0.0
    }

    if (msg.sagittal_acc !== undefined) {
      resolved.sagittal_acc = msg.sagittal_acc;
    }
    else {
      resolved.sagittal_acc = 0.0
    }

    if (msg.lateral_acc !== undefined) {
      resolved.lateral_acc = msg.lateral_acc;
    }
    else {
      resolved.lateral_acc = 0.0
    }

    if (msg.rotational_acc !== undefined) {
      resolved.rotational_acc = msg.rotational_acc;
    }
    else {
      resolved.rotational_acc = 0.0
    }

    if (msg.const_step_freq !== undefined) {
      resolved.const_step_freq = msg.const_step_freq;
    }
    else {
      resolved.const_step_freq = 0.0
    }

    if (msg.sagittal_prop_step_freq !== undefined) {
      resolved.sagittal_prop_step_freq = msg.sagittal_prop_step_freq;
    }
    else {
      resolved.sagittal_prop_step_freq = 0.0
    }

    if (msg.lateral_prop_step_freq !== undefined) {
      resolved.lateral_prop_step_freq = msg.lateral_prop_step_freq;
    }
    else {
      resolved.lateral_prop_step_freq = 0.0
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

    if (msg.angle_move_amplitude !== undefined) {
      resolved.angle_move_amplitude = msg.angle_move_amplitude;
    }
    else {
      resolved.angle_move_amplitude = 0.0
    }

    if (msg.halt_position !== undefined) {
      resolved.halt_position = msg.halt_position;
    }
    else {
      resolved.halt_position = false
    }

    if (msg.leg_lifting !== undefined) {
      resolved.leg_lifting = msg.leg_lifting;
    }
    else {
      resolved.leg_lifting = false
    }

    if (msg.leg_swing !== undefined) {
      resolved.leg_swing = msg.leg_swing;
    }
    else {
      resolved.leg_swing = false
    }

    if (msg.lateral_swing !== undefined) {
      resolved.lateral_swing = msg.lateral_swing;
    }
    else {
      resolved.lateral_swing = false
    }

    if (msg.leaning !== undefined) {
      resolved.leaning = msg.leaning;
    }
    else {
      resolved.leaning = false
    }

    return resolved;
    }
};

module.exports = WalkingParam;
