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

class RobotControlState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotControlState
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotControlState
    let len;
    let data = new RobotControlState(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/RobotControlState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2328f6cdab1397e392c2b1404b1c4d3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message provides the current state of the hardware control manager (HCM), which is handling falling, standing up and the decision
    # between playing animations and walking
    
    # Robot can be controlled from a higher level
    uint8 CONTROLABLE=0
    # Robot is currently falling
    # it can not be controlled and should go to a position that minimizes the damage during a fall
    uint8 FALLING=1
    # Robot is lying on the floor
    # maybe reset your world model, as the state should be unsure now
    uint8 FALLEN=2
    # Robot is currently trying to get up again
    uint8 GETTING_UP=3
    # An animation is running
    # no walking or further animations possible
    # Falling detection is deactivated
    uint8 ANIMATION_RUNNING=4
    # The hardware control manager is booting
    uint8 STARTUP=5
    # The hardware control manager is shutting down
    uint8 SHUTDOWN=6
    # The robot is in penalty position
    # It can not be controlled
    uint8 PENALTY=7
    # The robot is getting in or out of penalty position
    uint8 PENALTY_ANIMANTION=8
    # The robot is used for recording animations
    # Reserved all controling to a recording process
    # No falling detection is processed and no stand ups will be done
    uint8 RECORD=9
    # The robot is walking
    uint8 WALKING=10
    # A state where the motors are turned off, but the hardware control manager is still waiting for commandos and turns the motors on,
    # if a move commando comes
    uint8 MOTOR_OFF=11
    # Last status send by the hardware control manager after shutting down
    uint8 HCM_OFF=12
    
    uint8 state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotControlState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
RobotControlState.Constants = {
  CONTROLABLE: 0,
  FALLING: 1,
  FALLEN: 2,
  GETTING_UP: 3,
  ANIMATION_RUNNING: 4,
  STARTUP: 5,
  SHUTDOWN: 6,
  PENALTY: 7,
  PENALTY_ANIMANTION: 8,
  RECORD: 9,
  WALKING: 10,
  MOTOR_OFF: 11,
  HCM_OFF: 12,
}

module.exports = RobotControlState;
