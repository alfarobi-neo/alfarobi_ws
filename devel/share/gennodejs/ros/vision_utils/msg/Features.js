// Auto-generated. Do not edit!

// (in-package vision_utils.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Feature = require('./Feature.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Features {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.feature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('feature')) {
        this.feature = initObj.feature
      }
      else {
        this.feature = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Features
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [feature]
    // Serialize the length for message field [feature]
    bufferOffset = _serializer.uint32(obj.feature.length, buffer, bufferOffset);
    obj.feature.forEach((val) => {
      bufferOffset = Feature.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Features
    let len;
    let data = new Features(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [feature]
    // Deserialize array length for message field [feature]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.feature = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.feature[i] = Feature.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.feature.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_utils/Features';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15096f959d80418cba64684bbae546db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    vision_utils/Feature[] feature
    
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
    MSG: vision_utils/Feature
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    float32 orientation
    float32 feature_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Features(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.feature !== undefined) {
      resolved.feature = new Array(msg.feature.length);
      for (let i = 0; i < resolved.feature.length; ++i) {
        resolved.feature[i] = Feature.Resolve(msg.feature[i]);
      }
    }
    else {
      resolved.feature = []
    }

    return resolved;
    }
};

module.exports = Features;
