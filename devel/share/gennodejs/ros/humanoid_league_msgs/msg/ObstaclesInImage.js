// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleInImage = require('./ObstacleInImage.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObstaclesInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstaclesInImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = ObstacleInImage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstaclesInImage
    let len;
    let data = new ObstaclesInImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = ObstacleInImage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 32 * object.obstacles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/ObstaclesInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0807f4239b3cd59edd38069d2f956035';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The header is included to get the time stamp for later use in tf
    std_msgs/Header header
    
    ObstacleInImage[] obstacles
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
    MSG: humanoid_league_msgs/ObstacleInImage
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
    const resolved = new ObstaclesInImage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = ObstacleInImage.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    return resolved;
    }
};

module.exports = ObstaclesInImage;
