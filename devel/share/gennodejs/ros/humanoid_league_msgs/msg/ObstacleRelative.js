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

class ObstacleRelative {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.playerNumber = null;
      this.position = null;
      this.width = null;
      this.height = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('playerNumber')) {
        this.playerNumber = initObj.playerNumber
      }
      else {
        this.playerNumber = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
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
    // Serializes a message object of type ObstacleRelative
    // Serialize message field [color]
    bufferOffset = _serializer.uint8(obj.color, buffer, bufferOffset);
    // Serialize message field [playerNumber]
    bufferOffset = _serializer.uint8(obj.playerNumber, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleRelative
    let len;
    let data = new ObstacleRelative(null);
    // Deserialize message field [color]
    data.color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [playerNumber]
    data.playerNumber = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/ObstacleRelative';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96164c833f5cfca473add6b66611366a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # An obstacle relative to the robot
    
    # Main color of the obstacle, to differentiate between robots and other things like human legs
    # Something we cant classify
    uint8 UNDEFINED = 0
    # robot without known color
    uint8 ROBOT_UNDEFINED = 1
    uint8 ROBOT_MAGENTA = 2
    uint8 ROBOT_CYAN = 3
    # A human legs, e.g. from the referee
    uint8 HUMAN = 4
    # Black poles which are normally used for technical challenges
    uint8 POLE = 5
    uint8 color
    
    # The number of the robot, if it is a robot and if it can be read. Put in -1 if not known
    uint8 playerNumber
    
    # Position (in meters)
    geometry_msgs/Point position
    
    # Educated guess of the width and height (in meters)
    float32 width
    float32 height
    
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
    const resolved = new ObstacleRelative(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.playerNumber !== undefined) {
      resolved.playerNumber = msg.playerNumber;
    }
    else {
      resolved.playerNumber = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
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
ObstacleRelative.Constants = {
  UNDEFINED: 0,
  ROBOT_UNDEFINED: 1,
  ROBOT_MAGENTA: 2,
  ROBOT_CYAN: 3,
  HUMAN: 4,
  POLE: 5,
}

module.exports = ObstacleRelative;
