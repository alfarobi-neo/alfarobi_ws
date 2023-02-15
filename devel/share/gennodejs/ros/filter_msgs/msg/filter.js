// Auto-generated. Do not edit!

// (in-package filter_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class filter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fltr_sesudah = null;
      this.fltr_sebelum = null;
      this.fltr_sesudah_EMAV2 = null;
    }
    else {
      if (initObj.hasOwnProperty('fltr_sesudah')) {
        this.fltr_sesudah = initObj.fltr_sesudah
      }
      else {
        this.fltr_sesudah = 0.0;
      }
      if (initObj.hasOwnProperty('fltr_sebelum')) {
        this.fltr_sebelum = initObj.fltr_sebelum
      }
      else {
        this.fltr_sebelum = 0.0;
      }
      if (initObj.hasOwnProperty('fltr_sesudah_EMAV2')) {
        this.fltr_sesudah_EMAV2 = initObj.fltr_sesudah_EMAV2
      }
      else {
        this.fltr_sesudah_EMAV2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type filter
    // Serialize message field [fltr_sesudah]
    bufferOffset = _serializer.float32(obj.fltr_sesudah, buffer, bufferOffset);
    // Serialize message field [fltr_sebelum]
    bufferOffset = _serializer.float32(obj.fltr_sebelum, buffer, bufferOffset);
    // Serialize message field [fltr_sesudah_EMAV2]
    bufferOffset = _serializer.float32(obj.fltr_sesudah_EMAV2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type filter
    let len;
    let data = new filter(null);
    // Deserialize message field [fltr_sesudah]
    data.fltr_sesudah = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fltr_sebelum]
    data.fltr_sebelum = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fltr_sesudah_EMAV2]
    data.fltr_sesudah_EMAV2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'filter_msgs/filter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce602acead3a15d0f2986f47f81ff818';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 fltr_sesudah
    float32 fltr_sebelum
    float32 fltr_sesudah_EMAV2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new filter(null);
    if (msg.fltr_sesudah !== undefined) {
      resolved.fltr_sesudah = msg.fltr_sesudah;
    }
    else {
      resolved.fltr_sesudah = 0.0
    }

    if (msg.fltr_sebelum !== undefined) {
      resolved.fltr_sebelum = msg.fltr_sebelum;
    }
    else {
      resolved.fltr_sebelum = 0.0
    }

    if (msg.fltr_sesudah_EMAV2 !== undefined) {
      resolved.fltr_sesudah_EMAV2 = msg.fltr_sesudah_EMAV2;
    }
    else {
      resolved.fltr_sesudah_EMAV2 = 0.0
    }

    return resolved;
    }
};

module.exports = filter;
