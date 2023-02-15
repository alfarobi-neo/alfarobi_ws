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

class movAvg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Kp = null;
      this.Kd = null;
      this.Ankle = null;
      this.gyr_y_aft = null;
    }
    else {
      if (initObj.hasOwnProperty('Kp')) {
        this.Kp = initObj.Kp
      }
      else {
        this.Kp = 0.0;
      }
      if (initObj.hasOwnProperty('Kd')) {
        this.Kd = initObj.Kd
      }
      else {
        this.Kd = 0.0;
      }
      if (initObj.hasOwnProperty('Ankle')) {
        this.Ankle = initObj.Ankle
      }
      else {
        this.Ankle = 0.0;
      }
      if (initObj.hasOwnProperty('gyr_y_aft')) {
        this.gyr_y_aft = initObj.gyr_y_aft
      }
      else {
        this.gyr_y_aft = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type movAvg
    // Serialize message field [Kp]
    bufferOffset = _serializer.float32(obj.Kp, buffer, bufferOffset);
    // Serialize message field [Kd]
    bufferOffset = _serializer.float32(obj.Kd, buffer, bufferOffset);
    // Serialize message field [Ankle]
    bufferOffset = _serializer.float32(obj.Ankle, buffer, bufferOffset);
    // Serialize message field [gyr_y_aft]
    bufferOffset = _serializer.float32(obj.gyr_y_aft, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type movAvg
    let len;
    let data = new movAvg(null);
    // Deserialize message field [Kp]
    data.Kp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Kd]
    data.Kd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Ankle]
    data.Ankle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyr_y_aft]
    data.gyr_y_aft = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'analyze_msgs/movAvg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b26380dcaf44460c112d4bf22253d83e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Kp
    float32 Kd
    float32 Ankle
    float32 gyr_y_aft
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new movAvg(null);
    if (msg.Kp !== undefined) {
      resolved.Kp = msg.Kp;
    }
    else {
      resolved.Kp = 0.0
    }

    if (msg.Kd !== undefined) {
      resolved.Kd = msg.Kd;
    }
    else {
      resolved.Kd = 0.0
    }

    if (msg.Ankle !== undefined) {
      resolved.Ankle = msg.Ankle;
    }
    else {
      resolved.Ankle = 0.0
    }

    if (msg.gyr_y_aft !== undefined) {
      resolved.gyr_y_aft = msg.gyr_y_aft;
    }
    else {
      resolved.gyr_y_aft = 0.0
    }

    return resolved;
    }
};

module.exports = movAvg;
