// Auto-generated. Do not edit!

// (in-package vision_utils.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LineTip {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tip1 = null;
      this.tip2 = null;
    }
    else {
      if (initObj.hasOwnProperty('tip1')) {
        this.tip1 = initObj.tip1
      }
      else {
        this.tip1 = [];
      }
      if (initObj.hasOwnProperty('tip2')) {
        this.tip2 = initObj.tip2
      }
      else {
        this.tip2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineTip
    // Serialize message field [tip1]
    // Serialize the length for message field [tip1]
    bufferOffset = _serializer.uint32(obj.tip1.length, buffer, bufferOffset);
    obj.tip1.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tip2]
    // Serialize the length for message field [tip2]
    bufferOffset = _serializer.uint32(obj.tip2.length, buffer, bufferOffset);
    obj.tip2.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineTip
    let len;
    let data = new LineTip(null);
    // Deserialize message field [tip1]
    // Deserialize array length for message field [tip1]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tip1 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tip1[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tip2]
    // Deserialize array length for message field [tip2]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tip2 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tip2[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.tip1.length;
    length += 24 * object.tip2.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_utils/LineTip';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf211aecfc01db9117c923c714f7014d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] tip1
    geometry_msgs/Point[] tip2
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LineTip(null);
    if (msg.tip1 !== undefined) {
      resolved.tip1 = new Array(msg.tip1.length);
      for (let i = 0; i < resolved.tip1.length; ++i) {
        resolved.tip1[i] = geometry_msgs.msg.Point.Resolve(msg.tip1[i]);
      }
    }
    else {
      resolved.tip1 = []
    }

    if (msg.tip2 !== undefined) {
      resolved.tip2 = new Array(msg.tip2.length);
      for (let i = 0; i < resolved.tip2.length; ++i) {
        resolved.tip2[i] = geometry_msgs.msg.Point.Resolve(msg.tip2[i]);
      }
    }
    else {
      resolved.tip2 = []
    }

    return resolved;
    }
};

module.exports = LineTip;
