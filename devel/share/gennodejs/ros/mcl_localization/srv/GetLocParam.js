// Auto-generated. Do not edit!

// (in-package mcl_localization.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let localization_param = require('../msg/localization_param.js');

//-----------------------------------------------------------

class GetLocParamRequest {
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
    // Serializes a message object of type GetLocParamRequest
    // Serialize message field [get_param]
    bufferOffset = _serializer.bool(obj.get_param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLocParamRequest
    let len;
    let data = new GetLocParamRequest(null);
    // Deserialize message field [get_param]
    data.get_param = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mcl_localization/GetLocParamRequest';
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
    const resolved = new GetLocParamRequest(null);
    if (msg.get_param !== undefined) {
      resolved.get_param = msg.get_param;
    }
    else {
      resolved.get_param = false
    }

    return resolved;
    }
};

class GetLocParamResponse {
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
    // Serializes a message object of type GetLocParamResponse
    // Serialize message field [parameters]
    bufferOffset = localization_param.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLocParamResponse
    let len;
    let data = new GetLocParamResponse(null);
    // Deserialize message field [parameters]
    data.parameters = localization_param.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mcl_localization/GetLocParamResponse';
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
    const resolved = new GetLocParamResponse(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = localization_param.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new localization_param()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetLocParamRequest,
  Response: GetLocParamResponse,
  md5sum() { return '3909651f1afc562f3108e47d85479fbe'; },
  datatype() { return 'mcl_localization/GetLocParam'; }
};
