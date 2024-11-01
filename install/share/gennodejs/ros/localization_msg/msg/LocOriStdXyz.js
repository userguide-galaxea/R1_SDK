// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LocOriStdXyz {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.std_faix = null;
      this.std_faiy = null;
      this.std_faiz = null;
    }
    else {
      if (initObj.hasOwnProperty('std_faix')) {
        this.std_faix = initObj.std_faix
      }
      else {
        this.std_faix = 0.0;
      }
      if (initObj.hasOwnProperty('std_faiy')) {
        this.std_faiy = initObj.std_faiy
      }
      else {
        this.std_faiy = 0.0;
      }
      if (initObj.hasOwnProperty('std_faiz')) {
        this.std_faiz = initObj.std_faiz
      }
      else {
        this.std_faiz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocOriStdXyz
    // Serialize message field [std_faix]
    bufferOffset = _serializer.float64(obj.std_faix, buffer, bufferOffset);
    // Serialize message field [std_faiy]
    bufferOffset = _serializer.float64(obj.std_faiy, buffer, bufferOffset);
    // Serialize message field [std_faiz]
    bufferOffset = _serializer.float64(obj.std_faiz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocOriStdXyz
    let len;
    let data = new LocOriStdXyz(null);
    // Deserialize message field [std_faix]
    data.std_faix = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_faiy]
    data.std_faiy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_faiz]
    data.std_faiz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocOriStdXyz';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4321d049e56b7aec6a5970a3463d66bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 std_faix
    float64 std_faiy
    float64 std_faiz
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocOriStdXyz(null);
    if (msg.std_faix !== undefined) {
      resolved.std_faix = msg.std_faix;
    }
    else {
      resolved.std_faix = 0.0
    }

    if (msg.std_faiy !== undefined) {
      resolved.std_faiy = msg.std_faiy;
    }
    else {
      resolved.std_faiy = 0.0
    }

    if (msg.std_faiz !== undefined) {
      resolved.std_faiz = msg.std_faiz;
    }
    else {
      resolved.std_faiz = 0.0
    }

    return resolved;
    }
};

module.exports = LocOriStdXyz;
