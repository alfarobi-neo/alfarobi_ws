// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LineSegmentRelative = require('./LineSegmentRelative.js');
let LineIntersectionRelative = require('./LineIntersectionRelative.js');
let LineCircleRelative = require('./LineCircleRelative.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LineInformationRelative {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.segments = null;
      this.markings = null;
      this.circles = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('segments')) {
        this.segments = initObj.segments
      }
      else {
        this.segments = [];
      }
      if (initObj.hasOwnProperty('markings')) {
        this.markings = initObj.markings
      }
      else {
        this.markings = [];
      }
      if (initObj.hasOwnProperty('circles')) {
        this.circles = initObj.circles
      }
      else {
        this.circles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineInformationRelative
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [segments]
    // Serialize the length for message field [segments]
    bufferOffset = _serializer.uint32(obj.segments.length, buffer, bufferOffset);
    obj.segments.forEach((val) => {
      bufferOffset = LineSegmentRelative.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [markings]
    // Serialize the length for message field [markings]
    bufferOffset = _serializer.uint32(obj.markings.length, buffer, bufferOffset);
    obj.markings.forEach((val) => {
      bufferOffset = LineIntersectionRelative.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [circles]
    // Serialize the length for message field [circles]
    bufferOffset = _serializer.uint32(obj.circles.length, buffer, bufferOffset);
    obj.circles.forEach((val) => {
      bufferOffset = LineCircleRelative.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineInformationRelative
    let len;
    let data = new LineInformationRelative(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [segments]
    // Deserialize array length for message field [segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.segments[i] = LineSegmentRelative.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [markings]
    // Deserialize array length for message field [markings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.markings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.markings[i] = LineIntersectionRelative.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [circles]
    // Deserialize array length for message field [circles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.circles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.circles[i] = LineCircleRelative.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 52 * object.segments.length;
    length += 57 * object.markings.length;
    length += 72 * object.circles.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/LineInformationRelative';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3f3ab43e63632f7fafd631643d23553';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Contains all relative information about line features on the field
    
    # The header is included to get the time stamp for later use in tf
    std_msgs/Header header
    
    LineSegmentRelative[] segments
    LineIntersectionRelative[] markings
    LineCircleRelative[] circles
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
    MSG: humanoid_league_msgs/LineSegmentRelative
    # A line segment relative to the robot
    
    # Start and end position of the line
    # x in front of the robot
    # y to the left
    # z should be 0
    geometry_msgs/Point start
    geometry_msgs/Point end
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: humanoid_league_msgs/LineIntersectionRelative
    # Information about a special line feature on the field
    
    # The type defines which kind of intersection is present
    uint8 UNDEFINED=0
    uint8 L=1
    uint8 T=2
    uint8 X=3
    uint8 type
    
    # The line segments related to this crossing
    humanoid_league_msgs/LineSegmentRelative segments
    
    # A certainty rating between 0 and 1, where 1 is the surest.
    float32 confidence
    
    ================================================================================
    MSG: humanoid_league_msgs/LineCircleRelative
    # Defines a line circle in relative space, i.e. the center circle
    
    # The circle is defined by an arc with left and right end points and a point in the middle for getting the radius
    geometry_msgs/Point left
    geometry_msgs/Point middle
    geometry_msgs/Point right
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LineInformationRelative(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.segments !== undefined) {
      resolved.segments = new Array(msg.segments.length);
      for (let i = 0; i < resolved.segments.length; ++i) {
        resolved.segments[i] = LineSegmentRelative.Resolve(msg.segments[i]);
      }
    }
    else {
      resolved.segments = []
    }

    if (msg.markings !== undefined) {
      resolved.markings = new Array(msg.markings.length);
      for (let i = 0; i < resolved.markings.length; ++i) {
        resolved.markings[i] = LineIntersectionRelative.Resolve(msg.markings[i]);
      }
    }
    else {
      resolved.markings = []
    }

    if (msg.circles !== undefined) {
      resolved.circles = new Array(msg.circles.length);
      for (let i = 0; i < resolved.circles.length; ++i) {
        resolved.circles[i] = LineCircleRelative.Resolve(msg.circles[i]);
      }
    }
    else {
      resolved.circles = []
    }

    return resolved;
    }
};

module.exports = LineInformationRelative;
