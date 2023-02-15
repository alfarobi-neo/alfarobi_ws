// Auto-generated. Do not edit!

// (in-package capture_step_module_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let WalkingParam = require('../msg/WalkingParam.js');

//-----------------------------------------------------------

class GetWalkingParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_param = null;
    }
    else {
      if (initObj.hasOwnProperty('get_param')) {
        this.get_param = initObj.get_param
      }
      else {
        this.get_param = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWalkingParamRequest
    // Serialize message field [get_param]
    bufferOffset = _serializer.bool(obj.get_param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWalkingParamRequest
    let len;
    let data = new GetWalkingParamRequest(null);
    // Deserialize message field [get_param]
    data.get_param = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'capture_step_module_msgs/GetWalkingParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd964a0520d7b14bf821ec75afc464385';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool            get_param
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWalkingParamRequest(null);
    if (msg.get_param !== undefined) {
      resolved.get_param = msg.get_param;
    }
    else {
      resolved.get_param = false
    }

    return resolved;
    }
};

class GetWalkingParamResponse {
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
    // Serializes a message object of type GetWalkingParamResponse
    // Serialize message field [parameters]
    bufferOffset = WalkingParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWalkingParamResponse
    let len;
    let data = new GetWalkingParamResponse(null);
    // Deserialize message field [parameters]
    data.parameters = WalkingParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 133;
  }

  static datatype() {
    // Returns string type for a service object
    return 'capture_step_module_msgs/GetWalkingParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a3185d180ac091f9720a1861c16b1c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WalkingParam    parameters
    
    ================================================================================
    MSG: capture_step_module_msgs/WalkingParam
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
    const resolved = new GetWalkingParamResponse(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = WalkingParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new WalkingParam()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWalkingParamRequest,
  Response: GetWalkingParamResponse,
  md5sum() { return '33e093e1a36ede369994f83338945659'; },
  datatype() { return 'capture_step_module_msgs/GetWalkingParam'; }
};
