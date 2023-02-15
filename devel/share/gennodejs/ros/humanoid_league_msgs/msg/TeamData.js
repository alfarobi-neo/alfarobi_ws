// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position2D = require('./Position2D.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TeamData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_ids = null;
      this.role = null;
      this.action = null;
      this.state = null;
      this.robot_positions = null;
      this.ball_relative = null;
      this.oppgoal_relative = null;
      this.opponent_robot_a = null;
      this.opponent_robot_b = null;
      this.opponent_robot_c = null;
      this.opponent_robot_d = null;
      this.team_robot_a = null;
      this.team_robot_b = null;
      this.team_robot_c = null;
      this.avg_walking_speed = null;
      this.time_to_position_at_ball = null;
      this.max_kicking_distance = null;
      this.offensive_side = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robot_ids')) {
        this.robot_ids = initObj.robot_ids
      }
      else {
        this.robot_ids = [];
      }
      if (initObj.hasOwnProperty('role')) {
        this.role = initObj.role
      }
      else {
        this.role = [];
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = [];
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
      if (initObj.hasOwnProperty('robot_positions')) {
        this.robot_positions = initObj.robot_positions
      }
      else {
        this.robot_positions = [];
      }
      if (initObj.hasOwnProperty('ball_relative')) {
        this.ball_relative = initObj.ball_relative
      }
      else {
        this.ball_relative = [];
      }
      if (initObj.hasOwnProperty('oppgoal_relative')) {
        this.oppgoal_relative = initObj.oppgoal_relative
      }
      else {
        this.oppgoal_relative = [];
      }
      if (initObj.hasOwnProperty('opponent_robot_a')) {
        this.opponent_robot_a = initObj.opponent_robot_a
      }
      else {
        this.opponent_robot_a = [];
      }
      if (initObj.hasOwnProperty('opponent_robot_b')) {
        this.opponent_robot_b = initObj.opponent_robot_b
      }
      else {
        this.opponent_robot_b = [];
      }
      if (initObj.hasOwnProperty('opponent_robot_c')) {
        this.opponent_robot_c = initObj.opponent_robot_c
      }
      else {
        this.opponent_robot_c = [];
      }
      if (initObj.hasOwnProperty('opponent_robot_d')) {
        this.opponent_robot_d = initObj.opponent_robot_d
      }
      else {
        this.opponent_robot_d = [];
      }
      if (initObj.hasOwnProperty('team_robot_a')) {
        this.team_robot_a = initObj.team_robot_a
      }
      else {
        this.team_robot_a = [];
      }
      if (initObj.hasOwnProperty('team_robot_b')) {
        this.team_robot_b = initObj.team_robot_b
      }
      else {
        this.team_robot_b = [];
      }
      if (initObj.hasOwnProperty('team_robot_c')) {
        this.team_robot_c = initObj.team_robot_c
      }
      else {
        this.team_robot_c = [];
      }
      if (initObj.hasOwnProperty('avg_walking_speed')) {
        this.avg_walking_speed = initObj.avg_walking_speed
      }
      else {
        this.avg_walking_speed = [];
      }
      if (initObj.hasOwnProperty('time_to_position_at_ball')) {
        this.time_to_position_at_ball = initObj.time_to_position_at_ball
      }
      else {
        this.time_to_position_at_ball = [];
      }
      if (initObj.hasOwnProperty('max_kicking_distance')) {
        this.max_kicking_distance = initObj.max_kicking_distance
      }
      else {
        this.max_kicking_distance = [];
      }
      if (initObj.hasOwnProperty('offensive_side')) {
        this.offensive_side = initObj.offensive_side
      }
      else {
        this.offensive_side = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeamData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_ids]
    bufferOffset = _arraySerializer.uint8(obj.robot_ids, buffer, bufferOffset, null);
    // Serialize message field [role]
    bufferOffset = _arraySerializer.uint8(obj.role, buffer, bufferOffset, null);
    // Serialize message field [action]
    bufferOffset = _arraySerializer.uint8(obj.action, buffer, bufferOffset, null);
    // Serialize message field [state]
    bufferOffset = _arraySerializer.uint8(obj.state, buffer, bufferOffset, null);
    // Serialize message field [robot_positions]
    // Serialize the length for message field [robot_positions]
    bufferOffset = _serializer.uint32(obj.robot_positions.length, buffer, bufferOffset);
    obj.robot_positions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ball_relative]
    // Serialize the length for message field [ball_relative]
    bufferOffset = _serializer.uint32(obj.ball_relative.length, buffer, bufferOffset);
    obj.ball_relative.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [oppgoal_relative]
    // Serialize the length for message field [oppgoal_relative]
    bufferOffset = _serializer.uint32(obj.oppgoal_relative.length, buffer, bufferOffset);
    obj.oppgoal_relative.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [opponent_robot_a]
    // Serialize the length for message field [opponent_robot_a]
    bufferOffset = _serializer.uint32(obj.opponent_robot_a.length, buffer, bufferOffset);
    obj.opponent_robot_a.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [opponent_robot_b]
    // Serialize the length for message field [opponent_robot_b]
    bufferOffset = _serializer.uint32(obj.opponent_robot_b.length, buffer, bufferOffset);
    obj.opponent_robot_b.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [opponent_robot_c]
    // Serialize the length for message field [opponent_robot_c]
    bufferOffset = _serializer.uint32(obj.opponent_robot_c.length, buffer, bufferOffset);
    obj.opponent_robot_c.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [opponent_robot_d]
    // Serialize the length for message field [opponent_robot_d]
    bufferOffset = _serializer.uint32(obj.opponent_robot_d.length, buffer, bufferOffset);
    obj.opponent_robot_d.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [team_robot_a]
    // Serialize the length for message field [team_robot_a]
    bufferOffset = _serializer.uint32(obj.team_robot_a.length, buffer, bufferOffset);
    obj.team_robot_a.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [team_robot_b]
    // Serialize the length for message field [team_robot_b]
    bufferOffset = _serializer.uint32(obj.team_robot_b.length, buffer, bufferOffset);
    obj.team_robot_b.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [team_robot_c]
    // Serialize the length for message field [team_robot_c]
    bufferOffset = _serializer.uint32(obj.team_robot_c.length, buffer, bufferOffset);
    obj.team_robot_c.forEach((val) => {
      bufferOffset = Position2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [avg_walking_speed]
    bufferOffset = _arraySerializer.float32(obj.avg_walking_speed, buffer, bufferOffset, null);
    // Serialize message field [time_to_position_at_ball]
    bufferOffset = _arraySerializer.float32(obj.time_to_position_at_ball, buffer, bufferOffset, null);
    // Serialize message field [max_kicking_distance]
    bufferOffset = _arraySerializer.float32(obj.max_kicking_distance, buffer, bufferOffset, null);
    // Serialize message field [offensive_side]
    bufferOffset = _arraySerializer.uint8(obj.offensive_side, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeamData
    let len;
    let data = new TeamData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_ids]
    data.robot_ids = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [role]
    data.role = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [action]
    data.action = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [state]
    data.state = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [robot_positions]
    // Deserialize array length for message field [robot_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robot_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robot_positions[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ball_relative]
    // Deserialize array length for message field [ball_relative]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ball_relative = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ball_relative[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [oppgoal_relative]
    // Deserialize array length for message field [oppgoal_relative]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.oppgoal_relative = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.oppgoal_relative[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [opponent_robot_a]
    // Deserialize array length for message field [opponent_robot_a]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.opponent_robot_a = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.opponent_robot_a[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [opponent_robot_b]
    // Deserialize array length for message field [opponent_robot_b]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.opponent_robot_b = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.opponent_robot_b[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [opponent_robot_c]
    // Deserialize array length for message field [opponent_robot_c]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.opponent_robot_c = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.opponent_robot_c[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [opponent_robot_d]
    // Deserialize array length for message field [opponent_robot_d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.opponent_robot_d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.opponent_robot_d[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [team_robot_a]
    // Deserialize array length for message field [team_robot_a]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.team_robot_a = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.team_robot_a[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [team_robot_b]
    // Deserialize array length for message field [team_robot_b]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.team_robot_b = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.team_robot_b[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [team_robot_c]
    // Deserialize array length for message field [team_robot_c]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.team_robot_c = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.team_robot_c[i] = Position2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [avg_walking_speed]
    data.avg_walking_speed = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [time_to_position_at_ball]
    data.time_to_position_at_ball = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [max_kicking_distance]
    data.max_kicking_distance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [offensive_side]
    data.offensive_side = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.robot_ids.length;
    length += object.role.length;
    length += object.action.length;
    length += object.state.length;
    length += 24 * object.robot_positions.length;
    object.ball_relative.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    object.oppgoal_relative.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    object.opponent_robot_a.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    object.opponent_robot_b.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    object.opponent_robot_c.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    object.opponent_robot_d.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    object.team_robot_a.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    object.team_robot_b.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    object.team_robot_c.forEach((val) => {
      length += Position2D.getMessageSize(val);
    });
    length += 4 * object.avg_walking_speed.length;
    length += 4 * object.time_to_position_at_ball.length;
    length += 4 * object.max_kicking_distance.length;
    length += object.offensive_side.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/TeamData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c1658268445f044e3a6e26e5ab92357';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains all information provided by the mitecom standard for team communication.
    # Everything is in meters (ROS standard) not to be confused with millimeters (mitecom standard)!
    # Set belief values to 0 if object was not recognized.
    # More information here: https://github.com/fumanoids/mitecom
    
    std_msgs/Header header
    
    # Every value is an array because we can have multiple robots communicating with us.
    # The values match with the robot ids
    uint8[] robot_ids
    
    uint8 ROLE_IDLING=0
    uint8 ROLE_OTHER=1
    uint8 ROLE_STRIKER=2
    uint8 ROLE_SUPPORTER=3
    uint8 ROLE_DEFENDER=4
    uint8 ROLE_GOALIE=5
    uint8[] role
    
    uint8 ACTION_UNDEFINED=0
    uint8 ACTION_POSITIONING=1
    uint8 ACTION_GOING_TO_BALL=2
    uint8 ACTION_TRYING_TO_SCORE=3
    uint8 ACTION_WAITING=4
    uint8[] action
    
    uint8 STATE_INACTIVE=0
    uint8 STATE_ACTIVE=1
    uint8 STATE_PENALIZED=2
    uint8[] state
    
    # Absolute position values
    geometry_msgs/Pose2D[] robot_positions
    
    # Relative ball position, theta of Pose2D is not used
    Position2D[] ball_relative
    
    # Relative position of the opponent goal, theta of Pose2D is not used
    # This is helpful if the robot has no global position, but sees the goal
    Position2D[] oppgoal_relative
    
    # Positions of opponent robots, if they are recognized
    # The letter of the robot is arbitrary as the sending robot does not know the id of a seen robot
    Position2D[] opponent_robot_a
    Position2D[] opponent_robot_b
    Position2D[] opponent_robot_c
    Position2D[] opponent_robot_d
    
    # Positions of team robots, if they are recognized
    # The letter of the robot is arbitrary as the sending robot does not know the id of a seen robot
    Position2D[] team_robot_a
    Position2D[] team_robot_b
    Position2D[] team_robot_c
    
    float32[] avg_walking_speed
    float32[] time_to_position_at_ball
    float32[] max_kicking_distance
    
    # Strategy over which side the team tries to attack
    # Especially useful during a kickoff
    uint8 UNSPECIFIED=0
    uint8 LEFT=1
    uint8 RIGHT=2
    uint8 CENTER=3
    uint8[] offensive_side
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: humanoid_league_msgs/Position2D
    # The position system is the same as mitecom. The following part is taken from the mitecom documentation:
    # https://github.com/fumanoids/mitecom
    # The origin of the absolute coordinate center is the center of the middle
    # circle (center of field). The x axis points towards the opponent goal, the
    # y axis to the left.
    #
    #      y
    #      ^       ______________________
    #      |    M  |          |          |  O
    #      |    Y  |_ -x, y   |   x, y  _|  P
    #      |    G  | |        |        | |  P
    # 0    +    O  | |       ( )       | |  G
    #      |    A  |_|        |        |_|  O
    #      |    L  |  -x,-y   |   x,-y   |  A
    #      |       |__________|__________|  L
    #      |
    #      +------------------+--------------> x
    #                         0
    #
    # The 0 value of the orientation is pointing to the opponent side (right side in the image).
    # The value increases counter clockwise
    # Everything in meters (because it is the ROS standard)
    
    # The header is included to get the time stamp for later use in tf
    std_msgs/Header header
    
    geometry_msgs/Pose2D pose
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TeamData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_ids !== undefined) {
      resolved.robot_ids = msg.robot_ids;
    }
    else {
      resolved.robot_ids = []
    }

    if (msg.role !== undefined) {
      resolved.role = msg.role;
    }
    else {
      resolved.role = []
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = []
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
    }

    if (msg.robot_positions !== undefined) {
      resolved.robot_positions = new Array(msg.robot_positions.length);
      for (let i = 0; i < resolved.robot_positions.length; ++i) {
        resolved.robot_positions[i] = geometry_msgs.msg.Pose2D.Resolve(msg.robot_positions[i]);
      }
    }
    else {
      resolved.robot_positions = []
    }

    if (msg.ball_relative !== undefined) {
      resolved.ball_relative = new Array(msg.ball_relative.length);
      for (let i = 0; i < resolved.ball_relative.length; ++i) {
        resolved.ball_relative[i] = Position2D.Resolve(msg.ball_relative[i]);
      }
    }
    else {
      resolved.ball_relative = []
    }

    if (msg.oppgoal_relative !== undefined) {
      resolved.oppgoal_relative = new Array(msg.oppgoal_relative.length);
      for (let i = 0; i < resolved.oppgoal_relative.length; ++i) {
        resolved.oppgoal_relative[i] = Position2D.Resolve(msg.oppgoal_relative[i]);
      }
    }
    else {
      resolved.oppgoal_relative = []
    }

    if (msg.opponent_robot_a !== undefined) {
      resolved.opponent_robot_a = new Array(msg.opponent_robot_a.length);
      for (let i = 0; i < resolved.opponent_robot_a.length; ++i) {
        resolved.opponent_robot_a[i] = Position2D.Resolve(msg.opponent_robot_a[i]);
      }
    }
    else {
      resolved.opponent_robot_a = []
    }

    if (msg.opponent_robot_b !== undefined) {
      resolved.opponent_robot_b = new Array(msg.opponent_robot_b.length);
      for (let i = 0; i < resolved.opponent_robot_b.length; ++i) {
        resolved.opponent_robot_b[i] = Position2D.Resolve(msg.opponent_robot_b[i]);
      }
    }
    else {
      resolved.opponent_robot_b = []
    }

    if (msg.opponent_robot_c !== undefined) {
      resolved.opponent_robot_c = new Array(msg.opponent_robot_c.length);
      for (let i = 0; i < resolved.opponent_robot_c.length; ++i) {
        resolved.opponent_robot_c[i] = Position2D.Resolve(msg.opponent_robot_c[i]);
      }
    }
    else {
      resolved.opponent_robot_c = []
    }

    if (msg.opponent_robot_d !== undefined) {
      resolved.opponent_robot_d = new Array(msg.opponent_robot_d.length);
      for (let i = 0; i < resolved.opponent_robot_d.length; ++i) {
        resolved.opponent_robot_d[i] = Position2D.Resolve(msg.opponent_robot_d[i]);
      }
    }
    else {
      resolved.opponent_robot_d = []
    }

    if (msg.team_robot_a !== undefined) {
      resolved.team_robot_a = new Array(msg.team_robot_a.length);
      for (let i = 0; i < resolved.team_robot_a.length; ++i) {
        resolved.team_robot_a[i] = Position2D.Resolve(msg.team_robot_a[i]);
      }
    }
    else {
      resolved.team_robot_a = []
    }

    if (msg.team_robot_b !== undefined) {
      resolved.team_robot_b = new Array(msg.team_robot_b.length);
      for (let i = 0; i < resolved.team_robot_b.length; ++i) {
        resolved.team_robot_b[i] = Position2D.Resolve(msg.team_robot_b[i]);
      }
    }
    else {
      resolved.team_robot_b = []
    }

    if (msg.team_robot_c !== undefined) {
      resolved.team_robot_c = new Array(msg.team_robot_c.length);
      for (let i = 0; i < resolved.team_robot_c.length; ++i) {
        resolved.team_robot_c[i] = Position2D.Resolve(msg.team_robot_c[i]);
      }
    }
    else {
      resolved.team_robot_c = []
    }

    if (msg.avg_walking_speed !== undefined) {
      resolved.avg_walking_speed = msg.avg_walking_speed;
    }
    else {
      resolved.avg_walking_speed = []
    }

    if (msg.time_to_position_at_ball !== undefined) {
      resolved.time_to_position_at_ball = msg.time_to_position_at_ball;
    }
    else {
      resolved.time_to_position_at_ball = []
    }

    if (msg.max_kicking_distance !== undefined) {
      resolved.max_kicking_distance = msg.max_kicking_distance;
    }
    else {
      resolved.max_kicking_distance = []
    }

    if (msg.offensive_side !== undefined) {
      resolved.offensive_side = msg.offensive_side;
    }
    else {
      resolved.offensive_side = []
    }

    return resolved;
    }
};

// Constants for message
TeamData.Constants = {
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
  STATE_INACTIVE: 0,
  STATE_ACTIVE: 1,
  STATE_PENALIZED: 2,
  UNSPECIFIED: 0,
  LEFT: 1,
  RIGHT: 2,
  CENTER: 3,
}

module.exports = TeamData;
