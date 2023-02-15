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

class HeadMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.headMode = null;
    }
    else {
      if (initObj.hasOwnProperty('headMode')) {
        this.headMode = initObj.headMode
      }
      else {
        this.headMode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeadMode
    // Serialize message field [headMode]
    bufferOffset = _serializer.uint8(obj.headMode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeadMode
    let len;
    let data = new HeadMode(null);
    // Deserialize message field [headMode]
    data.headMode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/HeadMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb98960a74192c06acad277ece0eb0d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used for communicating between the body behaviour and the head behaviour
    # The body tells the head by this message what it shall do
    
    # Search for Ball and track it if found
    uint8 BALL_MODE=0
    # Search for goal posts, mainly to locate the robot on the field
    uint8 POST_MODE=1
    # Track ball and goal by constantly switching between both
    uint8 BALL_GOAL_TRACKING=2
    # Look generally for all features on the field (ball, goals, corners, center point)
    uint8 FIELD_FEATURES=3
    # Look for features outside of the field (perimeter advertising, walls, etc).
    # Can be used for localization using features on the ceiling.
    uint8 NON_FIELD_FEATURES=4
    # Simply look down to its feet.
    uint8 LOOK_DOWN=5
    # Simply look directly forward
    uint8 LOOK_FORWARD=7
    #Don't move the head
    uint8 DONT_MOVE=8
    # Look to the ceiling, for example for visual compas
    uint8 LOOK_UP=9
    uint8 headMode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeadMode(null);
    if (msg.headMode !== undefined) {
      resolved.headMode = msg.headMode;
    }
    else {
      resolved.headMode = 0
    }

    return resolved;
    }
};

// Constants for message
HeadMode.Constants = {
  BALL_MODE: 0,
  POST_MODE: 1,
  BALL_GOAL_TRACKING: 2,
  FIELD_FEATURES: 3,
  NON_FIELD_FEATURES: 4,
  LOOK_DOWN: 5,
  LOOK_FORWARD: 7,
  DONT_MOVE: 8,
  LOOK_UP: 9,
}

module.exports = HeadMode;
