// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LineSegmentInImage = require('./LineSegmentInImage.js');

//-----------------------------------------------------------

class LineIntersectionInImage {
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
        this.segments = new LineSegmentInImage();
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
    // Serializes a message object of type LineIntersectionInImage
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [segments]
    bufferOffset = LineSegmentInImage.serialize(obj.segments, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineIntersectionInImage
    let len;
    let data = new LineIntersectionInImage(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [segments]
    data.segments = LineSegmentInImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/LineIntersectionInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '980e372a707e53581170ae6e03b7c340';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A line intersection feature in the image
    
    # The type defines which kind of intersection is present
    uint8 UNDEFINED=0
    uint8 L=1
    uint8 T=2
    uint8 X=3
    uint8 type
    
    # The line segments related to this crossing
    humanoid_league_msgs/LineSegmentInImage segments
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
    
    ================================================================================
    MSG: humanoid_league_msgs/LineSegmentInImage
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
    const resolved = new LineIntersectionInImage(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.segments !== undefined) {
      resolved.segments = LineSegmentInImage.Resolve(msg.segments)
    }
    else {
      resolved.segments = new LineSegmentInImage()
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
LineIntersectionInImage.Constants = {
  UNDEFINED: 0,
  L: 1,
  T: 2,
  X: 3,
}

module.exports = LineIntersectionInImage;
