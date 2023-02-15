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

class PostInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.foot_point = null;
      this.top_point = null;
      this.width = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('foot_point')) {
        this.foot_point = initObj.foot_point
      }
      else {
        this.foot_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('top_point')) {
        this.top_point = initObj.top_point
      }
      else {
        this.top_point = new geometry_msgs.msg.Point();
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
    // Serializes a message object of type PostInImage
    // Serialize message field [foot_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.foot_point, buffer, bufferOffset);
    // Serialize message field [top_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.top_point, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PostInImage
    let len;
    let data = new PostInImage(null);
    // Deserialize message field [foot_point]
    data.foot_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [top_point]
    data.top_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
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
    return 'humanoid_league_msgs/PostInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69845e64be888b8b5f14fec4a8bcc64e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A (possible) goal post in the image. It is defined by two end points and a width.
    
    # Two points defining the significant axis of the post
    geometry_msgs/Point foot_point
    geometry_msgs/Point top_point
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
    const resolved = new PostInImage(null);
    if (msg.foot_point !== undefined) {
      resolved.foot_point = geometry_msgs.msg.Point.Resolve(msg.foot_point)
    }
    else {
      resolved.foot_point = new geometry_msgs.msg.Point()
    }

    if (msg.top_point !== undefined) {
      resolved.top_point = geometry_msgs.msg.Point.Resolve(msg.top_point)
    }
    else {
      resolved.top_point = new geometry_msgs.msg.Point()
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

module.exports = PostInImage;
