// Auto-generated. Do not edit!

// (in-package quintic_walk_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WalkingParam = require('../msg/WalkingParam.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetWalkingParamRequest {
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
        this.parameters = new WalkingParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWalkingParamRequest
    // Serialize message field [parameters]
    bufferOffset = WalkingParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWalkingParamRequest
    let len;
    let data = new SetWalkingParamRequest(null);
    // Deserialize message field [parameters]
    data.parameters = WalkingParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WalkingParam.getMessageSize(object.parameters);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quintic_walk_msgs/SetWalkingParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8e3c9187b2219005ed324e21ce9d8a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WalkingParam    parameters
    
    ================================================================================
    MSG: quintic_walk_msgs/WalkingParam
    float32 freq
    float32 doubleSupportRatio
    float32 footDistance
    float32 footRise
    float32 footPutDownZOffset
    float32 footPutDownPhase
    float32 footApexPhase
    float32 footOvershootRatio
    float32 footOvershootPhase
    float32 trunkHeight
    float32 trunkPitch
    float32 trunkPhase
    float32 trunkXOffset
    float32 trunkYOffset
    float32 trunkSwing
    float32 trunkPause
    float32 trunkXOffsetPCoefForward
    float32 trunkXOffsetPCoefTurn
    float32 trunkPitchPCoefForward
    float32 trunkPitchPCoefTurn
    bool trunkYOnlyInDoubleSupport
    
    float32 XMove
    float32 YMove
    float32 ZMove
    string mode
    bool tuning
    
    float32 D_ANKLE_P_qw
    float32 D_KNEE_qw
    float32 D_HIP_P_qw
    
    
    float32 KP_P_qw
    float32 KD_P_qw
    float32 KI_P_qw
    
    
    
    float32 ShoulderGain_qw
    float32 setpointPitch
    float32 pitch_error_tol
    
    float32 KP_X_qw
    float32 KD_X_qw
    float32 KI_X_qw
    
    
    float32 Angle_0
    float32 Angle_1
    float32 Angle_2
    float32 Angle_3
    float32 Angle_4
    
    float32 KD_0
    float32 KD_1
    float32 KD_2
    float32 KD_3
    float32 KD_4
    
    float32 Gyro_0
    float32 Gyro_1
    float32 Gyro_2
    float32 Gyro_3
    float32 Gyro_4
    
    float32 KP_0
    float32 KP_1
    float32 KP_2
    float32 KP_3
    float32 KP_4
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWalkingParamRequest(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = WalkingParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new WalkingParam()
    }

    return resolved;
    }
};

class SetWalkingParamResponse {
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
    // Serializes a message object of type SetWalkingParamResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWalkingParamResponse
    let len;
    let data = new SetWalkingParamResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quintic_walk_msgs/SetWalkingParamResponse';
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
    const resolved = new SetWalkingParamResponse(null);
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
  Request: SetWalkingParamRequest,
  Response: SetWalkingParamResponse,
  md5sum() { return 'a9df0fee7c93a59d59f41082ca94adfb'; },
  datatype() { return 'quintic_walk_msgs/SetWalkingParam'; }
};
