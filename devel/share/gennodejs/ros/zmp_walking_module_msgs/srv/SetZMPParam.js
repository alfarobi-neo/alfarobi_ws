// Auto-generated. Do not edit!

// (in-package zmp_walking_module_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ZMPWalkingParam = require('../msg/ZMPWalkingParam.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetZMPParamRequest {
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
        this.parameters = new ZMPWalkingParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetZMPParamRequest
    // Serialize message field [parameters]
    bufferOffset = ZMPWalkingParam.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetZMPParamRequest
    let len;
    let data = new SetZMPParamRequest(null);
    // Deserialize message field [parameters]
    data.parameters = ZMPWalkingParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 334;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zmp_walking_module_msgs/SetZMPParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82609c663b0736a4c9a2a59399fba32d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ZMPWalkingParam    parameters
    
    ================================================================================
    MSG: zmp_walking_module_msgs/ZMPWalkingParam
    ########## ZMP WALKING BIT-BOTS ###########
    
    bool feedback_
    
    float32 L_Shift
    float32 L_Lift
    float32 L_P_Kick
    float32 L_P_Cool
    
    float32 R_Shift
    float32 R_Lift
    float32 R_P_Kick
    float32 R_P_Cool
    
    float32 Kp
    float32 Kd
    float32 TH1
    float32 TH2
    float32 Acc
    
    float32 KpP
    float32 KpR
    float32 KdP
    float32 KdR
    float32 Ki
    
    float32 zmp_vx
    float32 zmp_vy
    float32 zmp_vphi
    float32 m_zmp_vx
    float32 m_zmp_vy
    float32 m_zmp_vphi
    float32 zmp_vx_man
    
    bool zmp_useGyro
    float32 arm_pitch
    float32 arm_roll
    float32 arm_elbow
    
    float32 supp_front
    float32 supp_front2
    float32 supp_turn
    float32 supp_side_x
    float32 supp_side_y
    float32 supp_x
    float32 supp_y
    
    float32 suppmod_y_init
    float32 turncomp_thrs
    float32 turn_comp
    float32 accel_comp
    float32 front_comp
    float32 hiproll_comp
    float32 tstep
    float32 tzmp
    float32 velfast_forward
    float32 velfast_turn
    float32 angkle_supp_factor
    
    float32 foot_y
    float32 foot_x
    float32 stand_offset
    float32 body_height
    float32 step_height
    float32 belly_roll
    float32 belly_hip
    float32 bodytilt
    
    float32 ankleX_fact
    float32 ankleX_deadband
    float32 ankleX_maxVal
    
    float32 ankleY_fact
    float32 ankleY_deadband
    float32 ankleY_maxVal
    
    float32 kneeX_fact
    float32 kneeX_deadband
    float32 kneeX_maxVal
    
    float32 hipY_fact
    float32 hipY_deadband
    float32 hipY_maxVal
    
    float32 armY_fact
    float32 armY_deadband
    float32 armY_maxVal
    
    float32 armX_fact
    float32 armX_deadband
    float32 armX_maxVal
    
    float32 ballPosX
    float32 ballPosY
    float32 ballPosZ
    
    float32 goalPosX
    float32 goalPosY
    float32 goalPosZ
    
    float32 power
    float32 TRetract
    float32 TKick
    float32 TRising
    float32 TDown
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetZMPParamRequest(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = ZMPWalkingParam.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new ZMPWalkingParam()
    }

    return resolved;
    }
};

class SetZMPParamResponse {
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
    // Serializes a message object of type SetZMPParamResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetZMPParamResponse
    let len;
    let data = new SetZMPParamResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zmp_walking_module_msgs/SetZMPParamResponse';
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
    const resolved = new SetZMPParamResponse(null);
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
  Request: SetZMPParamRequest,
  Response: SetZMPParamResponse,
  md5sum() { return '5e9b025a73e0773bcc6bbe494dae167b'; },
  datatype() { return 'zmp_walking_module_msgs/SetZMPParam'; }
};
