// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class AdditionalServoData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltage = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = [];
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdditionalServoData
    // Serialize message field [voltage]
    bufferOffset = _arraySerializer.float32(obj.voltage, buffer, bufferOffset, null);
    // Serialize message field [temperature]
    // Serialize the length for message field [temperature]
    bufferOffset = _serializer.uint32(obj.temperature.length, buffer, bufferOffset);
    obj.temperature.forEach((val) => {
      bufferOffset = sensor_msgs.msg.Temperature.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdditionalServoData
    let len;
    let data = new AdditionalServoData(null);
    // Deserialize message field [voltage]
    data.voltage = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [temperature]
    // Deserialize array length for message field [temperature]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.temperature = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.temperature[i] = sensor_msgs.msg.Temperature.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.voltage.length;
    object.temperature.forEach((val) => {
      length += sensor_msgs.msg.Temperature.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/AdditionalServoData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35c09e22724f03879e9711ba15df9d42';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message provides additional data from the servos, which is not included in JointState.msg
    # Should mainly used for monitoring and debug purposes
    
    # Setting the value to -1 means there is no data from this motor
    float32[] voltage
    sensor_msgs/Temperature[] temperature
    ================================================================================
    MSG: sensor_msgs/Temperature
     # Single temperature reading.
    
     Header header           # timestamp is the time the temperature was measured
                             # frame_id is the location of the temperature reading
    
     float64 temperature     # Measurement of the Temperature in Degrees Celsius
    
     float64 variance        # 0 is interpreted as variance unknown
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdditionalServoData(null);
    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = []
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = new Array(msg.temperature.length);
      for (let i = 0; i < resolved.temperature.length; ++i) {
        resolved.temperature[i] = sensor_msgs.msg.Temperature.Resolve(msg.temperature[i]);
      }
    }
    else {
      resolved.temperature = []
    }

    return resolved;
    }
};

module.exports = AdditionalServoData;
