// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class BarInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_point = null;
      this.right_point = null;
      this.width = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('left_point')) {
        this.left_point = initObj.left_point
      }
      else {
        this.left_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('right_point')) {
        this.right_point = initObj.right_point
      }
      else {
        this.right_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BarInImage
    // Serialize message field [left_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.left_point, buffer, bufferOffset);
    // Serialize message field [right_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.right_point, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BarInImage
    let len;
    let data = new BarInImage(null);
    // Deserialize message field [left_point]
    data.left_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_point]
    data.right_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/BarInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc2e062fdbea58061f1e4bcb7510db2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A (possible) goal bar in the image. It is defined by the two end points and a width.
    
    # Two points defining the significant axis of the post
    geometry_msgs/Point left_point
    geometry_msgs/Point right_point
    # Orthogonal to significant vector (in pixel)
    float32 width
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
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
    const resolved = new BarInImage(null);
    if (msg.left_point !== undefined) {
      resolved.left_point = geometry_msgs.msg.Point.Resolve(msg.left_point)
    }
    else {
      resolved.left_point = new geometry_msgs.msg.Point()
    }

    if (msg.right_point !== undefined) {
      resolved.right_point = geometry_msgs.msg.Point.Resolve(msg.right_point)
    }
    else {
      resolved.right_point = new geometry_msgs.msg.Point()
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = BarInImage;
