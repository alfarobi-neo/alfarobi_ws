// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VisualCompassRotation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.orientation = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = 0.0;
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
    // Serializes a message object of type VisualCompassRotation
    // Serialize message field [orientation]
    bufferOffset = _serializer.float32(obj.orientation, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisualCompassRotation
    let len;
    let data = new VisualCompassRotation(null);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/VisualCompassRotation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44fdc5544cc3e3cee8f82caccfdf780d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used to specify the orientation of the visual compass in relation to a RoboCup Soccer field
    
    # 0 points to the opponent goal line, 3.14 to the own goal line
    float32 orientation
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisualCompassRotation(null);
    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = 0.0
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

module.exports = VisualCompassRotation;
