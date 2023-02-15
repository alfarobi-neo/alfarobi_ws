// Auto-generated. Do not edit!

// (in-package team_communication.msg)


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

class robot_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_name = null;
      this.robot_id = null;
      this.robot_pos = null;
      this.ball_local = null;
      this.robot_status = null;
      this.ball_status = null;
      this.is_moving = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('robot_pos')) {
        this.robot_pos = initObj.robot_pos
      }
      else {
        this.robot_pos = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('ball_local')) {
        this.ball_local = initObj.ball_local
      }
      else {
        this.ball_local = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('robot_status')) {
        this.robot_status = initObj.robot_status
      }
      else {
        this.robot_status = 0;
      }
      if (initObj.hasOwnProperty('ball_status')) {
        this.ball_status = initObj.ball_status
      }
      else {
        this.ball_status = 0;
      }
      if (initObj.hasOwnProperty('is_moving')) {
        this.is_moving = initObj.is_moving
      }
      else {
        this.is_moving = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_data
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int8(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [robot_pos]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.robot_pos, buffer, bufferOffset);
    // Serialize message field [ball_local]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ball_local, buffer, bufferOffset);
    // Serialize message field [robot_status]
    bufferOffset = _serializer.uint8(obj.robot_status, buffer, bufferOffset);
    // Serialize message field [ball_status]
    bufferOffset = _serializer.uint8(obj.ball_status, buffer, bufferOffset);
    // Serialize message field [is_moving]
    bufferOffset = _serializer.uint8(obj.is_moving, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_data
    let len;
    let data = new robot_data(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [robot_pos]
    data.robot_pos = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [ball_local]
    data.ball_local = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_status]
    data.robot_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ball_status]
    data.ball_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_moving]
    data.is_moving = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.robot_name.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'team_communication/robot_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4661b4bc875594f135e9f8677fd086cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new robot_data(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.robot_pos !== undefined) {
      resolved.robot_pos = geometry_msgs.msg.Pose2D.Resolve(msg.robot_pos)
    }
    else {
      resolved.robot_pos = new geometry_msgs.msg.Pose2D()
    }

    if (msg.ball_local !== undefined) {
      resolved.ball_local = geometry_msgs.msg.Point.Resolve(msg.ball_local)
    }
    else {
      resolved.ball_local = new geometry_msgs.msg.Point()
    }

    if (msg.robot_status !== undefined) {
      resolved.robot_status = msg.robot_status;
    }
    else {
      resolved.robot_status = 0
    }

    if (msg.ball_status !== undefined) {
      resolved.ball_status = msg.ball_status;
    }
    else {
      resolved.ball_status = 0
    }

    if (msg.is_moving !== undefined) {
      resolved.is_moving = msg.is_moving;
    }
    else {
      resolved.is_moving = 0
    }

    return resolved;
    }
};

module.exports = robot_data;
