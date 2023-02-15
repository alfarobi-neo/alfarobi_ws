// Auto-generated. Do not edit!

// (in-package team_communication.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robot_data = require('./robot_data.js');

//-----------------------------------------------------------

class team_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robots_data = null;
    }
    else {
      if (initObj.hasOwnProperty('robots_data')) {
        this.robots_data = initObj.robots_data
      }
      else {
        this.robots_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type team_data
    // Serialize message field [robots_data]
    // Serialize the length for message field [robots_data]
    bufferOffset = _serializer.uint32(obj.robots_data.length, buffer, bufferOffset);
    obj.robots_data.forEach((val) => {
      bufferOffset = robot_data.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type team_data
    let len;
    let data = new team_data(null);
    // Deserialize message field [robots_data]
    // Deserialize array length for message field [robots_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots_data[i] = robot_data.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robots_data.forEach((val) => {
      length += robot_data.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'team_communication/team_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1735ac3c77a7ac8b0eef367c0b7ec6e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robot_data[] robots_data
    
    ================================================================================
    MSG: team_communication/robot_data
    Header header
    string robot_name
    int8 robot_id
    geometry_msgs/Pose2D robot_pos
    geometry_msgs/Point ball_local
    uint8 robot_status
    uint8 ball_status
    uint8 is_moving
    
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
    const resolved = new team_data(null);
    if (msg.robots_data !== undefined) {
      resolved.robots_data = new Array(msg.robots_data.length);
      for (let i = 0; i < resolved.robots_data.length; ++i) {
        resolved.robots_data[i] = robot_data.Resolve(msg.robots_data[i]);
      }
    }
    else {
      resolved.robots_data = []
    }

    return resolved;
    }
};

module.exports = team_data;
