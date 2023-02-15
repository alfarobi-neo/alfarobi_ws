// Auto-generated. Do not edit!

// (in-package humanoid_league_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Speak {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.priority = null;
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Speak
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.uint8(obj.priority, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Speak
    let len;
    let data = new Speak(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    length += object.filename.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'humanoid_league_msgs/Speak';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f360f3d1d1c01a5c835f4716354e4c26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used to activate the audio output of the robot
    # This can be used for debug proposed but also for natural language team communication
    
    # The text will only be outputed if "filename" is empty
    string text
    
    uint8 LOW_PRIORITY=0
    uint8 MID_PRIORITY=1
    uint8 HIGH_PRIORITY=2
    uint8 priority
    
    # If a file should be read, the path has to be specified here. Otherwise this string should be null
    string filename
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Speak(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    return resolved;
    }
};

// Constants for message
Speak.Constants = {
  LOW_PRIORITY: 0,
  MID_PRIORITY: 1,
  HIGH_PRIORITY: 2,
}

module.exports = Speak;
