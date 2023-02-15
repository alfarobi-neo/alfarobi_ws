// Auto-generated. Do not edit!

// (in-package vision_utils.msg)


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

class FieldBoundary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bound1 = null;
      this.bound2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bound1')) {
        this.bound1 = initObj.bound1
      }
      else {
        this.bound1 = [];
      }
      if (initObj.hasOwnProperty('bound2')) {
        this.bound2 = initObj.bound2
      }
      else {
        this.bound2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FieldBoundary
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bound1]
    // Serialize the length for message field [bound1]
    bufferOffset = _serializer.uint32(obj.bound1.length, buffer, bufferOffset);
    obj.bound1.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bound2]
    // Serialize the length for message field [bound2]
    bufferOffset = _serializer.uint32(obj.bound2.length, buffer, bufferOffset);
    obj.bound2.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FieldBoundary
    let len;
    let data = new FieldBoundary(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bound1]
    // Deserialize array length for message field [bound1]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bound1 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bound1[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bound2]
    // Deserialize array length for message field [bound2]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bound2 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bound2[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.bound1.length;
    length += 24 * object.bound2.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_utils/FieldBoundary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fbaae514a52711da5011ab63728a939';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Vector3[] bound1
    geometry_msgs/Vector3[] bound2
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new FieldBoundary(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bound1 !== undefined) {
      resolved.bound1 = new Array(msg.bound1.length);
      for (let i = 0; i < resolved.bound1.length; ++i) {
        resolved.bound1[i] = geometry_msgs.msg.Vector3.Resolve(msg.bound1[i]);
      }
    }
    else {
      resolved.bound1 = []
    }

    if (msg.bound2 !== undefined) {
      resolved.bound2 = new Array(msg.bound2.length);
      for (let i = 0; i < resolved.bound2.length; ++i) {
        resolved.bound2[i] = geometry_msgs.msg.Vector3.Resolve(msg.bound2[i]);
      }
    }
    else {
      resolved.bound2 = []
    }

    return resolved;
    }
};

module.exports = FieldBoundary;
