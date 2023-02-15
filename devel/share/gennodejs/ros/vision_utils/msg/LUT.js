// Auto-generated. Do not edit!

// (in-package vision_utils.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LUT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.color_class = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = [];
      }
      if (initObj.hasOwnProperty('color_class')) {
        this.color_class = initObj.color_class
      }
      else {
        this.color_class = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LUT
    // Serialize message field [color]
    // Serialize the length for message field [color]
    bufferOffset = _serializer.uint32(obj.color.length, buffer, bufferOffset);
    obj.color.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [color_class]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.color_class, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LUT
    let len;
    let data = new LUT(null);
    // Deserialize message field [color]
    // Deserialize array length for message field [color]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.color = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.color[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [color_class]
    data.color_class = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.color.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_utils/LUT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09c8474bb4193e600be4dc7c15b023c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] color
    std_msgs/UInt8 color_class
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: std_msgs/UInt8
    uint8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LUT(null);
    if (msg.color !== undefined) {
      resolved.color = new Array(msg.color.length);
      for (let i = 0; i < resolved.color.length; ++i) {
        resolved.color[i] = geometry_msgs.msg.Point.Resolve(msg.color[i]);
      }
    }
    else {
      resolved.color = []
    }

    if (msg.color_class !== undefined) {
      resolved.color_class = std_msgs.msg.UInt8.Resolve(msg.color_class)
    }
    else {
      resolved.color_class = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = LUT;
