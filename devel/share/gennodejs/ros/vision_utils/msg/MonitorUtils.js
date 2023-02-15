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

//-----------------------------------------------------------

class MonitorUtils {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.line_models = null;
      this.particles = null;
    }
    else {
      if (initObj.hasOwnProperty('line_models')) {
        this.line_models = initObj.line_models
      }
      else {
        this.line_models = [];
      }
      if (initObj.hasOwnProperty('particles')) {
        this.particles = initObj.particles
      }
      else {
        this.particles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorUtils
    // Serialize message field [line_models]
    // Serialize the length for message field [line_models]
    bufferOffset = _serializer.uint32(obj.line_models.length, buffer, bufferOffset);
    obj.line_models.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [particles]
    // Serialize the length for message field [particles]
    bufferOffset = _serializer.uint32(obj.particles.length, buffer, bufferOffset);
    obj.particles.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Quaternion.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorUtils
    let len;
    let data = new MonitorUtils(null);
    // Deserialize message field [line_models]
    // Deserialize array length for message field [line_models]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_models = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_models[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [particles]
    // Deserialize array length for message field [particles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.particles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.particles[i] = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.line_models.length;
    length += 32 * object.particles.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_utils/MonitorUtils';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '849debddb0d7bc3d689fc3c60819829e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3[] line_models
    geometry_msgs/Quaternion[] particles
    
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonitorUtils(null);
    if (msg.line_models !== undefined) {
      resolved.line_models = new Array(msg.line_models.length);
      for (let i = 0; i < resolved.line_models.length; ++i) {
        resolved.line_models[i] = geometry_msgs.msg.Vector3.Resolve(msg.line_models[i]);
      }
    }
    else {
      resolved.line_models = []
    }

    if (msg.particles !== undefined) {
      resolved.particles = new Array(msg.particles.length);
      for (let i = 0; i < resolved.particles.length; ++i) {
        resolved.particles[i] = geometry_msgs.msg.Quaternion.Resolve(msg.particles[i]);
      }
    }
    else {
      resolved.particles = []
    }

    return resolved;
    }
};

module.exports = MonitorUtils;
