// Auto-generated. Do not edit!

// (in-package quintic_walk_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let WalkingParam = require('../msg/WalkingParam.js');

//-----------------------------------------------------------

class GetWalkingParamRequest {
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
    // Serializes a message object of type GetWalkingParamRequest
    // Serialize message field [get_param]
    bufferOffset = _serializer.bool(obj.get_param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWalkingParamRequest
    let len;
    let data = new GetWalkingParamRequest(null);
    // Deserialize message field [get_param]
    data.get_param = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quintic_walk_msgs/GetWalkingParamRequest';
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
    const resolved = new GetWalkingParamRequest(null);
    if (msg.get_param !== undefined) {
      resolved.get_param = msg.get_param;
    }
    else {
      resolved.get_param = false
    }

    return resolved;
    }
};

class GetWalkingParamResponse {
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
    // Serializes a message object of type GetWalkingParamResponse
    // Serialize message field [parameters]
    bufferOffset = WalkingParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWalkingParamResponse
    let len;
    let data = new GetWalkingParamResponse(null);
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
    return 'quintic_walk_msgs/GetWalkingParamResponse';
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
    const resolved = new GetWalkingParamResponse(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = WalkingParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new WalkingParam()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWalkingParamRequest,
  Response: GetWalkingParamResponse,
  md5sum() { return 'cc37d4e8b602e9bf4bc31537e92d2dca'; },
  datatype() { return 'quintic_walk_msgs/GetWalkingParam'; }
};
