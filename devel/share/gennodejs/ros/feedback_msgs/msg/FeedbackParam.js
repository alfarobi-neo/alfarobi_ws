// Auto-generated. Do not edit!

// (in-package feedback_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FeedbackParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Body_Height = null;
      this.Body_Tilt = null;
      this.Leg_X = null;
      this.Leg_Y = null;
      this.Leg_Z = null;
      this.Leg_R_Z = null;
      this.Leg_L_Z = null;
      this.R_Roll = null;
      this.L_Roll = null;
      this.Setpoint_Pitch = null;
      this.Setpoint_Roll = null;
      this.Gain_Angle_Pitch = null;
      this.Gain_Angle_Roll = null;
      this.Gain_Velocity_Pitch = null;
      this.Gain_Velocity_Roll = null;
      this.Gain_Integral_Pitch = null;
      this.Gain_Integral_Roll = null;
    }
    else {
      if (initObj.hasOwnProperty('Body_Height')) {
        this.Body_Height = initObj.Body_Height
      }
      else {
        this.Body_Height = 0.0;
      }
      if (initObj.hasOwnProperty('Body_Tilt')) {
        this.Body_Tilt = initObj.Body_Tilt
      }
      else {
        this.Body_Tilt = 0.0;
      }
      if (initObj.hasOwnProperty('Leg_X')) {
        this.Leg_X = initObj.Leg_X
      }
      else {
        this.Leg_X = 0.0;
      }
      if (initObj.hasOwnProperty('Leg_Y')) {
        this.Leg_Y = initObj.Leg_Y
      }
      else {
        this.Leg_Y = 0.0;
      }
      if (initObj.hasOwnProperty('Leg_Z')) {
        this.Leg_Z = initObj.Leg_Z
      }
      else {
        this.Leg_Z = 0.0;
      }
      if (initObj.hasOwnProperty('Leg_R_Z')) {
        this.Leg_R_Z = initObj.Leg_R_Z
      }
      else {
        this.Leg_R_Z = 0.0;
      }
      if (initObj.hasOwnProperty('Leg_L_Z')) {
        this.Leg_L_Z = initObj.Leg_L_Z
      }
      else {
        this.Leg_L_Z = 0.0;
      }
      if (initObj.hasOwnProperty('R_Roll')) {
        this.R_Roll = initObj.R_Roll
      }
      else {
        this.R_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('L_Roll')) {
        this.L_Roll = initObj.L_Roll
      }
      else {
        this.L_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Setpoint_Pitch')) {
        this.Setpoint_Pitch = initObj.Setpoint_Pitch
      }
      else {
        this.Setpoint_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Setpoint_Roll')) {
        this.Setpoint_Roll = initObj.Setpoint_Roll
      }
      else {
        this.Setpoint_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Gain_Angle_Pitch')) {
        this.Gain_Angle_Pitch = initObj.Gain_Angle_Pitch
      }
      else {
        this.Gain_Angle_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Gain_Angle_Roll')) {
        this.Gain_Angle_Roll = initObj.Gain_Angle_Roll
      }
      else {
        this.Gain_Angle_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Gain_Velocity_Pitch')) {
        this.Gain_Velocity_Pitch = initObj.Gain_Velocity_Pitch
      }
      else {
        this.Gain_Velocity_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Gain_Velocity_Roll')) {
        this.Gain_Velocity_Roll = initObj.Gain_Velocity_Roll
      }
      else {
        this.Gain_Velocity_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Gain_Integral_Pitch')) {
        this.Gain_Integral_Pitch = initObj.Gain_Integral_Pitch
      }
      else {
        this.Gain_Integral_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Gain_Integral_Roll')) {
        this.Gain_Integral_Roll = initObj.Gain_Integral_Roll
      }
      else {
        this.Gain_Integral_Roll = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeedbackParam
    // Serialize message field [Body_Height]
    bufferOffset = _serializer.float32(obj.Body_Height, buffer, bufferOffset);
    // Serialize message field [Body_Tilt]
    bufferOffset = _serializer.float32(obj.Body_Tilt, buffer, bufferOffset);
    // Serialize message field [Leg_X]
    bufferOffset = _serializer.float32(obj.Leg_X, buffer, bufferOffset);
    // Serialize message field [Leg_Y]
    bufferOffset = _serializer.float32(obj.Leg_Y, buffer, bufferOffset);
    // Serialize message field [Leg_Z]
    bufferOffset = _serializer.float32(obj.Leg_Z, buffer, bufferOffset);
    // Serialize message field [Leg_R_Z]
    bufferOffset = _serializer.float32(obj.Leg_R_Z, buffer, bufferOffset);
    // Serialize message field [Leg_L_Z]
    bufferOffset = _serializer.float32(obj.Leg_L_Z, buffer, bufferOffset);
    // Serialize message field [R_Roll]
    bufferOffset = _serializer.float32(obj.R_Roll, buffer, bufferOffset);
    // Serialize message field [L_Roll]
    bufferOffset = _serializer.float32(obj.L_Roll, buffer, bufferOffset);
    // Serialize message field [Setpoint_Pitch]
    bufferOffset = _serializer.float32(obj.Setpoint_Pitch, buffer, bufferOffset);
    // Serialize message field [Setpoint_Roll]
    bufferOffset = _serializer.float32(obj.Setpoint_Roll, buffer, bufferOffset);
    // Serialize message field [Gain_Angle_Pitch]
    bufferOffset = _serializer.float32(obj.Gain_Angle_Pitch, buffer, bufferOffset);
    // Serialize message field [Gain_Angle_Roll]
    bufferOffset = _serializer.float32(obj.Gain_Angle_Roll, buffer, bufferOffset);
    // Serialize message field [Gain_Velocity_Pitch]
    bufferOffset = _serializer.float32(obj.Gain_Velocity_Pitch, buffer, bufferOffset);
    // Serialize message field [Gain_Velocity_Roll]
    bufferOffset = _serializer.float32(obj.Gain_Velocity_Roll, buffer, bufferOffset);
    // Serialize message field [Gain_Integral_Pitch]
    bufferOffset = _serializer.float32(obj.Gain_Integral_Pitch, buffer, bufferOffset);
    // Serialize message field [Gain_Integral_Roll]
    bufferOffset = _serializer.float32(obj.Gain_Integral_Roll, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeedbackParam
    let len;
    let data = new FeedbackParam(null);
    // Deserialize message field [Body_Height]
    data.Body_Height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Body_Tilt]
    data.Body_Tilt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Leg_X]
    data.Leg_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Leg_Y]
    data.Leg_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Leg_Z]
    data.Leg_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Leg_R_Z]
    data.Leg_R_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Leg_L_Z]
    data.Leg_L_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Roll]
    data.R_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Roll]
    data.L_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Setpoint_Pitch]
    data.Setpoint_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Setpoint_Roll]
    data.Setpoint_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gain_Angle_Pitch]
    data.Gain_Angle_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gain_Angle_Roll]
    data.Gain_Angle_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gain_Velocity_Pitch]
    data.Gain_Velocity_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gain_Velocity_Roll]
    data.Gain_Velocity_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gain_Integral_Pitch]
    data.Gain_Integral_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gain_Integral_Roll]
    data.Gain_Integral_Roll = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'feedback_msgs/FeedbackParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6dc619d19217c2ba9bca0b28f4e3fda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Body_Height
    float32 Body_Tilt
    float32 Leg_X
    float32 Leg_Y
    float32 Leg_Z
    
    float32 Leg_R_Z
    float32 Leg_L_Z
    float32 R_Roll
    float32 L_Roll
    
    float32 Setpoint_Pitch
    float32 Setpoint_Roll
    
    float32 Gain_Angle_Pitch
    float32 Gain_Angle_Roll
    
    float32 Gain_Velocity_Pitch
    float32 Gain_Velocity_Roll
    
    float32 Gain_Integral_Pitch
    float32 Gain_Integral_Roll
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeedbackParam(null);
    if (msg.Body_Height !== undefined) {
      resolved.Body_Height = msg.Body_Height;
    }
    else {
      resolved.Body_Height = 0.0
    }

    if (msg.Body_Tilt !== undefined) {
      resolved.Body_Tilt = msg.Body_Tilt;
    }
    else {
      resolved.Body_Tilt = 0.0
    }

    if (msg.Leg_X !== undefined) {
      resolved.Leg_X = msg.Leg_X;
    }
    else {
      resolved.Leg_X = 0.0
    }

    if (msg.Leg_Y !== undefined) {
      resolved.Leg_Y = msg.Leg_Y;
    }
    else {
      resolved.Leg_Y = 0.0
    }

    if (msg.Leg_Z !== undefined) {
      resolved.Leg_Z = msg.Leg_Z;
    }
    else {
      resolved.Leg_Z = 0.0
    }

    if (msg.Leg_R_Z !== undefined) {
      resolved.Leg_R_Z = msg.Leg_R_Z;
    }
    else {
      resolved.Leg_R_Z = 0.0
    }

    if (msg.Leg_L_Z !== undefined) {
      resolved.Leg_L_Z = msg.Leg_L_Z;
    }
    else {
      resolved.Leg_L_Z = 0.0
    }

    if (msg.R_Roll !== undefined) {
      resolved.R_Roll = msg.R_Roll;
    }
    else {
      resolved.R_Roll = 0.0
    }

    if (msg.L_Roll !== undefined) {
      resolved.L_Roll = msg.L_Roll;
    }
    else {
      resolved.L_Roll = 0.0
    }

    if (msg.Setpoint_Pitch !== undefined) {
      resolved.Setpoint_Pitch = msg.Setpoint_Pitch;
    }
    else {
      resolved.Setpoint_Pitch = 0.0
    }

    if (msg.Setpoint_Roll !== undefined) {
      resolved.Setpoint_Roll = msg.Setpoint_Roll;
    }
    else {
      resolved.Setpoint_Roll = 0.0
    }

    if (msg.Gain_Angle_Pitch !== undefined) {
      resolved.Gain_Angle_Pitch = msg.Gain_Angle_Pitch;
    }
    else {
      resolved.Gain_Angle_Pitch = 0.0
    }

    if (msg.Gain_Angle_Roll !== undefined) {
      resolved.Gain_Angle_Roll = msg.Gain_Angle_Roll;
    }
    else {
      resolved.Gain_Angle_Roll = 0.0
    }

    if (msg.Gain_Velocity_Pitch !== undefined) {
      resolved.Gain_Velocity_Pitch = msg.Gain_Velocity_Pitch;
    }
    else {
      resolved.Gain_Velocity_Pitch = 0.0
    }

    if (msg.Gain_Velocity_Roll !== undefined) {
      resolved.Gain_Velocity_Roll = msg.Gain_Velocity_Roll;
    }
    else {
      resolved.Gain_Velocity_Roll = 0.0
    }

    if (msg.Gain_Integral_Pitch !== undefined) {
      resolved.Gain_Integral_Pitch = msg.Gain_Integral_Pitch;
    }
    else {
      resolved.Gain_Integral_Pitch = 0.0
    }

    if (msg.Gain_Integral_Roll !== undefined) {
      resolved.Gain_Integral_Roll = msg.Gain_Integral_Roll;
    }
    else {
      resolved.Gain_Integral_Roll = 0.0
    }

    return resolved;
    }
};

module.exports = FeedbackParam;
