// Auto-generated. Do not edit!

// (in-package op3_walking_module_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WalkingParam = require('../msg/WalkingParam.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetWalkingParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = new WalkingParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWalkingParamRequest
    // Serialize message field [parameters]
    bufferOffset = WalkingParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWalkingParamRequest
    let len;
    let data = new SetWalkingParamRequest(null);
    // Deserialize message field [parameters]
    data.parameters = WalkingParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 211;
  }

  static datatype() {
    // Returns string type for a service object
    return 'op3_walking_module_msgs/SetWalkingParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dac3578eb03fe27e15520f1bace531fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WalkingParam    parameters
    
    ================================================================================
    MSG: op3_walking_module_msgs/WalkingParam
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
    const resolved = new SetWalkingParamRequest(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = WalkingParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new WalkingParam()
    }

    return resolved;
    }
};

class SetWalkingParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWalkingParamResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWalkingParamResponse
    let len;
    let data = new SetWalkingParamResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'op3_walking_module_msgs/SetWalkingParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool            result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWalkingParamResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetWalkingParamRequest,
  Response: SetWalkingParamResponse,
  md5sum() { return 'e9166a8edf8f3addb727b98f0b0cc136'; },
  datatype() { return 'op3_walking_module_msgs/SetWalkingParam'; }
};
