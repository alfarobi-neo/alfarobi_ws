// Auto-generated. Do not edit!

// (in-package game_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GameState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gameState = null;
      this.secondaryState = null;
      this.secondrayStateTeam = null;
      this.firstHalf = null;
      this.ownScore = null;
      this.rivalScore = null;
      this.secondsRemaining = null;
      this.secondary_seconds_remaining = null;
      this.penalty = null;
      this.hasKickOff = null;
      this.penalized = null;
      this.secondsTillUnpenalized = null;
      this.allowedToMove = null;
      this.dropInTeam = null;
      this.dropInTime = null;
      this.penaltyShot = null;
      this.singleShots = null;
      this.coach_message = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gameState')) {
        this.gameState = initObj.gameState
      }
      else {
        this.gameState = 0;
      }
      if (initObj.hasOwnProperty('secondaryState')) {
        this.secondaryState = initObj.secondaryState
      }
      else {
        this.secondaryState = 0;
      }
      if (initObj.hasOwnProperty('secondrayStateTeam')) {
        this.secondrayStateTeam = initObj.secondrayStateTeam
      }
      else {
        this.secondrayStateTeam = 0;
      }
      if (initObj.hasOwnProperty('firstHalf')) {
        this.firstHalf = initObj.firstHalf
      }
      else {
        this.firstHalf = false;
      }
      if (initObj.hasOwnProperty('ownScore')) {
        this.ownScore = initObj.ownScore
      }
      else {
        this.ownScore = 0;
      }
      if (initObj.hasOwnProperty('rivalScore')) {
        this.rivalScore = initObj.rivalScore
      }
      else {
        this.rivalScore = 0;
      }
      if (initObj.hasOwnProperty('secondsRemaining')) {
        this.secondsRemaining = initObj.secondsRemaining
      }
      else {
        this.secondsRemaining = 0;
      }
      if (initObj.hasOwnProperty('secondary_seconds_remaining')) {
        this.secondary_seconds_remaining = initObj.secondary_seconds_remaining
      }
      else {
        this.secondary_seconds_remaining = 0;
      }
      if (initObj.hasOwnProperty('penalty')) {
        this.penalty = initObj.penalty
      }
      else {
        this.penalty = 0;
      }
      if (initObj.hasOwnProperty('hasKickOff')) {
        this.hasKickOff = initObj.hasKickOff
      }
      else {
        this.hasKickOff = false;
      }
      if (initObj.hasOwnProperty('penalized')) {
        this.penalized = initObj.penalized
      }
      else {
        this.penalized = false;
      }
      if (initObj.hasOwnProperty('secondsTillUnpenalized')) {
        this.secondsTillUnpenalized = initObj.secondsTillUnpenalized
      }
      else {
        this.secondsTillUnpenalized = 0;
      }
      if (initObj.hasOwnProperty('allowedToMove')) {
        this.allowedToMove = initObj.allowedToMove
      }
      else {
        this.allowedToMove = false;
      }
      if (initObj.hasOwnProperty('dropInTeam')) {
        this.dropInTeam = initObj.dropInTeam
      }
      else {
        this.dropInTeam = false;
      }
      if (initObj.hasOwnProperty('dropInTime')) {
        this.dropInTime = initObj.dropInTime
      }
      else {
        this.dropInTime = 0;
      }
      if (initObj.hasOwnProperty('penaltyShot')) {
        this.penaltyShot = initObj.penaltyShot
      }
      else {
        this.penaltyShot = 0;
      }
      if (initObj.hasOwnProperty('singleShots')) {
        this.singleShots = initObj.singleShots
      }
      else {
        this.singleShots = 0;
      }
      if (initObj.hasOwnProperty('coach_message')) {
        this.coach_message = initObj.coach_message
      }
      else {
        this.coach_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GameState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gameState]
    bufferOffset = _serializer.uint8(obj.gameState, buffer, bufferOffset);
    // Serialize message field [secondaryState]
    bufferOffset = _serializer.uint8(obj.secondaryState, buffer, bufferOffset);
    // Serialize message field [secondrayStateTeam]
    bufferOffset = _serializer.uint8(obj.secondrayStateTeam, buffer, bufferOffset);
    // Serialize message field [firstHalf]
    bufferOffset = _serializer.bool(obj.firstHalf, buffer, bufferOffset);
    // Serialize message field [ownScore]
    bufferOffset = _serializer.uint8(obj.ownScore, buffer, bufferOffset);
    // Serialize message field [rivalScore]
    bufferOffset = _serializer.uint8(obj.rivalScore, buffer, bufferOffset);
    // Serialize message field [secondsRemaining]
    bufferOffset = _serializer.int16(obj.secondsRemaining, buffer, bufferOffset);
    // Serialize message field [secondary_seconds_remaining]
    bufferOffset = _serializer.uint16(obj.secondary_seconds_remaining, buffer, bufferOffset);
    // Serialize message field [penalty]
    bufferOffset = _serializer.uint8(obj.penalty, buffer, bufferOffset);
    // Serialize message field [hasKickOff]
    bufferOffset = _serializer.bool(obj.hasKickOff, buffer, bufferOffset);
    // Serialize message field [penalized]
    bufferOffset = _serializer.bool(obj.penalized, buffer, bufferOffset);
    // Serialize message field [secondsTillUnpenalized]
    bufferOffset = _serializer.uint16(obj.secondsTillUnpenalized, buffer, bufferOffset);
    // Serialize message field [allowedToMove]
    bufferOffset = _serializer.bool(obj.allowedToMove, buffer, bufferOffset);
    // Serialize message field [dropInTeam]
    bufferOffset = _serializer.bool(obj.dropInTeam, buffer, bufferOffset);
    // Serialize message field [dropInTime]
    bufferOffset = _serializer.uint16(obj.dropInTime, buffer, bufferOffset);
    // Serialize message field [penaltyShot]
    bufferOffset = _serializer.uint8(obj.penaltyShot, buffer, bufferOffset);
    // Serialize message field [singleShots]
    bufferOffset = _serializer.uint16(obj.singleShots, buffer, bufferOffset);
    // Serialize message field [coach_message]
    bufferOffset = _serializer.string(obj.coach_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameState
    let len;
    let data = new GameState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gameState]
    data.gameState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [secondaryState]
    data.secondaryState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [secondrayStateTeam]
    data.secondrayStateTeam = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [firstHalf]
    data.firstHalf = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ownScore]
    data.ownScore = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rivalScore]
    data.rivalScore = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [secondsRemaining]
    data.secondsRemaining = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [secondary_seconds_remaining]
    data.secondary_seconds_remaining = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [penalty]
    data.penalty = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hasKickOff]
    data.hasKickOff = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [penalized]
    data.penalized = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [secondsTillUnpenalized]
    data.secondsTillUnpenalized = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [allowedToMove]
    data.allowedToMove = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dropInTeam]
    data.dropInTeam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dropInTime]
    data.dropInTime = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [penaltyShot]
    data.penaltyShot = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [singleShots]
    data.singleShots = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [coach_message]
    data.coach_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.coach_message);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'game_controller/GameState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e87745f53267ba5d95d9900fdc4cf02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message provides all information from the game controller
    # for additional information see documentation of the game controller
    # https://github.com/bhuman/GameController
    
    
    std_msgs/Header header
    
    #uint8 GAMESTATE_INITAL=0
    #uint8 GAMESTATE_READY=1
    #uint8 GAMESTATE_SET=2
    #uint8 GAMESTATE_PLAYING=3
    #uint8 GAMESTATE_FINISHED=4
    uint8 gameState
    
    #uint8 STATE_NORMAL = 0
    #uint8 STATE_PENALTYSHOOT = 1
    #uint8 STATE_OVERTIME = 2
    #uint8 STATE_TIMEOUT = 3
    #uint8 STATE_FREEKICK = 4
    #uint8 STATE_PENALTYKICK = 5
    uint8 secondaryState
    
    # For newest version of game controller
    # Tells which team has the free kick or penalty kick
    uint8 secondrayStateTeam
    
    bool firstHalf
    uint8 ownScore
    uint8 rivalScore
    
    # Seconds remaining for the game half
    int16 secondsRemaining
    # Seconds remaining for things like kickoff
    uint16 secondary_seconds_remaining
    
    #uint8 NONE=0
    #uint8 PENALTY_HL_KID_BALL_MANIPULATION=30
    #uint8 PENALTY_HL_KID_PHYSICAL_CONTACT=31
    #uint8 PENALTY_HL_KID_ILLEGAL_ATTACK=22
    #uint8 PENALTY_HL_KID_ILLEGAL_DEFENSE=4
    #uint8 PENALTY_HL_KID_REQUEST_FOR_PICKUP=34
    #uint8 PENALTY_HL_KID_REQUEST_FOR_SERVICE=35
    uint8 MANUAL=15
    
    uint8 penalty
    bool hasKickOff
    bool penalized
    uint16 secondsTillUnpenalized
    
    # Allowed to move is different from penalized.
    # You can for example be not allowed to move due to the current state of the game
    bool allowedToMove
    
    bool dropInTeam
    uint16 dropInTime
    
    uint8 penaltyShot
    uint16 singleShots
    
    string coach_message
    
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gameState !== undefined) {
      resolved.gameState = msg.gameState;
    }
    else {
      resolved.gameState = 0
    }

    if (msg.secondaryState !== undefined) {
      resolved.secondaryState = msg.secondaryState;
    }
    else {
      resolved.secondaryState = 0
    }

    if (msg.secondrayStateTeam !== undefined) {
      resolved.secondrayStateTeam = msg.secondrayStateTeam;
    }
    else {
      resolved.secondrayStateTeam = 0
    }

    if (msg.firstHalf !== undefined) {
      resolved.firstHalf = msg.firstHalf;
    }
    else {
      resolved.firstHalf = false
    }

    if (msg.ownScore !== undefined) {
      resolved.ownScore = msg.ownScore;
    }
    else {
      resolved.ownScore = 0
    }

    if (msg.rivalScore !== undefined) {
      resolved.rivalScore = msg.rivalScore;
    }
    else {
      resolved.rivalScore = 0
    }

    if (msg.secondsRemaining !== undefined) {
      resolved.secondsRemaining = msg.secondsRemaining;
    }
    else {
      resolved.secondsRemaining = 0
    }

    if (msg.secondary_seconds_remaining !== undefined) {
      resolved.secondary_seconds_remaining = msg.secondary_seconds_remaining;
    }
    else {
      resolved.secondary_seconds_remaining = 0
    }

    if (msg.penalty !== undefined) {
      resolved.penalty = msg.penalty;
    }
    else {
      resolved.penalty = 0
    }

    if (msg.hasKickOff !== undefined) {
      resolved.hasKickOff = msg.hasKickOff;
    }
    else {
      resolved.hasKickOff = false
    }

    if (msg.penalized !== undefined) {
      resolved.penalized = msg.penalized;
    }
    else {
      resolved.penalized = false
    }

    if (msg.secondsTillUnpenalized !== undefined) {
      resolved.secondsTillUnpenalized = msg.secondsTillUnpenalized;
    }
    else {
      resolved.secondsTillUnpenalized = 0
    }

    if (msg.allowedToMove !== undefined) {
      resolved.allowedToMove = msg.allowedToMove;
    }
    else {
      resolved.allowedToMove = false
    }

    if (msg.dropInTeam !== undefined) {
      resolved.dropInTeam = msg.dropInTeam;
    }
    else {
      resolved.dropInTeam = false
    }

    if (msg.dropInTime !== undefined) {
      resolved.dropInTime = msg.dropInTime;
    }
    else {
      resolved.dropInTime = 0
    }

    if (msg.penaltyShot !== undefined) {
      resolved.penaltyShot = msg.penaltyShot;
    }
    else {
      resolved.penaltyShot = 0
    }

    if (msg.singleShots !== undefined) {
      resolved.singleShots = msg.singleShots;
    }
    else {
      resolved.singleShots = 0
    }

    if (msg.coach_message !== undefined) {
      resolved.coach_message = msg.coach_message;
    }
    else {
      resolved.coach_message = ''
    }

    return resolved;
    }
};

// Constants for message
GameState.Constants = {
  MANUAL: 15,
}

module.exports = GameState;
