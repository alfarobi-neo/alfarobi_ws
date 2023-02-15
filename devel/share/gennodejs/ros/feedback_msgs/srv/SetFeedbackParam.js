// Auto-generated. Do not edit!

// (in-package feedback_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FeedbackParam = require('../msg/FeedbackParam.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetFeedbackParamRequest {
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
    // Serializes a message object of type SetFeedbackParamRequest
    // Serialize message field [parameters]
    bufferOffset = FeedbackParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFeedbackParamRequest
    let len;
    let data = new SetFeedbackParamRequest(null);
    // Deserialize message field [parameters]
    data.parameters = FeedbackParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a service object
    return 'feedback_msgs/SetFeedbackParamRequest';
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
    const resolved = new SetFeedbackParamRequest(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = FeedbackParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new FeedbackParam()
    }

    return resolved;
    }
};

class SetFeedbackParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetFeedbackParamResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFeedbackParamResponse
    let len;
    let data = new SetFeedbackParamResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'feedback_msgs/SetFeedbackParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool            result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetFeedbackParamResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetFeedbackParamRequest,
  Response: SetFeedbackParamResponse,
  md5sum() { return '9ad071cebaaf92d9d2cb3443b3bd44a4'; },
  datatype() { return 'feedback_msgs/SetFeedbackParam'; }
};
