// Auto-generated. Do not edit!

// (in-package vision_simple.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Points {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.WhitePoints = null;
      this.BorderPoints = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('WhitePoints')) {
        this.WhitePoints = initObj.WhitePoints
      }
      else {
        this.WhitePoints = [];
      }
      if (initObj.hasOwnProperty('BorderPoints')) {
        this.BorderPoints = initObj.BorderPoints
      }
      else {
        this.BorderPoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Points
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [WhitePoints]
    // Serialize the length for message field [WhitePoints]
    bufferOffset = _serializer.uint32(obj.WhitePoints.length, buffer, bufferOffset);
    obj.WhitePoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [BorderPoints]
    // Serialize the length for message field [BorderPoints]
    bufferOffset = _serializer.uint32(obj.BorderPoints.length, buffer, bufferOffset);
    obj.BorderPoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Points
    let len;
    let data = new Points(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [WhitePoints]
    // Deserialize array length for message field [WhitePoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.WhitePoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.WhitePoints[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [BorderPoints]
    // Deserialize array length for message field [BorderPoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.BorderPoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.BorderPoints[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.WhitePoints.length;
    length += 24 * object.BorderPoints.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_simple/Points';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e29ced396cf3ffb398380dd0f818d7b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    geometry_msgs/Point[] WhitePoints
    geometry_msgs/Point[] BorderPoints
    
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
    const resolved = new Points(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.WhitePoints !== undefined) {
      resolved.WhitePoints = new Array(msg.WhitePoints.length);
      for (let i = 0; i < resolved.WhitePoints.length; ++i) {
        resolved.WhitePoints[i] = geometry_msgs.msg.Point.Resolve(msg.WhitePoints[i]);
      }
    }
    else {
      resolved.WhitePoints = []
    }

    if (msg.BorderPoints !== undefined) {
      resolved.BorderPoints = new Array(msg.BorderPoints.length);
      for (let i = 0; i < resolved.BorderPoints.length; ++i) {
        resolved.BorderPoints[i] = geometry_msgs.msg.Point.Resolve(msg.BorderPoints[i]);
      }
    }
    else {
      resolved.BorderPoints = []
    }

    return resolved;
    }
};

module.exports = Points;
