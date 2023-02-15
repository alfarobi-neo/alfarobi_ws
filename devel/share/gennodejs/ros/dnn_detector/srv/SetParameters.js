// Auto-generated. Do not edit!

// (in-package dnn_detector.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DnnDetectorParams = require('../msg/DnnDetectorParams.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetParametersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = new DnnDetectorParams();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetParametersRequest
    // Serialize message field [params]
    bufferOffset = DnnDetectorParams.serialize(obj.params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetParametersRequest
    let len;
    let data = new SetParametersRequest(null);
    // Deserialize message field [params]
    data.params = DnnDetectorParams.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnn_detector/SetParametersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fd8f0c7bfc8b9f9a9ecfc21bc306eaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    DnnDetectorParams  params
    
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
    const resolved = new SetParametersRequest(null);
    if (msg.params !== undefined) {
      resolved.params = DnnDetectorParams.Resolve(msg.params)
    }
    else {
      resolved.params = new DnnDetectorParams()
    }

    return resolved;
    }
};

class SetParametersResponse {
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
    // Serializes a message object of type SetParametersResponse
    // Serialize message field [returns]
    bufferOffset = DnnDetectorParams.serialize(obj.returns, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetParametersResponse
    let len;
    let data = new SetParametersResponse(null);
    // Deserialize message field [returns]
    data.returns = DnnDetectorParams.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnn_detector/SetParametersResponse';
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
    const resolved = new SetParametersResponse(null);
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
  Request: SetParametersRequest,
  Response: SetParametersResponse,
  md5sum() { return '6ef3ab2b457693e716fc437aa9628429'; },
  datatype() { return 'dnn_detector/SetParameters'; }
};
