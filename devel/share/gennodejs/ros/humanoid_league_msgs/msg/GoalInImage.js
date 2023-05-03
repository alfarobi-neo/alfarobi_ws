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
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GoalInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_post = null;
      this.right_post = null;
      this.center_direction = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_post')) {
        this.left_post = initObj.left_post
      }
      else {
        this.left_post = new PostInImage();
      }
      if (initObj.hasOwnProperty('right_post')) {
        this.right_post = initObj.right_post
      }
      else {
        this.right_post = new PostInImage();
      }
      if (initObj.hasOwnProperty('center_direction')) {
        this.center_direction = initObj.center_direction
      }
      else {
        this.center_direction = new geometry_msgs.msg.Point();
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
    // Serializes a message object of type GoalInImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_post]
    bufferOffset = PostInImage.serialize(obj.left_post, buffer, bufferOffset);
    // Serialize message field [right_post]
    bufferOffset = PostInImage.serialize(obj.right_post, buffer, bufferOffset);
    // Serialize message field [center_direction]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center_direction, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalInImage
    let len;
    let data = new GoalInImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_post]
    data.left_post = PostInImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_post]
    data.right_post = PostInImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_direction]
    data.center_direction = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 140;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/GoalInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8496af08ca739a530ae0e0b017a0ba88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A goal on the image. Should be extracted from the seen posts and bars
    
    # The header is included to get the time stamp for later use in tf
    std_msgs/Header header
    
    # Left post (or the only seen one)
    humanoid_league_msgs/PostInImage left_post
    # Right post, or null if only one post of the goal is seen
    humanoid_league_msgs/PostInImage right_post
    
    # Vector pointing to the (probable) center of the goal.
    # Should only be used if only one goal post is visible. If both are visible this should be none.
    # This is normally an educated guess, using the goal bar or the position of the post on the image
    # The point can also be outside of the image
    geometry_msgs/Point center_direction
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    # 0 means no goal was found.
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalInImage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_post !== undefined) {
      resolved.left_post = PostInImage.Resolve(msg.left_post)
    }
    else {
      resolved.left_post = new PostInImage()
    }

    if (msg.right_post !== undefined) {
      resolved.right_post = PostInImage.Resolve(msg.right_post)
    }
    else {
      resolved.right_post = new PostInImage()
    }

    if (msg.center_direction !== undefined) {
      resolved.center_direction = geometry_msgs.msg.Point.Resolve(msg.center_direction)
    }
    else {
      resolved.center_direction = new geometry_msgs.msg.Point()
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

module.exports = GoalInImage;
