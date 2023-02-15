// Auto-generated. Do not edit!

// (in-package kicking_module_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KickingParam = require('../msg/KickingParam.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetKickingParamRequest {
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
    // Serializes a message object of type SetKickingParamRequest
    // Serialize message field [parameters]
    bufferOffset = KickingParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetKickingParamRequest
    let len;
    let data = new SetKickingParamRequest(null);
    // Deserialize message field [parameters]
    data.parameters = KickingParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 164;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kicking_module_msgs/SetKickingParamRequest';
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
    const resolved = new SetKickingParamRequest(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = KickingParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new KickingParam()
    }

    return resolved;
    }
};

class SetKickingParamResponse {
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
    // Serializes a message object of type SetKickingParamResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetKickingParamResponse
    let len;
    let data = new SetKickingParamResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kicking_module_msgs/SetKickingParamResponse';
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
    const resolved = new SetKickingParamResponse(null);
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
  Request: SetKickingParamRequest,
  Response: SetKickingParamResponse,
  md5sum() { return '8cba598d747b079101cd9f0a83da30c3'; },
  datatype() { return 'kicking_module_msgs/SetKickingParam'; }
};
