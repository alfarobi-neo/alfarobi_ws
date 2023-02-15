// Auto-generated. Do not edit!

// (in-package data_log_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DataLog {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RFootFK = null;
      this.LFootFK = null;
      this.TorsoFK = null;
      this.RFootIK = null;
      this.LFootIK = null;
      this.TorsoIK = null;
      this.IMUdegrees = null;
      this.baseInertia = null;
      this.LSSPInertia = null;
      this.RSSPInertia = null;
      this.DSPInertia = null;
      this.ZMPLSSP = null;
      this.ZMPRSSP = null;
      this.ZMPDSP = null;
      this.ZMPLSSP_accZ = null;
      this.ZMPRSSP_accZ = null;
      this.ZMPDSP_accZ = null;
      this.ZMPLSSP_estimate = null;
      this.ZMPRSSP_estimate = null;
      this.ZMPDSP_estimate = null;
      this.COMLSSPrpy = null;
      this.COMRSSPrpy = null;
      this.COMDSPrpy = null;
      this.accelFiltered = null;
      this.ZMPLSSP_accFil = null;
      this.ZMPRSSP_accFil = null;
      this.ZMPDSP_accFil = null;
      this.LAnklePitch_velocityNow = null;
      this.LAnklePitch_positionIK = null;
      this.LAnklePitch_positionNow = null;
      this.LAnklePitch_refPosFromPos = null;
      this.RAnklePitch_velocityNow = null;
      this.RAnklePitch_positionIK = null;
      this.RAnklePitch_positionNow = null;
      this.RAnklePitch_refPosFromPos = null;
    }
    else {
      if (initObj.hasOwnProperty('RFootFK')) {
        this.RFootFK = initObj.RFootFK
      }
      else {
        this.RFootFK = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('LFootFK')) {
        this.LFootFK = initObj.LFootFK
      }
      else {
        this.LFootFK = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('TorsoFK')) {
        this.TorsoFK = initObj.TorsoFK
      }
      else {
        this.TorsoFK = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('RFootIK')) {
        this.RFootIK = initObj.RFootIK
      }
      else {
        this.RFootIK = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('LFootIK')) {
        this.LFootIK = initObj.LFootIK
      }
      else {
        this.LFootIK = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('TorsoIK')) {
        this.TorsoIK = initObj.TorsoIK
      }
      else {
        this.TorsoIK = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('IMUdegrees')) {
        this.IMUdegrees = initObj.IMUdegrees
      }
      else {
        this.IMUdegrees = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('baseInertia')) {
        this.baseInertia = initObj.baseInertia
      }
      else {
        this.baseInertia = new geometry_msgs.msg.Inertia();
      }
      if (initObj.hasOwnProperty('LSSPInertia')) {
        this.LSSPInertia = initObj.LSSPInertia
      }
      else {
        this.LSSPInertia = new geometry_msgs.msg.Inertia();
      }
      if (initObj.hasOwnProperty('RSSPInertia')) {
        this.RSSPInertia = initObj.RSSPInertia
      }
      else {
        this.RSSPInertia = new geometry_msgs.msg.Inertia();
      }
      if (initObj.hasOwnProperty('DSPInertia')) {
        this.DSPInertia = initObj.DSPInertia
      }
      else {
        this.DSPInertia = new geometry_msgs.msg.Inertia();
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
      if (initObj.hasOwnProperty('ZMPLSSP_accZ')) {
        this.ZMPLSSP_accZ = initObj.ZMPLSSP_accZ
      }
      else {
        this.ZMPLSSP_accZ = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPRSSP_accZ')) {
        this.ZMPRSSP_accZ = initObj.ZMPRSSP_accZ
      }
      else {
        this.ZMPRSSP_accZ = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPDSP_accZ')) {
        this.ZMPDSP_accZ = initObj.ZMPDSP_accZ
      }
      else {
        this.ZMPDSP_accZ = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPLSSP_estimate')) {
        this.ZMPLSSP_estimate = initObj.ZMPLSSP_estimate
      }
      else {
        this.ZMPLSSP_estimate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPRSSP_estimate')) {
        this.ZMPRSSP_estimate = initObj.ZMPRSSP_estimate
      }
      else {
        this.ZMPRSSP_estimate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPDSP_estimate')) {
        this.ZMPDSP_estimate = initObj.ZMPDSP_estimate
      }
      else {
        this.ZMPDSP_estimate = new geometry_msgs.msg.Point();
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
      if (initObj.hasOwnProperty('accelFiltered')) {
        this.accelFiltered = initObj.accelFiltered
      }
      else {
        this.accelFiltered = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPLSSP_accFil')) {
        this.ZMPLSSP_accFil = initObj.ZMPLSSP_accFil
      }
      else {
        this.ZMPLSSP_accFil = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPRSSP_accFil')) {
        this.ZMPRSSP_accFil = initObj.ZMPRSSP_accFil
      }
      else {
        this.ZMPRSSP_accFil = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ZMPDSP_accFil')) {
        this.ZMPDSP_accFil = initObj.ZMPDSP_accFil
      }
      else {
        this.ZMPDSP_accFil = new geometry_msgs.msg.Point();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataLog
    // Serialize message field [RFootFK]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.RFootFK, buffer, bufferOffset);
    // Serialize message field [LFootFK]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.LFootFK, buffer, bufferOffset);
    // Serialize message field [TorsoFK]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.TorsoFK, buffer, bufferOffset);
    // Serialize message field [RFootIK]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.RFootIK, buffer, bufferOffset);
    // Serialize message field [LFootIK]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.LFootIK, buffer, bufferOffset);
    // Serialize message field [TorsoIK]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.TorsoIK, buffer, bufferOffset);
    // Serialize message field [IMUdegrees]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.IMUdegrees, buffer, bufferOffset);
    // Serialize message field [baseInertia]
    bufferOffset = geometry_msgs.msg.Inertia.serialize(obj.baseInertia, buffer, bufferOffset);
    // Serialize message field [LSSPInertia]
    bufferOffset = geometry_msgs.msg.Inertia.serialize(obj.LSSPInertia, buffer, bufferOffset);
    // Serialize message field [RSSPInertia]
    bufferOffset = geometry_msgs.msg.Inertia.serialize(obj.RSSPInertia, buffer, bufferOffset);
    // Serialize message field [DSPInertia]
    bufferOffset = geometry_msgs.msg.Inertia.serialize(obj.DSPInertia, buffer, bufferOffset);
    // Serialize message field [ZMPLSSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPLSSP, buffer, bufferOffset);
    // Serialize message field [ZMPRSSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPRSSP, buffer, bufferOffset);
    // Serialize message field [ZMPDSP]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPDSP, buffer, bufferOffset);
    // Serialize message field [ZMPLSSP_accZ]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPLSSP_accZ, buffer, bufferOffset);
    // Serialize message field [ZMPRSSP_accZ]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPRSSP_accZ, buffer, bufferOffset);
    // Serialize message field [ZMPDSP_accZ]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPDSP_accZ, buffer, bufferOffset);
    // Serialize message field [ZMPLSSP_estimate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPLSSP_estimate, buffer, bufferOffset);
    // Serialize message field [ZMPRSSP_estimate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPRSSP_estimate, buffer, bufferOffset);
    // Serialize message field [ZMPDSP_estimate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPDSP_estimate, buffer, bufferOffset);
    // Serialize message field [COMLSSPrpy]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMLSSPrpy, buffer, bufferOffset);
    // Serialize message field [COMRSSPrpy]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMRSSPrpy, buffer, bufferOffset);
    // Serialize message field [COMDSPrpy]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.COMDSPrpy, buffer, bufferOffset);
    // Serialize message field [accelFiltered]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.accelFiltered, buffer, bufferOffset);
    // Serialize message field [ZMPLSSP_accFil]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPLSSP_accFil, buffer, bufferOffset);
    // Serialize message field [ZMPRSSP_accFil]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPRSSP_accFil, buffer, bufferOffset);
    // Serialize message field [ZMPDSP_accFil]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ZMPDSP_accFil, buffer, bufferOffset);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataLog
    let len;
    let data = new DataLog(null);
    // Deserialize message field [RFootFK]
    data.RFootFK = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [LFootFK]
    data.LFootFK = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [TorsoFK]
    data.TorsoFK = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [RFootIK]
    data.RFootIK = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [LFootIK]
    data.LFootIK = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [TorsoIK]
    data.TorsoIK = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [IMUdegrees]
    data.IMUdegrees = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [baseInertia]
    data.baseInertia = geometry_msgs.msg.Inertia.deserialize(buffer, bufferOffset);
    // Deserialize message field [LSSPInertia]
    data.LSSPInertia = geometry_msgs.msg.Inertia.deserialize(buffer, bufferOffset);
    // Deserialize message field [RSSPInertia]
    data.RSSPInertia = geometry_msgs.msg.Inertia.deserialize(buffer, bufferOffset);
    // Deserialize message field [DSPInertia]
    data.DSPInertia = geometry_msgs.msg.Inertia.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPLSSP]
    data.ZMPLSSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPRSSP]
    data.ZMPRSSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPDSP]
    data.ZMPDSP = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPLSSP_accZ]
    data.ZMPLSSP_accZ = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPRSSP_accZ]
    data.ZMPRSSP_accZ = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPDSP_accZ]
    data.ZMPDSP_accZ = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPLSSP_estimate]
    data.ZMPLSSP_estimate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPRSSP_estimate]
    data.ZMPRSSP_estimate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPDSP_estimate]
    data.ZMPDSP_estimate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMLSSPrpy]
    data.COMLSSPrpy = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMRSSPrpy]
    data.COMRSSPrpy = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [COMDSPrpy]
    data.COMDSPrpy = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelFiltered]
    data.accelFiltered = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPLSSP_accFil]
    data.ZMPLSSP_accFil = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPRSSP_accFil]
    data.ZMPRSSP_accFil = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ZMPDSP_accFil]
    data.ZMPDSP_accFil = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
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
    return data;
  }

  static getMessageSize(object) {
    return 1096;
  }

  static datatype() {
    // Returns string type for a message object
    return 'data_log_msgs/DataLog';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0bcca581d42e749460a77b43b4c0423';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #geometry_msgs/Point[] current_joint_msg
    geometry_msgs/Pose RFootFK
    geometry_msgs/Pose LFootFK
    geometry_msgs/Pose TorsoFK
    geometry_msgs/Pose RFootIK
    geometry_msgs/Pose LFootIK
    geometry_msgs/Pose TorsoIK
    geometry_msgs/Point IMUdegrees
    geometry_msgs/Inertia baseInertia
    geometry_msgs/Inertia LSSPInertia
    geometry_msgs/Inertia RSSPInertia
    geometry_msgs/Inertia DSPInertia
    geometry_msgs/Point ZMPLSSP
    geometry_msgs/Point ZMPRSSP
    geometry_msgs/Point ZMPDSP
    geometry_msgs/Point ZMPLSSP_accZ
    geometry_msgs/Point ZMPRSSP_accZ
    geometry_msgs/Point ZMPDSP_accZ
    geometry_msgs/Point ZMPLSSP_estimate
    geometry_msgs/Point ZMPRSSP_estimate
    geometry_msgs/Point ZMPDSP_estimate
    geometry_msgs/Point COMLSSPrpy
    geometry_msgs/Point COMRSSPrpy
    geometry_msgs/Point COMDSPrpy
    geometry_msgs/Point accelFiltered
    geometry_msgs/Point ZMPLSSP_accFil
    geometry_msgs/Point ZMPRSSP_accFil
    geometry_msgs/Point ZMPDSP_accFil
    #float32 LAnklePitch_torqueIn     
    float32 LAnklePitch_velocityNow  
    float32 LAnklePitch_positionIK   
    float32 LAnklePitch_positionNow  
    float32 LAnklePitch_refPosFromPos
    float32 RAnklePitch_velocityNow  
    float32 RAnklePitch_positionIK   
    float32 RAnklePitch_positionNow 
    float32 RAnklePitch_refPosFromPos
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    
    ================================================================================
    MSG: geometry_msgs/Inertia
    # Mass [kg]
    float64 m
    
    # Center of mass [m]
    geometry_msgs/Vector3 com
    
    # Inertia Tensor [kg-m^2]
    #     | ixx ixy ixz |
    # I = | ixy iyy iyz |
    #     | ixz iyz izz |
    float64 ixx
    float64 ixy
    float64 ixz
    float64 iyy
    float64 iyz
    float64 izz
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataLog(null);
    if (msg.RFootFK !== undefined) {
      resolved.RFootFK = geometry_msgs.msg.Pose.Resolve(msg.RFootFK)
    }
    else {
      resolved.RFootFK = new geometry_msgs.msg.Pose()
    }

    if (msg.LFootFK !== undefined) {
      resolved.LFootFK = geometry_msgs.msg.Pose.Resolve(msg.LFootFK)
    }
    else {
      resolved.LFootFK = new geometry_msgs.msg.Pose()
    }

    if (msg.TorsoFK !== undefined) {
      resolved.TorsoFK = geometry_msgs.msg.Pose.Resolve(msg.TorsoFK)
    }
    else {
      resolved.TorsoFK = new geometry_msgs.msg.Pose()
    }

    if (msg.RFootIK !== undefined) {
      resolved.RFootIK = geometry_msgs.msg.Pose.Resolve(msg.RFootIK)
    }
    else {
      resolved.RFootIK = new geometry_msgs.msg.Pose()
    }

    if (msg.LFootIK !== undefined) {
      resolved.LFootIK = geometry_msgs.msg.Pose.Resolve(msg.LFootIK)
    }
    else {
      resolved.LFootIK = new geometry_msgs.msg.Pose()
    }

    if (msg.TorsoIK !== undefined) {
      resolved.TorsoIK = geometry_msgs.msg.Pose.Resolve(msg.TorsoIK)
    }
    else {
      resolved.TorsoIK = new geometry_msgs.msg.Pose()
    }

    if (msg.IMUdegrees !== undefined) {
      resolved.IMUdegrees = geometry_msgs.msg.Point.Resolve(msg.IMUdegrees)
    }
    else {
      resolved.IMUdegrees = new geometry_msgs.msg.Point()
    }

    if (msg.baseInertia !== undefined) {
      resolved.baseInertia = geometry_msgs.msg.Inertia.Resolve(msg.baseInertia)
    }
    else {
      resolved.baseInertia = new geometry_msgs.msg.Inertia()
    }

    if (msg.LSSPInertia !== undefined) {
      resolved.LSSPInertia = geometry_msgs.msg.Inertia.Resolve(msg.LSSPInertia)
    }
    else {
      resolved.LSSPInertia = new geometry_msgs.msg.Inertia()
    }

    if (msg.RSSPInertia !== undefined) {
      resolved.RSSPInertia = geometry_msgs.msg.Inertia.Resolve(msg.RSSPInertia)
    }
    else {
      resolved.RSSPInertia = new geometry_msgs.msg.Inertia()
    }

    if (msg.DSPInertia !== undefined) {
      resolved.DSPInertia = geometry_msgs.msg.Inertia.Resolve(msg.DSPInertia)
    }
    else {
      resolved.DSPInertia = new geometry_msgs.msg.Inertia()
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

    if (msg.ZMPLSSP_accZ !== undefined) {
      resolved.ZMPLSSP_accZ = geometry_msgs.msg.Point.Resolve(msg.ZMPLSSP_accZ)
    }
    else {
      resolved.ZMPLSSP_accZ = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPRSSP_accZ !== undefined) {
      resolved.ZMPRSSP_accZ = geometry_msgs.msg.Point.Resolve(msg.ZMPRSSP_accZ)
    }
    else {
      resolved.ZMPRSSP_accZ = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPDSP_accZ !== undefined) {
      resolved.ZMPDSP_accZ = geometry_msgs.msg.Point.Resolve(msg.ZMPDSP_accZ)
    }
    else {
      resolved.ZMPDSP_accZ = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPLSSP_estimate !== undefined) {
      resolved.ZMPLSSP_estimate = geometry_msgs.msg.Point.Resolve(msg.ZMPLSSP_estimate)
    }
    else {
      resolved.ZMPLSSP_estimate = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPRSSP_estimate !== undefined) {
      resolved.ZMPRSSP_estimate = geometry_msgs.msg.Point.Resolve(msg.ZMPRSSP_estimate)
    }
    else {
      resolved.ZMPRSSP_estimate = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPDSP_estimate !== undefined) {
      resolved.ZMPDSP_estimate = geometry_msgs.msg.Point.Resolve(msg.ZMPDSP_estimate)
    }
    else {
      resolved.ZMPDSP_estimate = new geometry_msgs.msg.Point()
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

    if (msg.accelFiltered !== undefined) {
      resolved.accelFiltered = geometry_msgs.msg.Point.Resolve(msg.accelFiltered)
    }
    else {
      resolved.accelFiltered = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPLSSP_accFil !== undefined) {
      resolved.ZMPLSSP_accFil = geometry_msgs.msg.Point.Resolve(msg.ZMPLSSP_accFil)
    }
    else {
      resolved.ZMPLSSP_accFil = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPRSSP_accFil !== undefined) {
      resolved.ZMPRSSP_accFil = geometry_msgs.msg.Point.Resolve(msg.ZMPRSSP_accFil)
    }
    else {
      resolved.ZMPRSSP_accFil = new geometry_msgs.msg.Point()
    }

    if (msg.ZMPDSP_accFil !== undefined) {
      resolved.ZMPDSP_accFil = geometry_msgs.msg.Point.Resolve(msg.ZMPDSP_accFil)
    }
    else {
      resolved.ZMPDSP_accFil = new geometry_msgs.msg.Point()
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

    return resolved;
    }
};

module.exports = DataLog;
