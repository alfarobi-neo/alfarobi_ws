// Auto-generated. Do not edit!

// (in-package mcl_localization.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class localization_param {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mcl_afast = null;
      this.mcl_aslow = null;
      this.mcl_variance = null;
      this.mgauss_x = null;
      this.mgauss_y = null;
      this.mgauss_w = null;
      this.vgauss_x = null;
      this.vgauss_y = null;
      this.mcl_wcmps = null;
    }
    else {
      if (initObj.hasOwnProperty('mcl_afast')) {
        this.mcl_afast = initObj.mcl_afast
      }
      else {
        this.mcl_afast = 0.0;
      }
      if (initObj.hasOwnProperty('mcl_aslow')) {
        this.mcl_aslow = initObj.mcl_aslow
      }
      else {
        this.mcl_aslow = 0.0;
      }
      if (initObj.hasOwnProperty('mcl_variance')) {
        this.mcl_variance = initObj.mcl_variance
      }
      else {
        this.mcl_variance = 0.0;
      }
      if (initObj.hasOwnProperty('mgauss_x')) {
        this.mgauss_x = initObj.mgauss_x
      }
      else {
        this.mgauss_x = 0.0;
      }
      if (initObj.hasOwnProperty('mgauss_y')) {
        this.mgauss_y = initObj.mgauss_y
      }
      else {
        this.mgauss_y = 0.0;
      }
      if (initObj.hasOwnProperty('mgauss_w')) {
        this.mgauss_w = initObj.mgauss_w
      }
      else {
        this.mgauss_w = 0.0;
      }
      if (initObj.hasOwnProperty('vgauss_x')) {
        this.vgauss_x = initObj.vgauss_x
      }
      else {
        this.vgauss_x = 0.0;
      }
      if (initObj.hasOwnProperty('vgauss_y')) {
        this.vgauss_y = initObj.vgauss_y
      }
      else {
        this.vgauss_y = 0.0;
      }
      if (initObj.hasOwnProperty('mcl_wcmps')) {
        this.mcl_wcmps = initObj.mcl_wcmps
      }
      else {
        this.mcl_wcmps = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type localization_param
    // Serialize message field [mcl_afast]
    bufferOffset = _serializer.float64(obj.mcl_afast, buffer, bufferOffset);
    // Serialize message field [mcl_aslow]
    bufferOffset = _serializer.float64(obj.mcl_aslow, buffer, bufferOffset);
    // Serialize message field [mcl_variance]
    bufferOffset = _serializer.float64(obj.mcl_variance, buffer, bufferOffset);
    // Serialize message field [mgauss_x]
    bufferOffset = _serializer.float64(obj.mgauss_x, buffer, bufferOffset);
    // Serialize message field [mgauss_y]
    bufferOffset = _serializer.float64(obj.mgauss_y, buffer, bufferOffset);
    // Serialize message field [mgauss_w]
    bufferOffset = _serializer.float64(obj.mgauss_w, buffer, bufferOffset);
    // Serialize message field [vgauss_x]
    bufferOffset = _serializer.float64(obj.vgauss_x, buffer, bufferOffset);
    // Serialize message field [vgauss_y]
    bufferOffset = _serializer.float64(obj.vgauss_y, buffer, bufferOffset);
    // Serialize message field [mcl_wcmps]
    bufferOffset = _serializer.float64(obj.mcl_wcmps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type localization_param
    let len;
    let data = new localization_param(null);
    // Deserialize message field [mcl_afast]
    data.mcl_afast = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mcl_aslow]
    data.mcl_aslow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mcl_variance]
    data.mcl_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mgauss_x]
    data.mgauss_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mgauss_y]
    data.mgauss_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mgauss_w]
    data.mgauss_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vgauss_x]
    data.vgauss_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vgauss_y]
    data.vgauss_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mcl_wcmps]
    data.mcl_wcmps = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mcl_localization/localization_param';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a9ad945fdf7665608477890478ed39f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 mcl_afast
    float64 mcl_aslow
    float64 mcl_variance
    float64 mgauss_x
    float64 mgauss_y
    float64 mgauss_w
    float64 vgauss_x
    float64 vgauss_y
    float64 mcl_wcmps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new localization_param(null);
    if (msg.mcl_afast !== undefined) {
      resolved.mcl_afast = msg.mcl_afast;
    }
    else {
      resolved.mcl_afast = 0.0
    }

    if (msg.mcl_aslow !== undefined) {
      resolved.mcl_aslow = msg.mcl_aslow;
    }
    else {
      resolved.mcl_aslow = 0.0
    }

    if (msg.mcl_variance !== undefined) {
      resolved.mcl_variance = msg.mcl_variance;
    }
    else {
      resolved.mcl_variance = 0.0
    }

    if (msg.mgauss_x !== undefined) {
      resolved.mgauss_x = msg.mgauss_x;
    }
    else {
      resolved.mgauss_x = 0.0
    }

    if (msg.mgauss_y !== undefined) {
      resolved.mgauss_y = msg.mgauss_y;
    }
    else {
      resolved.mgauss_y = 0.0
    }

    if (msg.mgauss_w !== undefined) {
      resolved.mgauss_w = msg.mgauss_w;
    }
    else {
      resolved.mgauss_w = 0.0
    }

    if (msg.vgauss_x !== undefined) {
      resolved.vgauss_x = msg.vgauss_x;
    }
    else {
      resolved.vgauss_x = 0.0
    }

    if (msg.vgauss_y !== undefined) {
      resolved.vgauss_y = msg.vgauss_y;
    }
    else {
      resolved.vgauss_y = 0.0
    }

    if (msg.mcl_wcmps !== undefined) {
      resolved.mcl_wcmps = msg.mcl_wcmps;
    }
    else {
      resolved.mcl_wcmps = 0.0
    }

    return resolved;
    }
};

module.exports = localization_param;
