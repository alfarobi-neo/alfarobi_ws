// Auto-generated. Do not edit!

// (in-package densis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class densis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.IMUorientation = null;
      this.IMUgyro = null;
      this.COMLSSP = null;
      this.COMRSSP = null;
      this.COMDSP = null;
      this.COMLSSPrpy = null;
      this.COMRSSPrpy = null;
      this.COMDSPrpy = null;
      this.ZMPLSSP = null;
      this.ZMPRSSP = null;
      this.ZMPDSP = null;
      this.LAnklePitch_velocityNow = null;
      this.LAnklePitch_positionIK = null;
      this.LAnklePitch_positionNow = null;
      this.LAnklePitch_refPosFromPos = null;
      this.RAnklePitch_velocityNow = null;
      this.RAnklePitch_positionIK = null;
      this.RAnklePitch_positionNow = null;
      this.RAnklePitch_refPosFromPos = null;
      this.COMDSPrpy_pitch_Est = null;
      this.gyro_pitch_Est = null;
      this.COMDSPrpy_pitch_Meas = null;
      this.gyro_pitch_Meas = null;
      this.gyro_pitch_Fil = null;
      this.CP_0 = null;
      this.CP_1 = null;
      this.CP_2 = null;
      this.CP_3 = null;
    }
    else {
      if (initObj.hasOwnProperty('IMUorientation')) {
        this.IMUorientation = initObj.IMUorientation
      }
      else {
        this.IMUorientation = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('IMUgyro')) {
        this.IMUgyro = initObj.IMUgyro
      }
      else {
        this.IMUgyro = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('COMLSSP')) {
        this.COMLSSP = initObj.COMLSSP
      }
      else {
        this.COMLSSP = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('COMRSSP')) {
        this.COMRSSP = initObj.COMRSSP
      }
      else {
        this.COMRSSP = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('COMDSP')) {
        this.COMDSP = initObj.COMDSP
      }
      else {
        this.COMDSP = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('COMLSSPrpy')) {
        this.COMLSSPrpy = initObj.COMLSSPrpy
      }
      else {
        this.COMLSSPrpy = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('COMRSSPrpy')) {
        this.COMRSSPrpy = initObj.COMRSSPrpy
      }
      else {
        this.COMRSSPrpy = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('COMDSPrpy')) {
        this.COMDSPrpy = initObj.COMDSPrpy
      }
      else {
        this.COMDSPrpy = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPLSSP')) {
        this.ZMPLSSP = initObj.ZMPLSSP
      }
      else {
        this.ZMPLSSP = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPRSSP')) {
        this.ZMPRSSP = initObj.ZMPRSSP
      }
      else {
        this.ZMPRSSP = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPDSP')) {
        this.ZMPDSP = initObj.ZMPDSP
      }
      else {
        this.ZMPDSP = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('LAnklePitch_velocityNow')) {
        this.LAnklePitch_velocityNow = initObj.LAnklePitch_velocityNow
      }
      else {
        this.LAnklePitch_velocityNow = 0.0;
      }
      if (initObj.hasOwnProperty('LAnklePitch_positionIK')) {
        this.LAnklePitch_positionIK = initObj.LAnklePitch_positionIK
      }
      else {
        this.LAnklePitch_positionIK = 0.0;
      }
      if (initObj.hasOwnProperty('LAnklePitch_positionNow')) {
        this.LAnklePitch_positionNow = initObj.LAnklePitch_positionNow
      }
      else {
        this.LAnklePitch_positionNow = 0.0;
      }
      if (initObj.hasOwnProperty('LAnklePitch_refPosFromPos')) {
        this.LAnklePitch_refPosFromPos = initObj.LAnklePitch_refPosFromPos
      }
      else {
        this.LAnklePitch_refPosFromPos = 0.0;
      }
      if (initObj.hasOwnProperty('RAnklePitch_velocityNow')) {
        this.RAnklePitch_velocityNow = initObj.RAnklePitch_velocityNow
      }
      else {
        this.RAnklePitch_velocityNow = 0.0;
      }
      if (initObj.hasOwnProperty('RAnklePitch_positionIK')) {
        this.RAnklePitch_positionIK = initObj.RAnklePitch_positionIK
      }
      else {
        this.RAnklePitch_positionIK = 0.0;
      }
      if (initObj.hasOwnProperty('RAnklePitch_positionNow')) {
        this.RAnklePitch_positionNow = initObj.RAnklePitch_positionNow
      }
      else {
        this.RAnklePitch_positionNow = 0.0;
      }
      if (initObj.hasOwnProperty('RAnklePitch_refPosFromPos')) {
        this.RAnklePitch_refPosFromPos = initObj.RAnklePitch_refPosFromPos
      }
      else {
        this.RAnklePitch_refPosFromPos = 0.0;
      }
      if (initObj.hasOwnProperty('COMDSPrpy_pitch_Est')) {
        this.COMDSPrpy_pitch_Est = initObj.COMDSPrpy_pitch_Est
      }
      else {
        this.COMDSPrpy_pitch_Est = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_pitch_Est')) {
        this.gyro_pitch_Est = initObj.gyro_pitch_Est
      }
      else {
        this.gyro_pitch_Est = 0.0;
      }
      if (initObj.hasOwnProperty('COMDSPrpy_pitch_Meas')) {
        this.COMDSPrpy_pitch_Meas = initObj.COMDSPrpy_pitch_Meas
      }
      else {
        this.COMDSPrpy_pitch_Meas = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_pitch_Meas')) {
        this.gyro_pitch_Meas = initObj.gyro_pitch_Meas
      }
      else {
        this.gyro_pitch_Meas = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_pitch_Fil')) {
        this.gyro_pitch_Fil = initObj.gyro_pitch_Fil
      }
      else {
        this.gyro_pitch_Fil = 0.0;
      }
      if (initObj.hasOwnProperty('CP_0')) {
        this.CP_0 = initObj.CP_0
      }
      else {
        this.CP_0 = 0.0;
      }
      if (initObj.hasOwnProperty('CP_1')) {
        this.CP_1 = initObj.CP_1
      }
      else {
        this.CP_1 = 0.0;
      }
      if (initObj.hasOwnProperty('CP_2')) {
        this.CP_2 = initObj.CP_2
      }
      else {
        this.CP_2 = 0.0;
      }
      if (initObj.hasOwnProperty('CP_3')) {
        this.CP_3 = initObj.CP_3
      }
      else {
        this.CP_3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type densis
    // Serialize message field [IMUorientation]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.IMUorientation, buffer, bufferOffset);
    // Serialize message field [IMUgyro]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.IMUgyro, buffer, bufferOffset);
    // Serialize message field [COMLSSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMLSSP, buffer, bufferOffset);
    // Serialize message field [COMRSSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMRSSP, buffer, bufferOffset);
    // Serialize message field [COMDSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMDSP, buffer, bufferOffset);
    // Serialize message field [COMLSSPrpy]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMLSSPrpy, buffer, bufferOffset);
    // Serialize message field [COMRSSPrpy]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMRSSPrpy, buffer, bufferOffset);
    // Serialize message field [COMDSPrpy]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMDSPrpy, buffer, bufferOffset);
    // Serialize message field [ZMPLSSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPLSSP, buffer, bufferOffset);
    // Serialize message field [ZMPRSSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPRSSP, buffer, bufferOffset);
    // Serialize message field [ZMPDSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPDSP, buffer, bufferOffset);
    // Serialize message field [LAnklePitch_velocityNow]
    bufferOffset = _serializer.float32(obj.LAnklePitch_velocityNow, buffer, bufferOffset);
    // Serialize message field [LAnklePitch_positionIK]
    bufferOffset = _serializer.float32(obj.LAnklePitch_positionIK, buffer, bufferOffset);
    // Serialize message field [LAnklePitch_positionNow]
    bufferOffset = _serializer.float32(obj.LAnklePitch_positionNow, buffer, bufferOffset);
    // Serialize message field [LAnklePitch_refPosFromPos]
    bufferOffset = _serializer.float32(obj.LAnklePitch_refPosFromPos, buffer, bufferOffset);
    // Serialize message field [RAnklePitch_velocityNow]
    bufferOffset = _serializer.float32(obj.RAnklePitch_velocityNow, buffer, bufferOffset);
    // Serialize message field [RAnklePitch_positionIK]
    bufferOffset = _serializer.float32(obj.RAnklePitch_positionIK, buffer, bufferOffset);
    // Serialize message field [RAnklePitch_positionNow]
    bufferOffset = _serializer.float32(obj.RAnklePitch_positionNow, buffer, bufferOffset);
    // Serialize message field [RAnklePitch_refPosFromPos]
    bufferOffset = _serializer.float32(obj.RAnklePitch_refPosFromPos, buffer, bufferOffset);
    // Serialize message field [COMDSPrpy_pitch_Est]
    bufferOffset = _serializer.float32(obj.COMDSPrpy_pitch_Est, buffer, bufferOffset);
    // Serialize message field [gyro_pitch_Est]
    bufferOffset = _serializer.float32(obj.gyro_pitch_Est, buffer, bufferOffset);
    // Serialize message field [COMDSPrpy_pitch_Meas]
    bufferOffset = _serializer.float32(obj.COMDSPrpy_pitch_Meas, buffer, bufferOffset);
    // Serialize message field [gyro_pitch_Meas]
    bufferOffset = _serializer.float32(obj.gyro_pitch_Meas, buffer, bufferOffset);
    // Serialize message field [gyro_pitch_Fil]
    bufferOffset = _serializer.float32(obj.gyro_pitch_Fil, buffer, bufferOffset);
    // Serialize message field [CP_0]
    bufferOffset = _serializer.float32(obj.CP_0, buffer, bufferOffset);
    // Serialize message field [CP_1]
    bufferOffset = _serializer.float32(obj.CP_1, buffer, bufferOffset);
    // Serialize message field [CP_2]
    bufferOffset = _serializer.float32(obj.CP_2, buffer, bufferOffset);
    // Serialize message field [CP_3]
    bufferOffset = _serializer.float32(obj.CP_3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type densis
    let len;
    let data = new densis(null);
    // Deserialize message field [IMUorientation]
    data.IMUorientation = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [IMUgyro]
    data.IMUgyro = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMLSSP]
    data.COMLSSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMRSSP]
    data.COMRSSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMDSP]
    data.COMDSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMLSSPrpy]
    data.COMLSSPrpy = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMRSSPrpy]
    data.COMRSSPrpy = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMDSPrpy]
    data.COMDSPrpy = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPLSSP]
    data.ZMPLSSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPRSSP]
    data.ZMPRSSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPDSP]
    data.ZMPDSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [LAnklePitch_velocityNow]
    data.LAnklePitch_velocityNow = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LAnklePitch_positionIK]
    data.LAnklePitch_positionIK = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LAnklePitch_positionNow]
    data.LAnklePitch_positionNow = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LAnklePitch_refPosFromPos]
    data.LAnklePitch_refPosFromPos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RAnklePitch_velocityNow]
    data.RAnklePitch_velocityNow = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RAnklePitch_positionIK]
    data.RAnklePitch_positionIK = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RAnklePitch_positionNow]
    data.RAnklePitch_positionNow = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RAnklePitch_refPosFromPos]
    data.RAnklePitch_refPosFromPos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [COMDSPrpy_pitch_Est]
    data.COMDSPrpy_pitch_Est = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_pitch_Est]
    data.gyro_pitch_Est = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [COMDSPrpy_pitch_Meas]
    data.COMDSPrpy_pitch_Meas = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_pitch_Meas]
    data.gyro_pitch_Meas = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_pitch_Fil]
    data.gyro_pitch_Fil = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CP_0]
    data.CP_0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CP_1]
    data.CP_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CP_2]
    data.CP_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CP_3]
    data.CP_3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 332;
  }

  static datatype() {
    // Returns string type for a message object
    return 'densis_msgs/densis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff16778aedf270b756c96df44fa2eccc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point IMUorientation
    geometry_msgs/Point IMUgyro
    geometry_msgs/Point COMLSSP
    geometry_msgs/Point COMRSSP
    geometry_msgs/Point COMDSP
    geometry_msgs/Point COMLSSPrpy
    geometry_msgs/Point COMRSSPrpy
    geometry_msgs/Point COMDSPrpy
    geometry_msgs/Point ZMPLSSP
    geometry_msgs/Point ZMPRSSP
    geometry_msgs/Point ZMPDSP
    
    #geometry_msgs/Transform LAnklePitch
    #geometry_msgs/Transform RAnklePitch
    
    float32 LAnklePitch_velocityNow  
    float32 LAnklePitch_positionIK   
    float32 LAnklePitch_positionNow  
    float32 LAnklePitch_refPosFromPos 
    float32 RAnklePitch_velocityNow  
    float32 RAnklePitch_positionIK   
    float32 RAnklePitch_positionNow 
    float32 RAnklePitch_refPosFromPos
    
    float32 COMDSPrpy_pitch_Est
    float32 gyro_pitch_Est
    float32 COMDSPrpy_pitch_Meas
    float32 gyro_pitch_Meas
    float32 gyro_pitch_Fil
    
    float32 CP_0
    float32 CP_1
    float32 CP_2
    float32 CP_3
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new densis(null);
    if (msg.IMUorientation !== undefined) {
      resolved.IMUorientation = geometry_msgs.msg.Point.Resolve(msg.IMUorientation)
    }
    else {
      resolved.IMUorientation = new geometry_msgs.msg.Point()
    }

    if (msg.IMUgyro !== undefined) {
      resolved.IMUgyro = geometry_msgs.msg.Point.Resolve(msg.IMUgyro)
    }
    else {
      resolved.IMUgyro = new geometry_msgs.msg.Point()
    }

    if (msg.COMLSSP !== undefined) {
      resolved.COMLSSP = geometry_msgs.msg.Point.Resolve(msg.COMLSSP)
    }
    else {
      resolved.COMLSSP = new geometry_msgs.msg.Point()
    }

    if (msg.COMRSSP !== undefined) {
      resolved.COMRSSP = geometry_msgs.msg.Point.Resolve(msg.COMRSSP)
    }
    else {
      resolved.COMRSSP = new geometry_msgs.msg.Point()
    }

    if (msg.COMDSP !== undefined) {
      resolved.COMDSP = geometry_msgs.msg.Point.Resolve(msg.COMDSP)
    }
    else {
      resolved.COMDSP = new geometry_msgs.msg.Point()
    }

    if (msg.COMLSSPrpy !== undefined) {
      resolved.COMLSSPrpy = geometry_msgs.msg.Point.Resolve(msg.COMLSSPrpy)
    }
    else {
      resolved.COMLSSPrpy = new geometry_msgs.msg.Point()
    }

    if (msg.COMRSSPrpy !== undefined) {
      resolved.COMRSSPrpy = geometry_msgs.msg.Point.Resolve(msg.COMRSSPrpy)
    }
    else {
      resolved.COMRSSPrpy = new geometry_msgs.msg.Point()
    }

    if (msg.COMDSPrpy !== undefined) {
      resolved.COMDSPrpy = geometry_msgs.msg.Point.Resolve(msg.COMDSPrpy)
    }
    else {
      resolved.COMDSPrpy = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPLSSP !== undefined) {
      resolved.ZMPLSSP = geometry_msgs.msg.Point.Resolve(msg.ZMPLSSP)
    }
    else {
      resolved.ZMPLSSP = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPRSSP !== undefined) {
      resolved.ZMPRSSP = geometry_msgs.msg.Point.Resolve(msg.ZMPRSSP)
    }
    else {
      resolved.ZMPRSSP = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPDSP !== undefined) {
      resolved.ZMPDSP = geometry_msgs.msg.Point.Resolve(msg.ZMPDSP)
    }
    else {
      resolved.ZMPDSP = new geometry_msgs.msg.Point()
    }

    if (msg.LAnklePitch_velocityNow !== undefined) {
      resolved.LAnklePitch_velocityNow = msg.LAnklePitch_velocityNow;
    }
    else {
      resolved.LAnklePitch_velocityNow = 0.0
    }

    if (msg.LAnklePitch_positionIK !== undefined) {
      resolved.LAnklePitch_positionIK = msg.LAnklePitch_positionIK;
    }
    else {
      resolved.LAnklePitch_positionIK = 0.0
    }

    if (msg.LAnklePitch_positionNow !== undefined) {
      resolved.LAnklePitch_positionNow = msg.LAnklePitch_positionNow;
    }
    else {
      resolved.LAnklePitch_positionNow = 0.0
    }

    if (msg.LAnklePitch_refPosFromPos !== undefined) {
      resolved.LAnklePitch_refPosFromPos = msg.LAnklePitch_refPosFromPos;
    }
    else {
      resolved.LAnklePitch_refPosFromPos = 0.0
    }

    if (msg.RAnklePitch_velocityNow !== undefined) {
      resolved.RAnklePitch_velocityNow = msg.RAnklePitch_velocityNow;
    }
    else {
      resolved.RAnklePitch_velocityNow = 0.0
    }

    if (msg.RAnklePitch_positionIK !== undefined) {
      resolved.RAnklePitch_positionIK = msg.RAnklePitch_positionIK;
    }
    else {
      resolved.RAnklePitch_positionIK = 0.0
    }

    if (msg.RAnklePitch_positionNow !== undefined) {
      resolved.RAnklePitch_positionNow = msg.RAnklePitch_positionNow;
    }
    else {
      resolved.RAnklePitch_positionNow = 0.0
    }

    if (msg.RAnklePitch_refPosFromPos !== undefined) {
      resolved.RAnklePitch_refPosFromPos = msg.RAnklePitch_refPosFromPos;
    }
    else {
      resolved.RAnklePitch_refPosFromPos = 0.0
    }

    if (msg.COMDSPrpy_pitch_Est !== undefined) {
      resolved.COMDSPrpy_pitch_Est = msg.COMDSPrpy_pitch_Est;
    }
    else {
      resolved.COMDSPrpy_pitch_Est = 0.0
    }

    if (msg.gyro_pitch_Est !== undefined) {
      resolved.gyro_pitch_Est = msg.gyro_pitch_Est;
    }
    else {
      resolved.gyro_pitch_Est = 0.0
    }

    if (msg.COMDSPrpy_pitch_Meas !== undefined) {
      resolved.COMDSPrpy_pitch_Meas = msg.COMDSPrpy_pitch_Meas;
    }
    else {
      resolved.COMDSPrpy_pitch_Meas = 0.0
    }

    if (msg.gyro_pitch_Meas !== undefined) {
      resolved.gyro_pitch_Meas = msg.gyro_pitch_Meas;
    }
    else {
      resolved.gyro_pitch_Meas = 0.0
    }

    if (msg.gyro_pitch_Fil !== undefined) {
      resolved.gyro_pitch_Fil = msg.gyro_pitch_Fil;
    }
    else {
      resolved.gyro_pitch_Fil = 0.0
    }

    if (msg.CP_0 !== undefined) {
      resolved.CP_0 = msg.CP_0;
    }
    else {
      resolved.CP_0 = 0.0
    }

    if (msg.CP_1 !== undefined) {
      resolved.CP_1 = msg.CP_1;
    }
    else {
      resolved.CP_1 = 0.0
    }

    if (msg.CP_2 !== undefined) {
      resolved.CP_2 = msg.CP_2;
    }
    else {
      resolved.CP_2 = 0.0
    }

    if (msg.CP_3 !== undefined) {
      resolved.CP_3 = msg.CP_3;
    }
    else {
      resolved.CP_3 = 0.0
    }

    return resolved;
    }
};

module.exports = densis;
