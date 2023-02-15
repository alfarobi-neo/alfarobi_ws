// Auto-generated. Do not edit!

// (in-package dnn_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DnnDetectorParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scaling = null;
      this.confidence = null;
      this.mean_val = null;
    }
    else {
      if (initObj.hasOwnProperty('scaling')) {
        this.scaling = initObj.scaling
      }
      else {
        this.scaling = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('mean_val')) {
        this.mean_val = initObj.mean_val
      }
      else {
        this.mean_val = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DnnDetectorParams
    // Serialize message field [scaling]
    bufferOffset = _serializer.uint32(obj.scaling, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [mean_val]
    bufferOffset = _serializer.float32(obj.mean_val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DnnDetectorParams
    let len;
    let data = new DnnDetectorParams(null);
    // Deserialize message field [scaling]
    data.scaling = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mean_val]
    data.mean_val = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnn_detector/DnnDetectorParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7ac01d16dc32137fc1567bc7287ecf5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DnnDetectorParams(null);
    if (msg.scaling !== undefined) {
      resolved.scaling = msg.scaling;
    }
    else {
      resolved.scaling = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.mean_val !== undefined) {
      resolved.mean_val = msg.mean_val;
    }
    else {
      resolved.mean_val = 0.0
    }

    return resolved;
    }
};

module.exports = DnnDetectorParams;
