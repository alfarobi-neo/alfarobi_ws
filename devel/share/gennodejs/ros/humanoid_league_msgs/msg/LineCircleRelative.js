// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LineCircleRelative {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left = null;
      this.middle = null;
      this.right = null;
    }
    else {
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('middle')) {
        this.middle = initObj.middle
      }
      else {
        this.middle = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineCircleRelative
    // Serialize message field [left]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [middle]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.middle, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineCircleRelative
    let len;
    let data = new LineCircleRelative(null);
    // Deserialize message field [left]
    data.left = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [middle]
    data.middle = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/LineCircleRelative';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a308f4836d6e1ddc7fdb4aef3d3e8a62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Defines a line circle in relative space, i.e. the center circle
    
    # The circle is defined by an arc with left and right end points and a point in the middle for getting the radius
    geometry_msgs/Point left
    geometry_msgs/Point middle
    geometry_msgs/Point right
    
    
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
    const resolved = new LineCircleRelative(null);
    if (msg.left !== undefined) {
      resolved.left = geometry_msgs.msg.Point.Resolve(msg.left)
    }
    else {
      resolved.left = new geometry_msgs.msg.Point()
    }

    if (msg.middle !== undefined) {
      resolved.middle = geometry_msgs.msg.Point.Resolve(msg.middle)
    }
    else {
      resolved.middle = new geometry_msgs.msg.Point()
    }

    if (msg.right !== undefined) {
      resolved.right = geometry_msgs.msg.Point.Resolve(msg.right)
    }
    else {
      resolved.right = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = LineCircleRelative;
