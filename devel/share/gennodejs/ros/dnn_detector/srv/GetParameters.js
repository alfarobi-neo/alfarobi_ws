// Auto-generated. Do not edit!

// (in-package dnn_detector.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let DnnDetectorParams = require('../msg/DnnDetectorParams.js');

//-----------------------------------------------------------

class GetParametersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetParametersRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetParametersRequest
    let len;
    let data = new GetParametersRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnn_detector/GetParametersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetParametersRequest(null);
    return resolved;
    }
};

class GetParametersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.returns = null;
    }
    else {
      if (initObj.hasOwnProperty('returns')) {
        this.returns = initObj.returns
      }
      else {
        this.returns = new DnnDetectorParams();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetParametersResponse
    // Serialize message field [returns]
    bufferOffset = DnnDetectorParams.serialize(obj.returns, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetParametersResponse
    let len;
    let data = new GetParametersResponse(null);
    // Deserialize message field [returns]
    data.returns = DnnDetectorParams.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnn_detector/GetParametersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd743da2bf12d518097400e47c74397a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    DnnDetectorParams  returns
    
    
    ================================================================================
    MSG: dnn_detector/DnnDetectorParams
    # This represents the parameters of ball_detector
    
    uint32  scaling
    float32 confidence
    float32 mean_val
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetParametersResponse(null);
    if (msg.returns !== undefined) {
      resolved.returns = DnnDetectorParams.Resolve(msg.returns)
    }
    else {
      resolved.returns = new DnnDetectorParams()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetParametersRequest,
  Response: GetParametersResponse,
  md5sum() { return 'd743da2bf12d518097400e47c74397a3'; },
  datatype() { return 'dnn_detector/GetParameters'; }
};
