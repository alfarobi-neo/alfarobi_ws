// Auto-generated. Do not edit!

// (in-package kicking_module_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class KickingParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Torso_X = null;
      this.Torso_Y = null;
      this.Torso_Z = null;
      this.L_Shift_X = null;
      this.L_Shift_Y = null;
      this.L_Shift_Z = null;
      this.R_Shift_X = null;
      this.R_Shift_Y = null;
      this.R_Shift_Z = null;
      this.L_Lift_X = null;
      this.L_Lift_Y = null;
      this.L_Lift_Z = null;
      this.R_Lift_X = null;
      this.R_Lift_Y = null;
      this.R_Lift_Z = null;
      this.L_Swing_X = null;
      this.L_Swing_Y = null;
      this.L_Swing_Z = null;
      this.R_Swing_X = null;
      this.R_Swing_Y = null;
      this.R_Swing_Z = null;
      this.L_Retract_X = null;
      this.L_Retract_Y = null;
      this.L_Retract_Z = null;
      this.R_Retract_X = null;
      this.R_Retract_Y = null;
      this.R_Retract_Z = null;
      this.Torso_Pitch = null;
      this.Shift_Roll = null;
      this.Lift_Roll = null;
      this.Lift_Pitch = null;
      this.Swing_Roll = null;
      this.Swing_Pitch = null;
      this.Retract_Roll = null;
      this.Retract_Pitch = null;
      this.SHIFT_TIME = null;
      this.LIFT_TIME = null;
      this.SWING_TIME = null;
      this.RETRACT_TIME = null;
      this.LANDING_TIME = null;
      this.FINISHED_TIME = null;
    }
    else {
      if (initObj.hasOwnProperty('Torso_X')) {
        this.Torso_X = initObj.Torso_X
      }
      else {
        this.Torso_X = 0.0;
      }
      if (initObj.hasOwnProperty('Torso_Y')) {
        this.Torso_Y = initObj.Torso_Y
      }
      else {
        this.Torso_Y = 0.0;
      }
      if (initObj.hasOwnProperty('Torso_Z')) {
        this.Torso_Z = initObj.Torso_Z
      }
      else {
        this.Torso_Z = 0.0;
      }
      if (initObj.hasOwnProperty('L_Shift_X')) {
        this.L_Shift_X = initObj.L_Shift_X
      }
      else {
        this.L_Shift_X = 0.0;
      }
      if (initObj.hasOwnProperty('L_Shift_Y')) {
        this.L_Shift_Y = initObj.L_Shift_Y
      }
      else {
        this.L_Shift_Y = 0.0;
      }
      if (initObj.hasOwnProperty('L_Shift_Z')) {
        this.L_Shift_Z = initObj.L_Shift_Z
      }
      else {
        this.L_Shift_Z = 0.0;
      }
      if (initObj.hasOwnProperty('R_Shift_X')) {
        this.R_Shift_X = initObj.R_Shift_X
      }
      else {
        this.R_Shift_X = 0.0;
      }
      if (initObj.hasOwnProperty('R_Shift_Y')) {
        this.R_Shift_Y = initObj.R_Shift_Y
      }
      else {
        this.R_Shift_Y = 0.0;
      }
      if (initObj.hasOwnProperty('R_Shift_Z')) {
        this.R_Shift_Z = initObj.R_Shift_Z
      }
      else {
        this.R_Shift_Z = 0.0;
      }
      if (initObj.hasOwnProperty('L_Lift_X')) {
        this.L_Lift_X = initObj.L_Lift_X
      }
      else {
        this.L_Lift_X = 0.0;
      }
      if (initObj.hasOwnProperty('L_Lift_Y')) {
        this.L_Lift_Y = initObj.L_Lift_Y
      }
      else {
        this.L_Lift_Y = 0.0;
      }
      if (initObj.hasOwnProperty('L_Lift_Z')) {
        this.L_Lift_Z = initObj.L_Lift_Z
      }
      else {
        this.L_Lift_Z = 0.0;
      }
      if (initObj.hasOwnProperty('R_Lift_X')) {
        this.R_Lift_X = initObj.R_Lift_X
      }
      else {
        this.R_Lift_X = 0.0;
      }
      if (initObj.hasOwnProperty('R_Lift_Y')) {
        this.R_Lift_Y = initObj.R_Lift_Y
      }
      else {
        this.R_Lift_Y = 0.0;
      }
      if (initObj.hasOwnProperty('R_Lift_Z')) {
        this.R_Lift_Z = initObj.R_Lift_Z
      }
      else {
        this.R_Lift_Z = 0.0;
      }
      if (initObj.hasOwnProperty('L_Swing_X')) {
        this.L_Swing_X = initObj.L_Swing_X
      }
      else {
        this.L_Swing_X = 0.0;
      }
      if (initObj.hasOwnProperty('L_Swing_Y')) {
        this.L_Swing_Y = initObj.L_Swing_Y
      }
      else {
        this.L_Swing_Y = 0.0;
      }
      if (initObj.hasOwnProperty('L_Swing_Z')) {
        this.L_Swing_Z = initObj.L_Swing_Z
      }
      else {
        this.L_Swing_Z = 0.0;
      }
      if (initObj.hasOwnProperty('R_Swing_X')) {
        this.R_Swing_X = initObj.R_Swing_X
      }
      else {
        this.R_Swing_X = 0.0;
      }
      if (initObj.hasOwnProperty('R_Swing_Y')) {
        this.R_Swing_Y = initObj.R_Swing_Y
      }
      else {
        this.R_Swing_Y = 0.0;
      }
      if (initObj.hasOwnProperty('R_Swing_Z')) {
        this.R_Swing_Z = initObj.R_Swing_Z
      }
      else {
        this.R_Swing_Z = 0.0;
      }
      if (initObj.hasOwnProperty('L_Retract_X')) {
        this.L_Retract_X = initObj.L_Retract_X
      }
      else {
        this.L_Retract_X = 0.0;
      }
      if (initObj.hasOwnProperty('L_Retract_Y')) {
        this.L_Retract_Y = initObj.L_Retract_Y
      }
      else {
        this.L_Retract_Y = 0.0;
      }
      if (initObj.hasOwnProperty('L_Retract_Z')) {
        this.L_Retract_Z = initObj.L_Retract_Z
      }
      else {
        this.L_Retract_Z = 0.0;
      }
      if (initObj.hasOwnProperty('R_Retract_X')) {
        this.R_Retract_X = initObj.R_Retract_X
      }
      else {
        this.R_Retract_X = 0.0;
      }
      if (initObj.hasOwnProperty('R_Retract_Y')) {
        this.R_Retract_Y = initObj.R_Retract_Y
      }
      else {
        this.R_Retract_Y = 0.0;
      }
      if (initObj.hasOwnProperty('R_Retract_Z')) {
        this.R_Retract_Z = initObj.R_Retract_Z
      }
      else {
        this.R_Retract_Z = 0.0;
      }
      if (initObj.hasOwnProperty('Torso_Pitch')) {
        this.Torso_Pitch = initObj.Torso_Pitch
      }
      else {
        this.Torso_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Shift_Roll')) {
        this.Shift_Roll = initObj.Shift_Roll
      }
      else {
        this.Shift_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Lift_Roll')) {
        this.Lift_Roll = initObj.Lift_Roll
      }
      else {
        this.Lift_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Lift_Pitch')) {
        this.Lift_Pitch = initObj.Lift_Pitch
      }
      else {
        this.Lift_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Swing_Roll')) {
        this.Swing_Roll = initObj.Swing_Roll
      }
      else {
        this.Swing_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Swing_Pitch')) {
        this.Swing_Pitch = initObj.Swing_Pitch
      }
      else {
        this.Swing_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Retract_Roll')) {
        this.Retract_Roll = initObj.Retract_Roll
      }
      else {
        this.Retract_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Retract_Pitch')) {
        this.Retract_Pitch = initObj.Retract_Pitch
      }
      else {
        this.Retract_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('SHIFT_TIME')) {
        this.SHIFT_TIME = initObj.SHIFT_TIME
      }
      else {
        this.SHIFT_TIME = 0.0;
      }
      if (initObj.hasOwnProperty('LIFT_TIME')) {
        this.LIFT_TIME = initObj.LIFT_TIME
      }
      else {
        this.LIFT_TIME = 0.0;
      }
      if (initObj.hasOwnProperty('SWING_TIME')) {
        this.SWING_TIME = initObj.SWING_TIME
      }
      else {
        this.SWING_TIME = 0.0;
      }
      if (initObj.hasOwnProperty('RETRACT_TIME')) {
        this.RETRACT_TIME = initObj.RETRACT_TIME
      }
      else {
        this.RETRACT_TIME = 0.0;
      }
      if (initObj.hasOwnProperty('LANDING_TIME')) {
        this.LANDING_TIME = initObj.LANDING_TIME
      }
      else {
        this.LANDING_TIME = 0.0;
      }
      if (initObj.hasOwnProperty('FINISHED_TIME')) {
        this.FINISHED_TIME = initObj.FINISHED_TIME
      }
      else {
        this.FINISHED_TIME = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KickingParam
    // Serialize message field [Torso_X]
    bufferOffset = _serializer.float32(obj.Torso_X, buffer, bufferOffset);
    // Serialize message field [Torso_Y]
    bufferOffset = _serializer.float32(obj.Torso_Y, buffer, bufferOffset);
    // Serialize message field [Torso_Z]
    bufferOffset = _serializer.float32(obj.Torso_Z, buffer, bufferOffset);
    // Serialize message field [L_Shift_X]
    bufferOffset = _serializer.float32(obj.L_Shift_X, buffer, bufferOffset);
    // Serialize message field [L_Shift_Y]
    bufferOffset = _serializer.float32(obj.L_Shift_Y, buffer, bufferOffset);
    // Serialize message field [L_Shift_Z]
    bufferOffset = _serializer.float32(obj.L_Shift_Z, buffer, bufferOffset);
    // Serialize message field [R_Shift_X]
    bufferOffset = _serializer.float32(obj.R_Shift_X, buffer, bufferOffset);
    // Serialize message field [R_Shift_Y]
    bufferOffset = _serializer.float32(obj.R_Shift_Y, buffer, bufferOffset);
    // Serialize message field [R_Shift_Z]
    bufferOffset = _serializer.float32(obj.R_Shift_Z, buffer, bufferOffset);
    // Serialize message field [L_Lift_X]
    bufferOffset = _serializer.float32(obj.L_Lift_X, buffer, bufferOffset);
    // Serialize message field [L_Lift_Y]
    bufferOffset = _serializer.float32(obj.L_Lift_Y, buffer, bufferOffset);
    // Serialize message field [L_Lift_Z]
    bufferOffset = _serializer.float32(obj.L_Lift_Z, buffer, bufferOffset);
    // Serialize message field [R_Lift_X]
    bufferOffset = _serializer.float32(obj.R_Lift_X, buffer, bufferOffset);
    // Serialize message field [R_Lift_Y]
    bufferOffset = _serializer.float32(obj.R_Lift_Y, buffer, bufferOffset);
    // Serialize message field [R_Lift_Z]
    bufferOffset = _serializer.float32(obj.R_Lift_Z, buffer, bufferOffset);
    // Serialize message field [L_Swing_X]
    bufferOffset = _serializer.float32(obj.L_Swing_X, buffer, bufferOffset);
    // Serialize message field [L_Swing_Y]
    bufferOffset = _serializer.float32(obj.L_Swing_Y, buffer, bufferOffset);
    // Serialize message field [L_Swing_Z]
    bufferOffset = _serializer.float32(obj.L_Swing_Z, buffer, bufferOffset);
    // Serialize message field [R_Swing_X]
    bufferOffset = _serializer.float32(obj.R_Swing_X, buffer, bufferOffset);
    // Serialize message field [R_Swing_Y]
    bufferOffset = _serializer.float32(obj.R_Swing_Y, buffer, bufferOffset);
    // Serialize message field [R_Swing_Z]
    bufferOffset = _serializer.float32(obj.R_Swing_Z, buffer, bufferOffset);
    // Serialize message field [L_Retract_X]
    bufferOffset = _serializer.float32(obj.L_Retract_X, buffer, bufferOffset);
    // Serialize message field [L_Retract_Y]
    bufferOffset = _serializer.float32(obj.L_Retract_Y, buffer, bufferOffset);
    // Serialize message field [L_Retract_Z]
    bufferOffset = _serializer.float32(obj.L_Retract_Z, buffer, bufferOffset);
    // Serialize message field [R_Retract_X]
    bufferOffset = _serializer.float32(obj.R_Retract_X, buffer, bufferOffset);
    // Serialize message field [R_Retract_Y]
    bufferOffset = _serializer.float32(obj.R_Retract_Y, buffer, bufferOffset);
    // Serialize message field [R_Retract_Z]
    bufferOffset = _serializer.float32(obj.R_Retract_Z, buffer, bufferOffset);
    // Serialize message field [Torso_Pitch]
    bufferOffset = _serializer.float32(obj.Torso_Pitch, buffer, bufferOffset);
    // Serialize message field [Shift_Roll]
    bufferOffset = _serializer.float32(obj.Shift_Roll, buffer, bufferOffset);
    // Serialize message field [Lift_Roll]
    bufferOffset = _serializer.float32(obj.Lift_Roll, buffer, bufferOffset);
    // Serialize message field [Lift_Pitch]
    bufferOffset = _serializer.float32(obj.Lift_Pitch, buffer, bufferOffset);
    // Serialize message field [Swing_Roll]
    bufferOffset = _serializer.float32(obj.Swing_Roll, buffer, bufferOffset);
    // Serialize message field [Swing_Pitch]
    bufferOffset = _serializer.float32(obj.Swing_Pitch, buffer, bufferOffset);
    // Serialize message field [Retract_Roll]
    bufferOffset = _serializer.float32(obj.Retract_Roll, buffer, bufferOffset);
    // Serialize message field [Retract_Pitch]
    bufferOffset = _serializer.float32(obj.Retract_Pitch, buffer, bufferOffset);
    // Serialize message field [SHIFT_TIME]
    bufferOffset = _serializer.float32(obj.SHIFT_TIME, buffer, bufferOffset);
    // Serialize message field [LIFT_TIME]
    bufferOffset = _serializer.float32(obj.LIFT_TIME, buffer, bufferOffset);
    // Serialize message field [SWING_TIME]
    bufferOffset = _serializer.float32(obj.SWING_TIME, buffer, bufferOffset);
    // Serialize message field [RETRACT_TIME]
    bufferOffset = _serializer.float32(obj.RETRACT_TIME, buffer, bufferOffset);
    // Serialize message field [LANDING_TIME]
    bufferOffset = _serializer.float32(obj.LANDING_TIME, buffer, bufferOffset);
    // Serialize message field [FINISHED_TIME]
    bufferOffset = _serializer.float32(obj.FINISHED_TIME, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KickingParam
    let len;
    let data = new KickingParam(null);
    // Deserialize message field [Torso_X]
    data.Torso_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Torso_Y]
    data.Torso_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Torso_Z]
    data.Torso_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Shift_X]
    data.L_Shift_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Shift_Y]
    data.L_Shift_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Shift_Z]
    data.L_Shift_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Shift_X]
    data.R_Shift_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Shift_Y]
    data.R_Shift_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Shift_Z]
    data.R_Shift_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Lift_X]
    data.L_Lift_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Lift_Y]
    data.L_Lift_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Lift_Z]
    data.L_Lift_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Lift_X]
    data.R_Lift_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Lift_Y]
    data.R_Lift_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Lift_Z]
    data.R_Lift_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Swing_X]
    data.L_Swing_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Swing_Y]
    data.L_Swing_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Swing_Z]
    data.L_Swing_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Swing_X]
    data.R_Swing_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Swing_Y]
    data.R_Swing_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Swing_Z]
    data.R_Swing_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Retract_X]
    data.L_Retract_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Retract_Y]
    data.L_Retract_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Retract_Z]
    data.L_Retract_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Retract_X]
    data.R_Retract_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Retract_Y]
    data.R_Retract_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Retract_Z]
    data.R_Retract_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Torso_Pitch]
    data.Torso_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Shift_Roll]
    data.Shift_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Lift_Roll]
    data.Lift_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Lift_Pitch]
    data.Lift_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Swing_Roll]
    data.Swing_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Swing_Pitch]
    data.Swing_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Retract_Roll]
    data.Retract_Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Retract_Pitch]
    data.Retract_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [SHIFT_TIME]
    data.SHIFT_TIME = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LIFT_TIME]
    data.LIFT_TIME = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [SWING_TIME]
    data.SWING_TIME = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RETRACT_TIME]
    data.RETRACT_TIME = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LANDING_TIME]
    data.LANDING_TIME = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [FINISHED_TIME]
    data.FINISHED_TIME = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 164;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kicking_module_msgs/KickingParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1544ae05e02ea9fbdc689d7fea677df9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Torso_X
    float32 Torso_Y
    float32 Torso_Z
    float32 L_Shift_X
    float32 L_Shift_Y
    float32 L_Shift_Z
    float32 R_Shift_X
    float32 R_Shift_Y
    float32 R_Shift_Z
    float32 L_Lift_X
    float32 L_Lift_Y
    float32 L_Lift_Z
    float32 R_Lift_X
    float32 R_Lift_Y
    float32 R_Lift_Z
    float32 L_Swing_X
    float32 L_Swing_Y
    float32 L_Swing_Z
    float32 R_Swing_X
    float32 R_Swing_Y
    float32 R_Swing_Z
    float32 L_Retract_X
    float32 L_Retract_Y
    float32 L_Retract_Z
    float32 R_Retract_X
    float32 R_Retract_Y
    float32 R_Retract_Z
    float32 Torso_Pitch
    float32 Shift_Roll
    float32 Lift_Roll
    float32 Lift_Pitch
    float32 Swing_Roll
    float32 Swing_Pitch
    float32 Retract_Roll
    float32 Retract_Pitch
    float32 SHIFT_TIME
    float32 LIFT_TIME
    float32 SWING_TIME
    float32 RETRACT_TIME
    float32 LANDING_TIME
    float32 FINISHED_TIME
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KickingParam(null);
    if (msg.Torso_X !== undefined) {
      resolved.Torso_X = msg.Torso_X;
    }
    else {
      resolved.Torso_X = 0.0
    }

    if (msg.Torso_Y !== undefined) {
      resolved.Torso_Y = msg.Torso_Y;
    }
    else {
      resolved.Torso_Y = 0.0
    }

    if (msg.Torso_Z !== undefined) {
      resolved.Torso_Z = msg.Torso_Z;
    }
    else {
      resolved.Torso_Z = 0.0
    }

    if (msg.L_Shift_X !== undefined) {
      resolved.L_Shift_X = msg.L_Shift_X;
    }
    else {
      resolved.L_Shift_X = 0.0
    }

    if (msg.L_Shift_Y !== undefined) {
      resolved.L_Shift_Y = msg.L_Shift_Y;
    }
    else {
      resolved.L_Shift_Y = 0.0
    }

    if (msg.L_Shift_Z !== undefined) {
      resolved.L_Shift_Z = msg.L_Shift_Z;
    }
    else {
      resolved.L_Shift_Z = 0.0
    }

    if (msg.R_Shift_X !== undefined) {
      resolved.R_Shift_X = msg.R_Shift_X;
    }
    else {
      resolved.R_Shift_X = 0.0
    }

    if (msg.R_Shift_Y !== undefined) {
      resolved.R_Shift_Y = msg.R_Shift_Y;
    }
    else {
      resolved.R_Shift_Y = 0.0
    }

    if (msg.R_Shift_Z !== undefined) {
      resolved.R_Shift_Z = msg.R_Shift_Z;
    }
    else {
      resolved.R_Shift_Z = 0.0
    }

    if (msg.L_Lift_X !== undefined) {
      resolved.L_Lift_X = msg.L_Lift_X;
    }
    else {
      resolved.L_Lift_X = 0.0
    }

    if (msg.L_Lift_Y !== undefined) {
      resolved.L_Lift_Y = msg.L_Lift_Y;
    }
    else {
      resolved.L_Lift_Y = 0.0
    }

    if (msg.L_Lift_Z !== undefined) {
      resolved.L_Lift_Z = msg.L_Lift_Z;
    }
    else {
      resolved.L_Lift_Z = 0.0
    }

    if (msg.R_Lift_X !== undefined) {
      resolved.R_Lift_X = msg.R_Lift_X;
    }
    else {
      resolved.R_Lift_X = 0.0
    }

    if (msg.R_Lift_Y !== undefined) {
      resolved.R_Lift_Y = msg.R_Lift_Y;
    }
    else {
      resolved.R_Lift_Y = 0.0
    }

    if (msg.R_Lift_Z !== undefined) {
      resolved.R_Lift_Z = msg.R_Lift_Z;
    }
    else {
      resolved.R_Lift_Z = 0.0
    }

    if (msg.L_Swing_X !== undefined) {
      resolved.L_Swing_X = msg.L_Swing_X;
    }
    else {
      resolved.L_Swing_X = 0.0
    }

    if (msg.L_Swing_Y !== undefined) {
      resolved.L_Swing_Y = msg.L_Swing_Y;
    }
    else {
      resolved.L_Swing_Y = 0.0
    }

    if (msg.L_Swing_Z !== undefined) {
      resolved.L_Swing_Z = msg.L_Swing_Z;
    }
    else {
      resolved.L_Swing_Z = 0.0
    }

    if (msg.R_Swing_X !== undefined) {
      resolved.R_Swing_X = msg.R_Swing_X;
    }
    else {
      resolved.R_Swing_X = 0.0
    }

    if (msg.R_Swing_Y !== undefined) {
      resolved.R_Swing_Y = msg.R_Swing_Y;
    }
    else {
      resolved.R_Swing_Y = 0.0
    }

    if (msg.R_Swing_Z !== undefined) {
      resolved.R_Swing_Z = msg.R_Swing_Z;
    }
    else {
      resolved.R_Swing_Z = 0.0
    }

    if (msg.L_Retract_X !== undefined) {
      resolved.L_Retract_X = msg.L_Retract_X;
    }
    else {
      resolved.L_Retract_X = 0.0
    }

    if (msg.L_Retract_Y !== undefined) {
      resolved.L_Retract_Y = msg.L_Retract_Y;
    }
    else {
      resolved.L_Retract_Y = 0.0
    }

    if (msg.L_Retract_Z !== undefined) {
      resolved.L_Retract_Z = msg.L_Retract_Z;
    }
    else {
      resolved.L_Retract_Z = 0.0
    }

    if (msg.R_Retract_X !== undefined) {
      resolved.R_Retract_X = msg.R_Retract_X;
    }
    else {
      resolved.R_Retract_X = 0.0
    }

    if (msg.R_Retract_Y !== undefined) {
      resolved.R_Retract_Y = msg.R_Retract_Y;
    }
    else {
      resolved.R_Retract_Y = 0.0
    }

    if (msg.R_Retract_Z !== undefined) {
      resolved.R_Retract_Z = msg.R_Retract_Z;
    }
    else {
      resolved.R_Retract_Z = 0.0
    }

    if (msg.Torso_Pitch !== undefined) {
      resolved.Torso_Pitch = msg.Torso_Pitch;
    }
    else {
      resolved.Torso_Pitch = 0.0
    }

    if (msg.Shift_Roll !== undefined) {
      resolved.Shift_Roll = msg.Shift_Roll;
    }
    else {
      resolved.Shift_Roll = 0.0
    }

    if (msg.Lift_Roll !== undefined) {
      resolved.Lift_Roll = msg.Lift_Roll;
    }
    else {
      resolved.Lift_Roll = 0.0
    }

    if (msg.Lift_Pitch !== undefined) {
      resolved.Lift_Pitch = msg.Lift_Pitch;
    }
    else {
      resolved.Lift_Pitch = 0.0
    }

    if (msg.Swing_Roll !== undefined) {
      resolved.Swing_Roll = msg.Swing_Roll;
    }
    else {
      resolved.Swing_Roll = 0.0
    }

    if (msg.Swing_Pitch !== undefined) {
      resolved.Swing_Pitch = msg.Swing_Pitch;
    }
    else {
      resolved.Swing_Pitch = 0.0
    }

    if (msg.Retract_Roll !== undefined) {
      resolved.Retract_Roll = msg.Retract_Roll;
    }
    else {
      resolved.Retract_Roll = 0.0
    }

    if (msg.Retract_Pitch !== undefined) {
      resolved.Retract_Pitch = msg.Retract_Pitch;
    }
    else {
      resolved.Retract_Pitch = 0.0
    }

    if (msg.SHIFT_TIME !== undefined) {
      resolved.SHIFT_TIME = msg.SHIFT_TIME;
    }
    else {
      resolved.SHIFT_TIME = 0.0
    }

    if (msg.LIFT_TIME !== undefined) {
      resolved.LIFT_TIME = msg.LIFT_TIME;
    }
    else {
      resolved.LIFT_TIME = 0.0
    }

    if (msg.SWING_TIME !== undefined) {
      resolved.SWING_TIME = msg.SWING_TIME;
    }
    else {
      resolved.SWING_TIME = 0.0
    }

    if (msg.RETRACT_TIME !== undefined) {
      resolved.RETRACT_TIME = msg.RETRACT_TIME;
    }
    else {
      resolved.RETRACT_TIME = 0.0
    }

    if (msg.LANDING_TIME !== undefined) {
      resolved.LANDING_TIME = msg.LANDING_TIME;
    }
    else {
      resolved.LANDING_TIME = 0.0
    }

    if (msg.FINISHED_TIME !== undefined) {
      resolved.FINISHED_TIME = msg.FINISHED_TIME;
    }
    else {
      resolved.FINISHED_TIME = 0.0
    }

    return resolved;
    }
};

module.exports = KickingParam;
