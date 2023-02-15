// Auto-generated. Do not edit!

// (in-package analyze_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Fuzzy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Cond = null;
      this.Out = null;
      this.Ori = null;
      this.Gyr = null;
    }
    else {
      if (initObj.hasOwnProperty('Cond')) {
        this.Cond = initObj.Cond
      }
      else {
        this.Cond = 0;
      }
      if (initObj.hasOwnProperty('Out')) {
        this.Out = initObj.Out
      }
      else {
        this.Out = 0.0;
      }
      if (initObj.hasOwnProperty('Ori')) {
        this.Ori = initObj.Ori
      }
      else {
        this.Ori = 0.0;
      }
      if (initObj.hasOwnProperty('Gyr')) {
        this.Gyr = initObj.Gyr
      }
      else {
        this.Gyr = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Fuzzy
    // Serialize message field [Cond]
    bufferOffset = _serializer.int32(obj.Cond, buffer, bufferOffset);
    // Serialize message field [Out]
    bufferOffset = _serializer.float32(obj.Out, buffer, bufferOffset);
    // Serialize message field [Ori]
    bufferOffset = _serializer.float32(obj.Ori, buffer, bufferOffset);
    // Serialize message field [Gyr]
    bufferOffset = _serializer.float32(obj.Gyr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Fuzzy
    let len;
    let data = new Fuzzy(null);
    // Deserialize message field [Cond]
    data.Cond = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Out]
    data.Out = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Ori]
    data.Ori = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gyr]
    data.Gyr = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'analyze_msgs/Fuzzy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dbe4ca5345b8d8e12609086d919c0bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Cond
    float32 Out
    float32 Ori
    float32 Gyr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Fuzzy(null);
    if (msg.Cond !== undefined) {
      resolved.Cond = msg.Cond;
    }
    else {
      resolved.Cond = 0
    }

    if (msg.Out !== undefined) {
      resolved.Out = msg.Out;
    }
    else {
      resolved.Out = 0.0
    }

    if (msg.Ori !== undefined) {
      resolved.Ori = msg.Ori;
    }
    else {
      resolved.Ori = 0.0
    }

    if (msg.Gyr !== undefined) {
      resolved.Gyr = msg.Gyr;
    }
    else {
      resolved.Gyr = 0.0
    }

    return resolved;
    }
};

module.exports = Fuzzy;
