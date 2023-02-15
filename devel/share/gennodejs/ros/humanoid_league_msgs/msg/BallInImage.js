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

class BallInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center = null;
      this.diameter = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('diameter')) {
        this.diameter = initObj.diameter
      }
      else {
        this.diameter = 0.0;
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
    // Serializes a message object of type BallInImage
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [diameter]
    bufferOffset = _serializer.float64(obj.diameter, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BallInImage
    let len;
    let data = new BallInImage(null);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [diameter]
    data.diameter = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/BallInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90e95ed5b7c4ae20cbc638453cf31bb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Providing a (possible) ball in the image
    
    # Center point of the ball, the z-axis should be ignored (in pixel)
    geometry_msgs/Point center
    # Diameter of the ball (in pixel)
    float64 diameter
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    # 0 means no ball was found
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
    const resolved = new BallInImage(null);
    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point()
    }

    if (msg.diameter !== undefined) {
      resolved.diameter = msg.diameter;
    }
    else {
      resolved.diameter = 0.0
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

module.exports = BallInImage;
