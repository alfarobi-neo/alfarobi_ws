// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let trajectory_msgs = _finder('trajectory_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Animation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.request = null;
      this.first = null;
      this.last = null;
      this.hcm = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = false;
      }
      if (initObj.hasOwnProperty('first')) {
        this.first = initObj.first
      }
      else {
        this.first = false;
      }
      if (initObj.hasOwnProperty('last')) {
        this.last = initObj.last
      }
      else {
        this.last = false;
      }
      if (initObj.hasOwnProperty('hcm')) {
        this.hcm = initObj.hcm
      }
      else {
        this.hcm = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new trajectory_msgs.msg.JointTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Animation
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = _serializer.bool(obj.request, buffer, bufferOffset);
    // Serialize message field [first]
    bufferOffset = _serializer.bool(obj.first, buffer, bufferOffset);
    // Serialize message field [last]
    bufferOffset = _serializer.bool(obj.last, buffer, bufferOffset);
    // Serialize message field [hcm]
    bufferOffset = _serializer.bool(obj.hcm, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = trajectory_msgs.msg.JointTrajectory.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Animation
    let len;
    let data = new Animation(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [request]
    data.request = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [first]
    data.first = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [last]
    data.last = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hcm]
    data.hcm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = trajectory_msgs.msg.JointTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += trajectory_msgs.msg.JointTrajectory.getMessageSize(object.position);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/Animation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dca54c410ac9021185fa92160c24c438';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # This is a request to make HCM controllable, e.g. stop walking
    bool request
    
    # First message of this animation
    bool first
    
    # Last message of this animation
    bool last
    
    # Is this animation comming from the hardware control manager
    bool hcm
    
    # Joint goals
    trajectory_msgs/JointTrajectory position
    
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
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Animation(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = false
    }

    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = false
    }

    if (msg.last !== undefined) {
      resolved.last = msg.last;
    }
    else {
      resolved.last = false
    }

    if (msg.hcm !== undefined) {
      resolved.hcm = msg.hcm;
    }
    else {
      resolved.hcm = false
    }

    if (msg.position !== undefined) {
      resolved.position = trajectory_msgs.msg.JointTrajectory.Resolve(msg.position)
    }
    else {
      resolved.position = new trajectory_msgs.msg.JointTrajectory()
    }

    return resolved;
    }
};

module.exports = Animation;
