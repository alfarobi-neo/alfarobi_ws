// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LineSegmentRelative = require('./LineSegmentRelative.js');

//-----------------------------------------------------------

class LineIntersectionRelative {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.segments = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('segments')) {
        this.segments = initObj.segments
      }
      else {
        this.segments = new LineSegmentRelative();
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
    // Serializes a message object of type LineIntersectionRelative
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [segments]
    bufferOffset = LineSegmentRelative.serialize(obj.segments, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineIntersectionRelative
    let len;
    let data = new LineIntersectionRelative(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [segments]
    data.segments = LineSegmentRelative.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/LineIntersectionRelative';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8392212b950b9d1b4d55e78d2094a2cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Information about a special line feature on the field
    
    # The type defines which kind of intersection is present
    uint8 UNDEFINED=0
    uint8 L=1
    uint8 T=2
    uint8 X=3
    uint8 type
    
    # The line segments related to this crossing
    humanoid_league_msgs/LineSegmentRelative segments
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
    
    ================================================================================
    MSG: humanoid_league_msgs/LineSegmentRelative
    # A line segment relative to the robot
    
    # Start and end position of the line
    # x in front of the robot
    # y to the left
    # z should be 0
    geometry_msgs/Point start
    geometry_msgs/Point end
    
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
    const resolved = new LineIntersectionRelative(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.segments !== undefined) {
      resolved.segments = LineSegmentRelative.Resolve(msg.segments)
    }
    else {
      resolved.segments = new LineSegmentRelative()
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

// Constants for message
LineIntersectionRelative.Constants = {
  UNDEFINED: 0,
  L: 1,
  T: 2,
  X: 3,
}

module.exports = LineIntersectionRelative;
