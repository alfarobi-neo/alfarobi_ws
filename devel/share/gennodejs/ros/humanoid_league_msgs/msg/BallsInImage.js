// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BallInImage = require('./BallInImage.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BallsInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.candidates = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('candidates')) {
        this.candidates = initObj.candidates
      }
      else {
        this.candidates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BallsInImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [candidates]
    // Serialize the length for message field [candidates]
    bufferOffset = _serializer.uint32(obj.candidates.length, buffer, bufferOffset);
    obj.candidates.forEach((val) => {
      bufferOffset = BallInImage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BallsInImage
    let len;
    let data = new BallsInImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [candidates]
    // Deserialize array length for message field [candidates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.candidates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.candidates[i] = BallInImage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 36 * object.candidates.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/BallsInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35ec7ec20262c79114f07e8f1e8ce673';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Contains multiple balls on an image. Should be mainly used to provide ball candidates (for example round shapes)
    # in the first step of the vision pipeline.
    
    # The header is included to get the time stamp for later use in tf
    std_msgs/Header header
    
    # An empty array means no balls have been found.
    humanoid_league_msgs/BallInImage[] candidates
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
    MSG: humanoid_league_msgs/BallInImage
    # Providing a (possible) ball in the image
    
    # Center point of the ball, the z-axis should be ignored (in pixel)
    geometry_msgs/Point center
    # Diameter of the ball (in pixel)
    float64 diameter
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    # 0 means no ball was found
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
    const resolved = new BallsInImage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.candidates !== undefined) {
      resolved.candidates = new Array(msg.candidates.length);
      for (let i = 0; i < resolved.candidates.length; ++i) {
        resolved.candidates[i] = BallInImage.Resolve(msg.candidates[i]);
      }
    }
    else {
      resolved.candidates = []
    }

    return resolved;
    }
};

module.exports = BallsInImage;
