// Auto-generated. Do not edit!

// (in-package quintic_walk_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WalkingParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.freq = null;
      this.doubleSupportRatio = null;
      this.footDistance = null;
      this.footRise = null;
      this.footPutDownZOffset = null;
      this.footPutDownPhase = null;
      this.footApexPhase = null;
      this.footOvershootRatio = null;
      this.footOvershootPhase = null;
      this.trunkHeight = null;
      this.trunkPitch = null;
      this.trunkPhase = null;
      this.trunkXOffset = null;
      this.trunkYOffset = null;
      this.trunkSwing = null;
      this.trunkPause = null;
      this.trunkXOffsetPCoefForward = null;
      this.trunkXOffsetPCoefTurn = null;
      this.trunkPitchPCoefForward = null;
      this.trunkPitchPCoefTurn = null;
      this.trunkYOnlyInDoubleSupport = null;
      this.XMove = null;
      this.YMove = null;
      this.ZMove = null;
      this.mode = null;
      this.tuning = null;
      this.D_ANKLE_P_qw = null;
      this.D_KNEE_qw = null;
      this.D_HIP_P_qw = null;
      this.KP_P_qw = null;
      this.KD_P_qw = null;
      this.KI_P_qw = null;
      this.ShoulderGain_qw = null;
      this.setpointPitch = null;
      this.pitch_error_tol = null;
      this.KP_X_qw = null;
      this.KD_X_qw = null;
      this.KI_X_qw = null;
      this.Angle_0 = null;
      this.Angle_1 = null;
      this.Angle_2 = null;
      this.Angle_3 = null;
      this.Angle_4 = null;
      this.KD_0 = null;
      this.KD_1 = null;
      this.KD_2 = null;
      this.KD_3 = null;
      this.KD_4 = null;
      this.Gyro_0 = null;
      this.Gyro_1 = null;
      this.Gyro_2 = null;
      this.Gyro_3 = null;
      this.Gyro_4 = null;
      this.KP_0 = null;
      this.KP_1 = null;
      this.KP_2 = null;
      this.KP_3 = null;
      this.KP_4 = null;
    }
    else {
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0.0;
      }
      if (initObj.hasOwnProperty('doubleSupportRatio')) {
        this.doubleSupportRatio = initObj.doubleSupportRatio
      }
      else {
        this.doubleSupportRatio = 0.0;
      }
      if (initObj.hasOwnProperty('footDistance')) {
        this.footDistance = initObj.footDistance
      }
      else {
        this.footDistance = 0.0;
      }
      if (initObj.hasOwnProperty('footRise')) {
        this.footRise = initObj.footRise
      }
      else {
        this.footRise = 0.0;
      }
      if (initObj.hasOwnProperty('footPutDownZOffset')) {
        this.footPutDownZOffset = initObj.footPutDownZOffset
      }
      else {
        this.footPutDownZOffset = 0.0;
      }
      if (initObj.hasOwnProperty('footPutDownPhase')) {
        this.footPutDownPhase = initObj.footPutDownPhase
      }
      else {
        this.footPutDownPhase = 0.0;
      }
      if (initObj.hasOwnProperty('footApexPhase')) {
        this.footApexPhase = initObj.footApexPhase
      }
      else {
        this.footApexPhase = 0.0;
      }
      if (initObj.hasOwnProperty('footOvershootRatio')) {
        this.footOvershootRatio = initObj.footOvershootRatio
      }
      else {
        this.footOvershootRatio = 0.0;
      }
      if (initObj.hasOwnProperty('footOvershootPhase')) {
        this.footOvershootPhase = initObj.footOvershootPhase
      }
      else {
        this.footOvershootPhase = 0.0;
      }
      if (initObj.hasOwnProperty('trunkHeight')) {
        this.trunkHeight = initObj.trunkHeight
      }
      else {
        this.trunkHeight = 0.0;
      }
      if (initObj.hasOwnProperty('trunkPitch')) {
        this.trunkPitch = initObj.trunkPitch
      }
      else {
        this.trunkPitch = 0.0;
      }
      if (initObj.hasOwnProperty('trunkPhase')) {
        this.trunkPhase = initObj.trunkPhase
      }
      else {
        this.trunkPhase = 0.0;
      }
      if (initObj.hasOwnProperty('trunkXOffset')) {
        this.trunkXOffset = initObj.trunkXOffset
      }
      else {
        this.trunkXOffset = 0.0;
      }
      if (initObj.hasOwnProperty('trunkYOffset')) {
        this.trunkYOffset = initObj.trunkYOffset
      }
      else {
        this.trunkYOffset = 0.0;
      }
      if (initObj.hasOwnProperty('trunkSwing')) {
        this.trunkSwing = initObj.trunkSwing
      }
      else {
        this.trunkSwing = 0.0;
      }
      if (initObj.hasOwnProperty('trunkPause')) {
        this.trunkPause = initObj.trunkPause
      }
      else {
        this.trunkPause = 0.0;
      }
      if (initObj.hasOwnProperty('trunkXOffsetPCoefForward')) {
        this.trunkXOffsetPCoefForward = initObj.trunkXOffsetPCoefForward
      }
      else {
        this.trunkXOffsetPCoefForward = 0.0;
      }
      if (initObj.hasOwnProperty('trunkXOffsetPCoefTurn')) {
        this.trunkXOffsetPCoefTurn = initObj.trunkXOffsetPCoefTurn
      }
      else {
        this.trunkXOffsetPCoefTurn = 0.0;
      }
      if (initObj.hasOwnProperty('trunkPitchPCoefForward')) {
        this.trunkPitchPCoefForward = initObj.trunkPitchPCoefForward
      }
      else {
        this.trunkPitchPCoefForward = 0.0;
      }
      if (initObj.hasOwnProperty('trunkPitchPCoefTurn')) {
        this.trunkPitchPCoefTurn = initObj.trunkPitchPCoefTurn
      }
      else {
        this.trunkPitchPCoefTurn = 0.0;
      }
      if (initObj.hasOwnProperty('trunkYOnlyInDoubleSupport')) {
        this.trunkYOnlyInDoubleSupport = initObj.trunkYOnlyInDoubleSupport
      }
      else {
        this.trunkYOnlyInDoubleSupport = false;
      }
      if (initObj.hasOwnProperty('XMove')) {
        this.XMove = initObj.XMove
      }
      else {
        this.XMove = 0.0;
      }
      if (initObj.hasOwnProperty('YMove')) {
        this.YMove = initObj.YMove
      }
      else {
        this.YMove = 0.0;
      }
      if (initObj.hasOwnProperty('ZMove')) {
        this.ZMove = initObj.ZMove
      }
      else {
        this.ZMove = 0.0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('tuning')) {
        this.tuning = initObj.tuning
      }
      else {
        this.tuning = false;
      }
      if (initObj.hasOwnProperty('D_ANKLE_P_qw')) {
        this.D_ANKLE_P_qw = initObj.D_ANKLE_P_qw
      }
      else {
        this.D_ANKLE_P_qw = 0.0;
      }
      if (initObj.hasOwnProperty('D_KNEE_qw')) {
        this.D_KNEE_qw = initObj.D_KNEE_qw
      }
      else {
        this.D_KNEE_qw = 0.0;
      }
      if (initObj.hasOwnProperty('D_HIP_P_qw')) {
        this.D_HIP_P_qw = initObj.D_HIP_P_qw
      }
      else {
        this.D_HIP_P_qw = 0.0;
      }
      if (initObj.hasOwnProperty('KP_P_qw')) {
        this.KP_P_qw = initObj.KP_P_qw
      }
      else {
        this.KP_P_qw = 0.0;
      }
      if (initObj.hasOwnProperty('KD_P_qw')) {
        this.KD_P_qw = initObj.KD_P_qw
      }
      else {
        this.KD_P_qw = 0.0;
      }
      if (initObj.hasOwnProperty('KI_P_qw')) {
        this.KI_P_qw = initObj.KI_P_qw
      }
      else {
        this.KI_P_qw = 0.0;
      }
      if (initObj.hasOwnProperty('ShoulderGain_qw')) {
        this.ShoulderGain_qw = initObj.ShoulderGain_qw
      }
      else {
        this.ShoulderGain_qw = 0.0;
      }
      if (initObj.hasOwnProperty('setpointPitch')) {
        this.setpointPitch = initObj.setpointPitch
      }
      else {
        this.setpointPitch = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_error_tol')) {
        this.pitch_error_tol = initObj.pitch_error_tol
      }
      else {
        this.pitch_error_tol = 0.0;
      }
      if (initObj.hasOwnProperty('KP_X_qw')) {
        this.KP_X_qw = initObj.KP_X_qw
      }
      else {
        this.KP_X_qw = 0.0;
      }
      if (initObj.hasOwnProperty('KD_X_qw')) {
        this.KD_X_qw = initObj.KD_X_qw
      }
      else {
        this.KD_X_qw = 0.0;
      }
      if (initObj.hasOwnProperty('KI_X_qw')) {
        this.KI_X_qw = initObj.KI_X_qw
      }
      else {
        this.KI_X_qw = 0.0;
      }
      if (initObj.hasOwnProperty('Angle_0')) {
        this.Angle_0 = initObj.Angle_0
      }
      else {
        this.Angle_0 = 0.0;
      }
      if (initObj.hasOwnProperty('Angle_1')) {
        this.Angle_1 = initObj.Angle_1
      }
      else {
        this.Angle_1 = 0.0;
      }
      if (initObj.hasOwnProperty('Angle_2')) {
        this.Angle_2 = initObj.Angle_2
      }
      else {
        this.Angle_2 = 0.0;
      }
      if (initObj.hasOwnProperty('Angle_3')) {
        this.Angle_3 = initObj.Angle_3
      }
      else {
        this.Angle_3 = 0.0;
      }
      if (initObj.hasOwnProperty('Angle_4')) {
        this.Angle_4 = initObj.Angle_4
      }
      else {
        this.Angle_4 = 0.0;
      }
      if (initObj.hasOwnProperty('KD_0')) {
        this.KD_0 = initObj.KD_0
      }
      else {
        this.KD_0 = 0.0;
      }
      if (initObj.hasOwnProperty('KD_1')) {
        this.KD_1 = initObj.KD_1
      }
      else {
        this.KD_1 = 0.0;
      }
      if (initObj.hasOwnProperty('KD_2')) {
        this.KD_2 = initObj.KD_2
      }
      else {
        this.KD_2 = 0.0;
      }
      if (initObj.hasOwnProperty('KD_3')) {
        this.KD_3 = initObj.KD_3
      }
      else {
        this.KD_3 = 0.0;
      }
      if (initObj.hasOwnProperty('KD_4')) {
        this.KD_4 = initObj.KD_4
      }
      else {
        this.KD_4 = 0.0;
      }
      if (initObj.hasOwnProperty('Gyro_0')) {
        this.Gyro_0 = initObj.Gyro_0
      }
      else {
        this.Gyro_0 = 0.0;
      }
      if (initObj.hasOwnProperty('Gyro_1')) {
        this.Gyro_1 = initObj.Gyro_1
      }
      else {
        this.Gyro_1 = 0.0;
      }
      if (initObj.hasOwnProperty('Gyro_2')) {
        this.Gyro_2 = initObj.Gyro_2
      }
      else {
        this.Gyro_2 = 0.0;
      }
      if (initObj.hasOwnProperty('Gyro_3')) {
        this.Gyro_3 = initObj.Gyro_3
      }
      else {
        this.Gyro_3 = 0.0;
      }
      if (initObj.hasOwnProperty('Gyro_4')) {
        this.Gyro_4 = initObj.Gyro_4
      }
      else {
        this.Gyro_4 = 0.0;
      }
      if (initObj.hasOwnProperty('KP_0')) {
        this.KP_0 = initObj.KP_0
      }
      else {
        this.KP_0 = 0.0;
      }
      if (initObj.hasOwnProperty('KP_1')) {
        this.KP_1 = initObj.KP_1
      }
      else {
        this.KP_1 = 0.0;
      }
      if (initObj.hasOwnProperty('KP_2')) {
        this.KP_2 = initObj.KP_2
      }
      else {
        this.KP_2 = 0.0;
      }
      if (initObj.hasOwnProperty('KP_3')) {
        this.KP_3 = initObj.KP_3
      }
      else {
        this.KP_3 = 0.0;
      }
      if (initObj.hasOwnProperty('KP_4')) {
        this.KP_4 = initObj.KP_4
      }
      else {
        this.KP_4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WalkingParam
    // Serialize message field [freq]
    bufferOffset = _serializer.float32(obj.freq, buffer, bufferOffset);
    // Serialize message field [doubleSupportRatio]
    bufferOffset = _serializer.float32(obj.doubleSupportRatio, buffer, bufferOffset);
    // Serialize message field [footDistance]
    bufferOffset = _serializer.float32(obj.footDistance, buffer, bufferOffset);
    // Serialize message field [footRise]
    bufferOffset = _serializer.float32(obj.footRise, buffer, bufferOffset);
    // Serialize message field [footPutDownZOffset]
    bufferOffset = _serializer.float32(obj.footPutDownZOffset, buffer, bufferOffset);
    // Serialize message field [footPutDownPhase]
    bufferOffset = _serializer.float32(obj.footPutDownPhase, buffer, bufferOffset);
    // Serialize message field [footApexPhase]
    bufferOffset = _serializer.float32(obj.footApexPhase, buffer, bufferOffset);
    // Serialize message field [footOvershootRatio]
    bufferOffset = _serializer.float32(obj.footOvershootRatio, buffer, bufferOffset);
    // Serialize message field [footOvershootPhase]
    bufferOffset = _serializer.float32(obj.footOvershootPhase, buffer, bufferOffset);
    // Serialize message field [trunkHeight]
    bufferOffset = _serializer.float32(obj.trunkHeight, buffer, bufferOffset);
    // Serialize message field [trunkPitch]
    bufferOffset = _serializer.float32(obj.trunkPitch, buffer, bufferOffset);
    // Serialize message field [trunkPhase]
    bufferOffset = _serializer.float32(obj.trunkPhase, buffer, bufferOffset);
    // Serialize message field [trunkXOffset]
    bufferOffset = _serializer.float32(obj.trunkXOffset, buffer, bufferOffset);
    // Serialize message field [trunkYOffset]
    bufferOffset = _serializer.float32(obj.trunkYOffset, buffer, bufferOffset);
    // Serialize message field [trunkSwing]
    bufferOffset = _serializer.float32(obj.trunkSwing, buffer, bufferOffset);
    // Serialize message field [trunkPause]
    bufferOffset = _serializer.float32(obj.trunkPause, buffer, bufferOffset);
    // Serialize message field [trunkXOffsetPCoefForward]
    bufferOffset = _serializer.float32(obj.trunkXOffsetPCoefForward, buffer, bufferOffset);
    // Serialize message field [trunkXOffsetPCoefTurn]
    bufferOffset = _serializer.float32(obj.trunkXOffsetPCoefTurn, buffer, bufferOffset);
    // Serialize message field [trunkPitchPCoefForward]
    bufferOffset = _serializer.float32(obj.trunkPitchPCoefForward, buffer, bufferOffset);
    // Serialize message field [trunkPitchPCoefTurn]
    bufferOffset = _serializer.float32(obj.trunkPitchPCoefTurn, buffer, bufferOffset);
    // Serialize message field [trunkYOnlyInDoubleSupport]
    bufferOffset = _serializer.bool(obj.trunkYOnlyInDoubleSupport, buffer, bufferOffset);
    // Serialize message field [XMove]
    bufferOffset = _serializer.float32(obj.XMove, buffer, bufferOffset);
    // Serialize message field [YMove]
    bufferOffset = _serializer.float32(obj.YMove, buffer, bufferOffset);
    // Serialize message field [ZMove]
    bufferOffset = _serializer.float32(obj.ZMove, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [tuning]
    bufferOffset = _serializer.bool(obj.tuning, buffer, bufferOffset);
    // Serialize message field [D_ANKLE_P_qw]
    bufferOffset = _serializer.float32(obj.D_ANKLE_P_qw, buffer, bufferOffset);
    // Serialize message field [D_KNEE_qw]
    bufferOffset = _serializer.float32(obj.D_KNEE_qw, buffer, bufferOffset);
    // Serialize message field [D_HIP_P_qw]
    bufferOffset = _serializer.float32(obj.D_HIP_P_qw, buffer, bufferOffset);
    // Serialize message field [KP_P_qw]
    bufferOffset = _serializer.float32(obj.KP_P_qw, buffer, bufferOffset);
    // Serialize message field [KD_P_qw]
    bufferOffset = _serializer.float32(obj.KD_P_qw, buffer, bufferOffset);
    // Serialize message field [KI_P_qw]
    bufferOffset = _serializer.float32(obj.KI_P_qw, buffer, bufferOffset);
    // Serialize message field [ShoulderGain_qw]
    bufferOffset = _serializer.float32(obj.ShoulderGain_qw, buffer, bufferOffset);
    // Serialize message field [setpointPitch]
    bufferOffset = _serializer.float32(obj.setpointPitch, buffer, bufferOffset);
    // Serialize message field [pitch_error_tol]
    bufferOffset = _serializer.float32(obj.pitch_error_tol, buffer, bufferOffset);
    // Serialize message field [KP_X_qw]
    bufferOffset = _serializer.float32(obj.KP_X_qw, buffer, bufferOffset);
    // Serialize message field [KD_X_qw]
    bufferOffset = _serializer.float32(obj.KD_X_qw, buffer, bufferOffset);
    // Serialize message field [KI_X_qw]
    bufferOffset = _serializer.float32(obj.KI_X_qw, buffer, bufferOffset);
    // Serialize message field [Angle_0]
    bufferOffset = _serializer.float32(obj.Angle_0, buffer, bufferOffset);
    // Serialize message field [Angle_1]
    bufferOffset = _serializer.float32(obj.Angle_1, buffer, bufferOffset);
    // Serialize message field [Angle_2]
    bufferOffset = _serializer.float32(obj.Angle_2, buffer, bufferOffset);
    // Serialize message field [Angle_3]
    bufferOffset = _serializer.float32(obj.Angle_3, buffer, bufferOffset);
    // Serialize message field [Angle_4]
    bufferOffset = _serializer.float32(obj.Angle_4, buffer, bufferOffset);
    // Serialize message field [KD_0]
    bufferOffset = _serializer.float32(obj.KD_0, buffer, bufferOffset);
    // Serialize message field [KD_1]
    bufferOffset = _serializer.float32(obj.KD_1, buffer, bufferOffset);
    // Serialize message field [KD_2]
    bufferOffset = _serializer.float32(obj.KD_2, buffer, bufferOffset);
    // Serialize message field [KD_3]
    bufferOffset = _serializer.float32(obj.KD_3, buffer, bufferOffset);
    // Serialize message field [KD_4]
    bufferOffset = _serializer.float32(obj.KD_4, buffer, bufferOffset);
    // Serialize message field [Gyro_0]
    bufferOffset = _serializer.float32(obj.Gyro_0, buffer, bufferOffset);
    // Serialize message field [Gyro_1]
    bufferOffset = _serializer.float32(obj.Gyro_1, buffer, bufferOffset);
    // Serialize message field [Gyro_2]
    bufferOffset = _serializer.float32(obj.Gyro_2, buffer, bufferOffset);
    // Serialize message field [Gyro_3]
    bufferOffset = _serializer.float32(obj.Gyro_3, buffer, bufferOffset);
    // Serialize message field [Gyro_4]
    bufferOffset = _serializer.float32(obj.Gyro_4, buffer, bufferOffset);
    // Serialize message field [KP_0]
    bufferOffset = _serializer.float32(obj.KP_0, buffer, bufferOffset);
    // Serialize message field [KP_1]
    bufferOffset = _serializer.float32(obj.KP_1, buffer, bufferOffset);
    // Serialize message field [KP_2]
    bufferOffset = _serializer.float32(obj.KP_2, buffer, bufferOffset);
    // Serialize message field [KP_3]
    bufferOffset = _serializer.float32(obj.KP_3, buffer, bufferOffset);
    // Serialize message field [KP_4]
    bufferOffset = _serializer.float32(obj.KP_4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WalkingParam
    let len;
    let data = new WalkingParam(null);
    // Deserialize message field [freq]
    data.freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [doubleSupportRatio]
    data.doubleSupportRatio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [footDistance]
    data.footDistance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [footRise]
    data.footRise = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [footPutDownZOffset]
    data.footPutDownZOffset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [footPutDownPhase]
    data.footPutDownPhase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [footApexPhase]
    data.footApexPhase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [footOvershootRatio]
    data.footOvershootRatio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [footOvershootPhase]
    data.footOvershootPhase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkHeight]
    data.trunkHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkPitch]
    data.trunkPitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkPhase]
    data.trunkPhase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkXOffset]
    data.trunkXOffset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkYOffset]
    data.trunkYOffset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkSwing]
    data.trunkSwing = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkPause]
    data.trunkPause = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkXOffsetPCoefForward]
    data.trunkXOffsetPCoefForward = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkXOffsetPCoefTurn]
    data.trunkXOffsetPCoefTurn = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkPitchPCoefForward]
    data.trunkPitchPCoefForward = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkPitchPCoefTurn]
    data.trunkPitchPCoefTurn = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trunkYOnlyInDoubleSupport]
    data.trunkYOnlyInDoubleSupport = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [XMove]
    data.XMove = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [YMove]
    data.YMove = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ZMove]
    data.ZMove = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tuning]
    data.tuning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [D_ANKLE_P_qw]
    data.D_ANKLE_P_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [D_KNEE_qw]
    data.D_KNEE_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [D_HIP_P_qw]
    data.D_HIP_P_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_P_qw]
    data.KP_P_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_P_qw]
    data.KD_P_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KI_P_qw]
    data.KI_P_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ShoulderGain_qw]
    data.ShoulderGain_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [setpointPitch]
    data.setpointPitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_error_tol]
    data.pitch_error_tol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_X_qw]
    data.KP_X_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_X_qw]
    data.KD_X_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KI_X_qw]
    data.KI_X_qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Angle_0]
    data.Angle_0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Angle_1]
    data.Angle_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Angle_2]
    data.Angle_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Angle_3]
    data.Angle_3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Angle_4]
    data.Angle_4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_0]
    data.KD_0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_1]
    data.KD_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_2]
    data.KD_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_3]
    data.KD_3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KD_4]
    data.KD_4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gyro_0]
    data.Gyro_0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gyro_1]
    data.Gyro_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gyro_2]
    data.Gyro_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gyro_3]
    data.Gyro_3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gyro_4]
    data.Gyro_4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_0]
    data.KP_0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_1]
    data.KP_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_2]
    data.KP_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_3]
    data.KP_3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [KP_4]
    data.KP_4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    return length + 226;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quintic_walk_msgs/WalkingParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f884ae298d19a76dad330f2c4daca90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WalkingParam(null);
    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0.0
    }

    if (msg.doubleSupportRatio !== undefined) {
      resolved.doubleSupportRatio = msg.doubleSupportRatio;
    }
    else {
      resolved.doubleSupportRatio = 0.0
    }

    if (msg.footDistance !== undefined) {
      resolved.footDistance = msg.footDistance;
    }
    else {
      resolved.footDistance = 0.0
    }

    if (msg.footRise !== undefined) {
      resolved.footRise = msg.footRise;
    }
    else {
      resolved.footRise = 0.0
    }

    if (msg.footPutDownZOffset !== undefined) {
      resolved.footPutDownZOffset = msg.footPutDownZOffset;
    }
    else {
      resolved.footPutDownZOffset = 0.0
    }

    if (msg.footPutDownPhase !== undefined) {
      resolved.footPutDownPhase = msg.footPutDownPhase;
    }
    else {
      resolved.footPutDownPhase = 0.0
    }

    if (msg.footApexPhase !== undefined) {
      resolved.footApexPhase = msg.footApexPhase;
    }
    else {
      resolved.footApexPhase = 0.0
    }

    if (msg.footOvershootRatio !== undefined) {
      resolved.footOvershootRatio = msg.footOvershootRatio;
    }
    else {
      resolved.footOvershootRatio = 0.0
    }

    if (msg.footOvershootPhase !== undefined) {
      resolved.footOvershootPhase = msg.footOvershootPhase;
    }
    else {
      resolved.footOvershootPhase = 0.0
    }

    if (msg.trunkHeight !== undefined) {
      resolved.trunkHeight = msg.trunkHeight;
    }
    else {
      resolved.trunkHeight = 0.0
    }

    if (msg.trunkPitch !== undefined) {
      resolved.trunkPitch = msg.trunkPitch;
    }
    else {
      resolved.trunkPitch = 0.0
    }

    if (msg.trunkPhase !== undefined) {
      resolved.trunkPhase = msg.trunkPhase;
    }
    else {
      resolved.trunkPhase = 0.0
    }

    if (msg.trunkXOffset !== undefined) {
      resolved.trunkXOffset = msg.trunkXOffset;
    }
    else {
      resolved.trunkXOffset = 0.0
    }

    if (msg.trunkYOffset !== undefined) {
      resolved.trunkYOffset = msg.trunkYOffset;
    }
    else {
      resolved.trunkYOffset = 0.0
    }

    if (msg.trunkSwing !== undefined) {
      resolved.trunkSwing = msg.trunkSwing;
    }
    else {
      resolved.trunkSwing = 0.0
    }

    if (msg.trunkPause !== undefined) {
      resolved.trunkPause = msg.trunkPause;
    }
    else {
      resolved.trunkPause = 0.0
    }

    if (msg.trunkXOffsetPCoefForward !== undefined) {
      resolved.trunkXOffsetPCoefForward = msg.trunkXOffsetPCoefForward;
    }
    else {
      resolved.trunkXOffsetPCoefForward = 0.0
    }

    if (msg.trunkXOffsetPCoefTurn !== undefined) {
      resolved.trunkXOffsetPCoefTurn = msg.trunkXOffsetPCoefTurn;
    }
    else {
      resolved.trunkXOffsetPCoefTurn = 0.0
    }

    if (msg.trunkPitchPCoefForward !== undefined) {
      resolved.trunkPitchPCoefForward = msg.trunkPitchPCoefForward;
    }
    else {
      resolved.trunkPitchPCoefForward = 0.0
    }

    if (msg.trunkPitchPCoefTurn !== undefined) {
      resolved.trunkPitchPCoefTurn = msg.trunkPitchPCoefTurn;
    }
    else {
      resolved.trunkPitchPCoefTurn = 0.0
    }

    if (msg.trunkYOnlyInDoubleSupport !== undefined) {
      resolved.trunkYOnlyInDoubleSupport = msg.trunkYOnlyInDoubleSupport;
    }
    else {
      resolved.trunkYOnlyInDoubleSupport = false
    }

    if (msg.XMove !== undefined) {
      resolved.XMove = msg.XMove;
    }
    else {
      resolved.XMove = 0.0
    }

    if (msg.YMove !== undefined) {
      resolved.YMove = msg.YMove;
    }
    else {
      resolved.YMove = 0.0
    }

    if (msg.ZMove !== undefined) {
      resolved.ZMove = msg.ZMove;
    }
    else {
      resolved.ZMove = 0.0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.tuning !== undefined) {
      resolved.tuning = msg.tuning;
    }
    else {
      resolved.tuning = false
    }

    if (msg.D_ANKLE_P_qw !== undefined) {
      resolved.D_ANKLE_P_qw = msg.D_ANKLE_P_qw;
    }
    else {
      resolved.D_ANKLE_P_qw = 0.0
    }

    if (msg.D_KNEE_qw !== undefined) {
      resolved.D_KNEE_qw = msg.D_KNEE_qw;
    }
    else {
      resolved.D_KNEE_qw = 0.0
    }

    if (msg.D_HIP_P_qw !== undefined) {
      resolved.D_HIP_P_qw = msg.D_HIP_P_qw;
    }
    else {
      resolved.D_HIP_P_qw = 0.0
    }

    if (msg.KP_P_qw !== undefined) {
      resolved.KP_P_qw = msg.KP_P_qw;
    }
    else {
      resolved.KP_P_qw = 0.0
    }

    if (msg.KD_P_qw !== undefined) {
      resolved.KD_P_qw = msg.KD_P_qw;
    }
    else {
      resolved.KD_P_qw = 0.0
    }

    if (msg.KI_P_qw !== undefined) {
      resolved.KI_P_qw = msg.KI_P_qw;
    }
    else {
      resolved.KI_P_qw = 0.0
    }

    if (msg.ShoulderGain_qw !== undefined) {
      resolved.ShoulderGain_qw = msg.ShoulderGain_qw;
    }
    else {
      resolved.ShoulderGain_qw = 0.0
    }

    if (msg.setpointPitch !== undefined) {
      resolved.setpointPitch = msg.setpointPitch;
    }
    else {
      resolved.setpointPitch = 0.0
    }

    if (msg.pitch_error_tol !== undefined) {
      resolved.pitch_error_tol = msg.pitch_error_tol;
    }
    else {
      resolved.pitch_error_tol = 0.0
    }

    if (msg.KP_X_qw !== undefined) {
      resolved.KP_X_qw = msg.KP_X_qw;
    }
    else {
      resolved.KP_X_qw = 0.0
    }

    if (msg.KD_X_qw !== undefined) {
      resolved.KD_X_qw = msg.KD_X_qw;
    }
    else {
      resolved.KD_X_qw = 0.0
    }

    if (msg.KI_X_qw !== undefined) {
      resolved.KI_X_qw = msg.KI_X_qw;
    }
    else {
      resolved.KI_X_qw = 0.0
    }

    if (msg.Angle_0 !== undefined) {
      resolved.Angle_0 = msg.Angle_0;
    }
    else {
      resolved.Angle_0 = 0.0
    }

    if (msg.Angle_1 !== undefined) {
      resolved.Angle_1 = msg.Angle_1;
    }
    else {
      resolved.Angle_1 = 0.0
    }

    if (msg.Angle_2 !== undefined) {
      resolved.Angle_2 = msg.Angle_2;
    }
    else {
      resolved.Angle_2 = 0.0
    }

    if (msg.Angle_3 !== undefined) {
      resolved.Angle_3 = msg.Angle_3;
    }
    else {
      resolved.Angle_3 = 0.0
    }

    if (msg.Angle_4 !== undefined) {
      resolved.Angle_4 = msg.Angle_4;
    }
    else {
      resolved.Angle_4 = 0.0
    }

    if (msg.KD_0 !== undefined) {
      resolved.KD_0 = msg.KD_0;
    }
    else {
      resolved.KD_0 = 0.0
    }

    if (msg.KD_1 !== undefined) {
      resolved.KD_1 = msg.KD_1;
    }
    else {
      resolved.KD_1 = 0.0
    }

    if (msg.KD_2 !== undefined) {
      resolved.KD_2 = msg.KD_2;
    }
    else {
      resolved.KD_2 = 0.0
    }

    if (msg.KD_3 !== undefined) {
      resolved.KD_3 = msg.KD_3;
    }
    else {
      resolved.KD_3 = 0.0
    }

    if (msg.KD_4 !== undefined) {
      resolved.KD_4 = msg.KD_4;
    }
    else {
      resolved.KD_4 = 0.0
    }

    if (msg.Gyro_0 !== undefined) {
      resolved.Gyro_0 = msg.Gyro_0;
    }
    else {
      resolved.Gyro_0 = 0.0
    }

    if (msg.Gyro_1 !== undefined) {
      resolved.Gyro_1 = msg.Gyro_1;
    }
    else {
      resolved.Gyro_1 = 0.0
    }

    if (msg.Gyro_2 !== undefined) {
      resolved.Gyro_2 = msg.Gyro_2;
    }
    else {
      resolved.Gyro_2 = 0.0
    }

    if (msg.Gyro_3 !== undefined) {
      resolved.Gyro_3 = msg.Gyro_3;
    }
    else {
      resolved.Gyro_3 = 0.0
    }

    if (msg.Gyro_4 !== undefined) {
      resolved.Gyro_4 = msg.Gyro_4;
    }
    else {
      resolved.Gyro_4 = 0.0
    }

    if (msg.KP_0 !== undefined) {
      resolved.KP_0 = msg.KP_0;
    }
    else {
      resolved.KP_0 = 0.0
    }

    if (msg.KP_1 !== undefined) {
      resolved.KP_1 = msg.KP_1;
    }
    else {
      resolved.KP_1 = 0.0
    }

    if (msg.KP_2 !== undefined) {
      resolved.KP_2 = msg.KP_2;
    }
    else {
      resolved.KP_2 = 0.0
    }

    if (msg.KP_3 !== undefined) {
      resolved.KP_3 = msg.KP_3;
    }
    else {
      resolved.KP_3 = 0.0
    }

    if (msg.KP_4 !== undefined) {
      resolved.KP_4 = msg.KP_4;
    }
    else {
      resolved.KP_4 = 0.0
    }

    return resolved;
    }
};

module.exports = WalkingParam;
