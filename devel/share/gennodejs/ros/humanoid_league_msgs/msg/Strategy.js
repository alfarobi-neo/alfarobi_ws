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

class Strategy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.role = null;
      this.action = null;
      this.offensive_side = null;
    }
    else {
      if (initObj.hasOwnProperty('role')) {
        this.role = initObj.role
      }
      else {
        this.role = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('offensive_side')) {
        this.offensive_side = initObj.offensive_side
      }
      else {
        this.offensive_side = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Strategy
    // Serialize message field [role]
    bufferOffset = _serializer.uint8(obj.role, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [offensive_side]
    bufferOffset = _serializer.uint8(obj.offensive_side, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Strategy
    let len;
    let data = new Strategy(null);
    // Deserialize message field [role]
    data.role = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [offensive_side]
    data.offensive_side = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/Strategy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73b1522777cf7f264eedf954da4c5819';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message provides information about the current strategy of the robot to the team communication so that it can be
    # shared with other team robots
    
    # Which role the robot has currently
    uint8 ROLE_IDLING=0
    uint8 ROLE_OTHER=1
    uint8 ROLE_STRIKER=2
    uint8 ROLE_SUPPORTER=3
    uint8 ROLE_DEFENDER=4
    uint8 ROLE_GOALIE=5
    uint8 role
    
    # The current action of the robot
    uint8 ACTION_UNDEFINED=0
    uint8 ACTION_POSITIONING=1
    uint8 ACTION_GOING_TO_BALL=2
    uint8 ACTION_TRYING_TO_SCORE=3
    uint8 ACTION_WAITING=4
    uint8 action
    
    # Offensive strategy
    uint8 SIDE_LEFT = 0
    uint8 SIDE_MIDDLE = 1
    uint8 SIDE_RIGHT = 2
    uint8 offensive_side
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Strategy(null);
    if (msg.role !== undefined) {
      resolved.role = msg.role;
    }
    else {
      resolved.role = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.offensive_side !== undefined) {
      resolved.offensive_side = msg.offensive_side;
    }
    else {
      resolved.offensive_side = 0
    }

    return resolved;
    }
};

// Constants for message
Strategy.Constants = {
  ROLE_IDLING: 0,
  ROLE_OTHER: 1,
  ROLE_STRIKER: 2,
  ROLE_SUPPORTER: 3,
  ROLE_DEFENDER: 4,
  ROLE_GOALIE: 5,
  ACTION_UNDEFINED: 0,
  ACTION_POSITIONING: 1,
  ACTION_GOING_TO_BALL: 2,
  ACTION_TRYING_TO_SCORE: 3,
  ACTION_WAITING: 4,
  SIDE_LEFT: 0,
  SIDE_MIDDLE: 1,
  SIDE_RIGHT: 2,
}

module.exports = Strategy;
