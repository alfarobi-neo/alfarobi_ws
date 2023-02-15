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

class ObstacleInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.playerNumber = null;
      this.top_left = null;
      this.height = null;
      this.width = null;
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
      if (initObj.hasOwnProperty('top_left')) {
        this.top_left = initObj.top_left
      }
      else {
        this.top_left = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
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
    // Serializes a message object of type ObstacleInImage
    // Serialize message field [color]
    bufferOffset = _serializer.uint8(obj.color, buffer, bufferOffset);
    // Serialize message field [playerNumber]
    bufferOffset = _serializer.uint8(obj.playerNumber, buffer, bufferOffset);
    // Serialize message field [top_left]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.top_left, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint8(obj.height, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.uint8(obj.width, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleInImage
    let len;
    let data = new ObstacleInImage(null);
    // Deserialize message field [color]
    data.color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [playerNumber]
    data.playerNumber = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [top_left]
    data.top_left = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/ObstacleInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e334321d63927966a578660e9c5fd06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # An obstacle in the image, which can be a robot, a human or something else
    
    # Main color of the obstacle, to differentiate between robots and other things like human legs
    # Something we cant classify
    uint8 UNDEFINED = 0
    # Robot without known color
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
    
    # The corresponding section in the image
    geometry_msgs/Point top_left
    uint8 height
    uint8 width
    
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
    const resolved = new ObstacleInImage(null);
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

    if (msg.top_left !== undefined) {
      resolved.top_left = geometry_msgs.msg.Point.Resolve(msg.top_left)
    }
    else {
      resolved.top_left = new geometry_msgs.msg.Point()
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
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
ObstacleInImage.Constants = {
  UNDEFINED: 0,
  ROBOT_UNDEFINED: 1,
  ROBOT_MAGENTA: 2,
  ROBOT_CYAN: 3,
  HUMAN: 4,
  POLE: 5,
}

module.exports = ObstacleInImage;
