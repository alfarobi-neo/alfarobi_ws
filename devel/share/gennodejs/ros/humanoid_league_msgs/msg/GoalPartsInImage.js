// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PostInImage = require('./PostInImage.js');
let BarInImage = require('./BarInImage.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GoalPartsInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.posts = null;
      this.bars = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('posts')) {
        this.posts = initObj.posts
      }
      else {
        this.posts = [];
      }
      if (initObj.hasOwnProperty('bars')) {
        this.bars = initObj.bars
      }
      else {
        this.bars = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalPartsInImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [posts]
    // Serialize the length for message field [posts]
    bufferOffset = _serializer.uint32(obj.posts.length, buffer, bufferOffset);
    obj.posts.forEach((val) => {
      bufferOffset = PostInImage.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bars]
    // Serialize the length for message field [bars]
    bufferOffset = _serializer.uint32(obj.bars.length, buffer, bufferOffset);
    obj.bars.forEach((val) => {
      bufferOffset = BarInImage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalPartsInImage
    let len;
    let data = new GoalPartsInImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [posts]
    // Deserialize array length for message field [posts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.posts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.posts[i] = PostInImage.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bars]
    // Deserialize array length for message field [bars]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bars = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bars[i] = BarInImage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 56 * object.posts.length;
    length += 56 * object.bars.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/GoalPartsInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '414bdeb7ea88f8c7d90c72bc02231e66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The header is included to get the time stamp for later use in tf
    std_msgs/Header header
    
    PostInImage[] posts
    BarInImage[] bars
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
    MSG: humanoid_league_msgs/PostInImage
    # A (possible) goal post in the image. It is defined by two end points and a width.
    
    # Two points defining the significant axis of the post
    geometry_msgs/Point foot_point
    geometry_msgs/Point top_point
    # Orthogonal to significant vector (in pixel)
    float32 width
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: humanoid_league_msgs/BarInImage
    # A (possible) goal bar in the image. It is defined by the two end points and a width.
    
    # Two points defining the significant axis of the post
    geometry_msgs/Point left_point
    geometry_msgs/Point right_point
    # Orthogonal to significant vector (in pixel)
    float32 width
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalPartsInImage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.posts !== undefined) {
      resolved.posts = new Array(msg.posts.length);
      for (let i = 0; i < resolved.posts.length; ++i) {
        resolved.posts[i] = PostInImage.Resolve(msg.posts[i]);
      }
    }
    else {
      resolved.posts = []
    }

    if (msg.bars !== undefined) {
      resolved.bars = new Array(msg.bars.length);
      for (let i = 0; i < resolved.bars.length; ++i) {
        resolved.bars[i] = BarInImage.Resolve(msg.bars[i]);
      }
    }
    else {
      resolved.bars = []
    }

    return resolved;
    }
};

module.exports = GoalPartsInImage;
