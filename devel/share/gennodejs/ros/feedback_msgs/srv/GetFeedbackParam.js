// Auto-generated. Do not edit!

// (in-package feedback_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let FeedbackParam = require('../msg/FeedbackParam.js');

//-----------------------------------------------------------

class GetFeedbackParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_param = null;
    }
    else {
      if (initObj.hasOwnProperty('get_param')) {
        this.get_param = initObj.get_param
      }
      else {
        this.get_param = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFeedbackParamRequest
    // Serialize message field [get_param]
    bufferOffset = _serializer.bool(obj.get_param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFeedbackParamRequest
    let len;
    let data = new GetFeedbackParamRequest(null);
    // Deserialize message field [get_param]
    data.get_param = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'feedback_msgs/GetFeedbackParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd964a0520d7b14bf821ec75afc464385';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool            get_param
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFeedbackParamRequest(null);
    if (msg.get_param !== undefined) {
      resolved.get_param = msg.get_param;
    }
    else {
      resolved.get_param = false
    }

    return resolved;
    }
};

class GetFeedbackParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = new FeedbackParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFeedbackParamResponse
    // Serialize message field [parameters]
    bufferOffset = FeedbackParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFeedbackParamResponse
    let len;
    let data = new GetFeedbackParamResponse(null);
    // Deserialize message field [parameters]
    data.parameters = FeedbackParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a service object
    return 'feedback_msgs/GetFeedbackParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58c64ecffe4d4e4baef347d4ff31af16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FeedbackParam    parameters
    
    
    ================================================================================
    MSG: feedback_msgs/FeedbackParam
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
    const resolved = new GetFeedbackParamResponse(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = FeedbackParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new FeedbackParam()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetFeedbackParamRequest,
  Response: GetFeedbackParamResponse,
  md5sum() { return '43565a45156840bd6626578cd2384225'; },
  datatype() { return 'feedback_msgs/GetFeedbackParam'; }
};
