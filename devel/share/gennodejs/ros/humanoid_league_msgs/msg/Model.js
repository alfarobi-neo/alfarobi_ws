// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BallRelative = require('./BallRelative.js');
let ObstaclesRelative = require('./ObstaclesRelative.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Model {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ball = null;
      this.obstacles = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('ball')) {
        this.ball = initObj.ball
      }
      else {
        this.ball = new BallRelative();
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = new ObstaclesRelative();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.PoseWithCovarianceStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Model
    // Serialize message field [ball]
    bufferOffset = BallRelative.serialize(obj.ball, buffer, bufferOffset);
    // Serialize message field [obstacles]
    bufferOffset = ObstaclesRelative.serialize(obj.obstacles, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.PoseWithCovarianceStamped.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Model
    let len;
    let data = new Model(null);
    // Deserialize message field [ball]
    data.ball = BallRelative.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacles]
    data.obstacles = ObstaclesRelative.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.PoseWithCovarianceStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BallRelative.getMessageSize(object.ball);
    length += ObstaclesRelative.getMessageSize(object.obstacles);
    length += geometry_msgs.msg.PoseWithCovarianceStamped.getMessageSize(object.position);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/Model';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55f7ee25e88a6845f62dc23a8bccd993';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The model message contains all information from the object recognition after filtering
    
    BallRelative ball
    ObstaclesRelative obstacles
    geometry_msgs/PoseWithCovarianceStamped position
    ================================================================================
    MSG: humanoid_league_msgs/BallRelative
    # Provides the relative position of the ball
    
    # The header is included to get the time stamp
    std_msgs/Header header
    
    # x to front
    # y to left
    # z height (should normally be 0, if ball was not high kicked)
    # Everything is measured in meters
    geometry_msgs/Point ball_relative
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    # 0 means no ball was found
    float32 confidence
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
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: humanoid_league_msgs/ObstaclesRelative
    # The header is included to get the time stamp for later use in tf
    std_msgs/Header header
    
    ObstacleRelative[] obstacles
    ================================================================================
    MSG: humanoid_league_msgs/ObstacleRelative
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
    MSG: geometry_msgs/PoseWithCovarianceStamped
    # This expresses an estimated pose with a reference coordinate frame and timestamp
    
    Header header
    PoseWithCovariance pose
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Model(null);
    if (msg.ball !== undefined) {
      resolved.ball = BallRelative.Resolve(msg.ball)
    }
    else {
      resolved.ball = new BallRelative()
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = ObstaclesRelative.Resolve(msg.obstacles)
    }
    else {
      resolved.obstacles = new ObstaclesRelative()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.PoseWithCovarianceStamped.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.PoseWithCovarianceStamped()
    }

    return resolved;
    }
};

module.exports = Model;
