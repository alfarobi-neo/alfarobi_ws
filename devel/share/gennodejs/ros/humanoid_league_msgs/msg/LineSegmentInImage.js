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

class LineSegmentInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.end = null;
      this.start_width = null;
      this.end_with = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('start_width')) {
        this.start_width = initObj.start_width
      }
      else {
        this.start_width = 0.0;
      }
      if (initObj.hasOwnProperty('end_with')) {
        this.end_with = initObj.end_with
      }
      else {
        this.end_with = 0.0;
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
    // Serializes a message object of type LineSegmentInImage
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.end, buffer, bufferOffset);
    // Serialize message field [start_width]
    bufferOffset = _serializer.float32(obj.start_width, buffer, bufferOffset);
    // Serialize message field [end_with]
    bufferOffset = _serializer.float32(obj.end_with, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineSegmentInImage
    let len;
    let data = new LineSegmentInImage(null);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_width]
    data.start_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_with]
    data.end_with = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/LineSegmentInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0e1617931b08ca66afbb6d4be8d99e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A normal line segment in the image
    
    # Two points defining the vector of the line. The center is orthogonally in the middle of the line
    geometry_msgs/Point start
    geometry_msgs/Point end
    
    # Orthogonal to the significant vector
    float32 start_width
    float32 end_with
    
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
    const resolved = new LineSegmentInImage(null);
    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.Point.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.Point()
    }

    if (msg.end !== undefined) {
      resolved.end = geometry_msgs.msg.Point.Resolve(msg.end)
    }
    else {
      resolved.end = new geometry_msgs.msg.Point()
    }

    if (msg.start_width !== undefined) {
      resolved.start_width = msg.start_width;
    }
    else {
      resolved.start_width = 0.0
    }

    if (msg.end_with !== undefined) {
      resolved.end_with = msg.end_with;
    }
    else {
      resolved.end_with = 0.0
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

module.exports = LineSegmentInImage;
