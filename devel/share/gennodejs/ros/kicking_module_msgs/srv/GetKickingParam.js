// Auto-generated. Do not edit!

// (in-package kicking_module_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let KickingParam = require('../msg/KickingParam.js');

//-----------------------------------------------------------

class GetKickingParamRequest {
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
    // Serializes a message object of type GetKickingParamRequest
    // Serialize message field [get_param]
    bufferOffset = _serializer.bool(obj.get_param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetKickingParamRequest
    let len;
    let data = new GetKickingParamRequest(null);
    // Deserialize message field [get_param]
    data.get_param = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kicking_module_msgs/GetKickingParamRequest';
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
    const resolved = new GetKickingParamRequest(null);
    if (msg.get_param !== undefined) {
      resolved.get_param = msg.get_param;
    }
    else {
      resolved.get_param = false
    }

    return resolved;
    }
};

class GetKickingParamResponse {
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
        this.parameters = new KickingParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetKickingParamResponse
    // Serialize message field [parameters]
    bufferOffset = KickingParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetKickingParamResponse
    let len;
    let data = new GetKickingParamResponse(null);
    // Deserialize message field [parameters]
    data.parameters = KickingParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 164;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kicking_module_msgs/GetKickingParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbede3e92a48cb3c6ddb9a7add8ea228';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    KickingParam    parameters
    
    
    ================================================================================
    MSG: kicking_module_msgs/KickingParam
    float32 Torso_X
    float32 Torso_Y
    float32 Torso_Z
    float32 L_Shift_X
    float32 L_Shift_Y
    float32 L_Shift_Z
    float32 R_Shift_X
    float32 R_Shift_Y
    float32 R_Shift_Z
    float32 L_Lift_X
    float32 L_Lift_Y
    float32 L_Lift_Z
    float32 R_Lift_X
    float32 R_Lift_Y
    float32 R_Lift_Z
    float32 L_Swing_X
    float32 L_Swing_Y
    float32 L_Swing_Z
    float32 R_Swing_X
    float32 R_Swing_Y
    float32 R_Swing_Z
    float32 L_Retract_X
    float32 L_Retract_Y
    float32 L_Retract_Z
    float32 R_Retract_X
    float32 R_Retract_Y
    float32 R_Retract_Z
    float32 Torso_Pitch
    float32 Shift_Roll
    float32 Lift_Roll
    float32 Lift_Pitch
    float32 Swing_Roll
    float32 Swing_Pitch
    float32 Retract_Roll
    float32 Retract_Pitch
    float32 SHIFT_TIME
    float32 LIFT_TIME
    float32 SWING_TIME
    float32 RETRACT_TIME
    float32 LANDING_TIME
    float32 FINISHED_TIME
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetKickingParamResponse(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = KickingParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new KickingParam()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetKickingParamRequest,
  Response: GetKickingParamResponse,
  md5sum() { return 'e283d303756e828e5a3f8f0cc145b425'; },
  datatype() { return 'kicking_module_msgs/GetKickingParam'; }
};
