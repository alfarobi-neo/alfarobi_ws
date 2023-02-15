// Auto-generated. Do not edit!

// (in-package mcl_localization.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let localization_param = require('../msg/localization_param.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLocParamRequest {
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
        this.parameters = new localization_param();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLocParamRequest
    // Serialize message field [parameters]
    bufferOffset = localization_param.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLocParamRequest
    let len;
    let data = new SetLocParamRequest(null);
    // Deserialize message field [parameters]
    data.parameters = localization_param.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mcl_localization/SetLocParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a334524f67bc744751132bd0b10acaf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    localization_param    parameters
    
    ================================================================================
    MSG: mcl_localization/localization_param
    float64 mcl_afast
    float64 mcl_aslow
    float64 mcl_variance
    float64 mgauss_x
    float64 mgauss_y
    float64 mgauss_w
    float64 vgauss_x
    float64 vgauss_y
    float64 mcl_wcmps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLocParamRequest(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = localization_param.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new localization_param()
    }

    return resolved;
    }
};

class SetLocParamResponse {
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
    // Serializes a message object of type SetLocParamResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLocParamResponse
    let len;
    let data = new SetLocParamResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mcl_localization/SetLocParamResponse';
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
    const resolved = new SetLocParamResponse(null);
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
  Request: SetLocParamRequest,
  Response: SetLocParamResponse,
  md5sum() { return 'c5b3d39a60950d660fb6da89c59bd7b8'; },
  datatype() { return 'mcl_localization/SetLocParam'; }
};
