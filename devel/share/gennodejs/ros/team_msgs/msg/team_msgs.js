// Auto-generated. Do not edit!

// (in-package team_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class team_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.robot_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
      if (initObj.hasOwnProperty('robot_pos')) {
        this.robot_pos = initObj.robot_pos
      }
      else {
        this.robot_pos = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type team_msgs
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    // Serialize message field [robot_pos]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.robot_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type team_msgs
    let len;
    let data = new team_msgs(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [robot_pos]
    data.robot_pos = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'team_msgs/team_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fee2648876f683c1a0041a1b09c9775';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    geometry_msgs/Vector3 robot_pos
    
    
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
    const resolved = new team_msgs(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    if (msg.robot_pos !== undefined) {
      resolved.robot_pos = geometry_msgs.msg.Vector3.Resolve(msg.robot_pos)
    }
    else {
      resolved.robot_pos = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = team_msgs;
