// Auto-generated. Do not edit!

// (in-package vision_utils.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Feature {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param1 = null;
      this.param2 = null;
      this.param3 = null;
      this.param4 = null;
      this.orientation = null;
      this.feature_type = null;
    }
    else {
      if (initObj.hasOwnProperty('param1')) {
        this.param1 = initObj.param1
      }
      else {
        this.param1 = 0.0;
      }
      if (initObj.hasOwnProperty('param2')) {
        this.param2 = initObj.param2
      }
      else {
        this.param2 = 0.0;
      }
      if (initObj.hasOwnProperty('param3')) {
        this.param3 = initObj.param3
      }
      else {
        this.param3 = 0.0;
      }
      if (initObj.hasOwnProperty('param4')) {
        this.param4 = initObj.param4
      }
      else {
        this.param4 = 0.0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = 0.0;
      }
      if (initObj.hasOwnProperty('feature_type')) {
        this.feature_type = initObj.feature_type
      }
      else {
        this.feature_type = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Feature
    // Serialize message field [param1]
    bufferOffset = _serializer.float32(obj.param1, buffer, bufferOffset);
    // Serialize message field [param2]
    bufferOffset = _serializer.float32(obj.param2, buffer, bufferOffset);
    // Serialize message field [param3]
    bufferOffset = _serializer.float32(obj.param3, buffer, bufferOffset);
    // Serialize message field [param4]
    bufferOffset = _serializer.float32(obj.param4, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = _serializer.float32(obj.orientation, buffer, bufferOffset);
    // Serialize message field [feature_type]
    bufferOffset = _serializer.float32(obj.feature_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Feature
    let len;
    let data = new Feature(null);
    // Deserialize message field [param1]
    data.param1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param2]
    data.param2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param3]
    data.param3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param4]
    data.param4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [feature_type]
    data.feature_type = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_utils/Feature';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82dbffcabd327fa650f6e5b36592a1a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    float32 orientation
    float32 feature_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Feature(null);
    if (msg.param1 !== undefined) {
      resolved.param1 = msg.param1;
    }
    else {
      resolved.param1 = 0.0
    }

    if (msg.param2 !== undefined) {
      resolved.param2 = msg.param2;
    }
    else {
      resolved.param2 = 0.0
    }

    if (msg.param3 !== undefined) {
      resolved.param3 = msg.param3;
    }
    else {
      resolved.param3 = 0.0
    }

    if (msg.param4 !== undefined) {
      resolved.param4 = msg.param4;
    }
    else {
      resolved.param4 = 0.0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = 0.0
    }

    if (msg.feature_type !== undefined) {
      resolved.feature_type = msg.feature_type;
    }
    else {
      resolved.feature_type = 0.0
    }

    return resolved;
    }
};

module.exports = Feature;
