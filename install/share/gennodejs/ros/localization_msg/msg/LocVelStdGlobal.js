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

class LocVelStdGlobal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.std_ve = null;
      this.std_vn = null;
      this.std_vu = null;
    }
    else {
      if (initObj.hasOwnProperty('std_ve')) {
        this.std_ve = initObj.std_ve
      }
      else {
        this.std_ve = 0.0;
      }
      if (initObj.hasOwnProperty('std_vn')) {
        this.std_vn = initObj.std_vn
      }
      else {
        this.std_vn = 0.0;
      }
      if (initObj.hasOwnProperty('std_vu')) {
        this.std_vu = initObj.std_vu
      }
      else {
        this.std_vu = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocVelStdGlobal
    // Serialize message field [std_ve]
    bufferOffset = _serializer.float64(obj.std_ve, buffer, bufferOffset);
    // Serialize message field [std_vn]
    bufferOffset = _serializer.float64(obj.std_vn, buffer, bufferOffset);
    // Serialize message field [std_vu]
    bufferOffset = _serializer.float64(obj.std_vu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocVelStdGlobal
    let len;
    let data = new LocVelStdGlobal(null);
    // Deserialize message field [std_ve]
    data.std_ve = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_vn]
    data.std_vn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_vu]
    data.std_vu = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocVelStdGlobal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cc88c7fdc6618fe4597135b62a6b9f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 std_ve
    float64 std_vn
    float64 std_vu
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocVelStdGlobal(null);
    if (msg.std_ve !== undefined) {
      resolved.std_ve = msg.std_ve;
    }
    else {
      resolved.std_ve = 0.0
    }

    if (msg.std_vn !== undefined) {
      resolved.std_vn = msg.std_vn;
    }
    else {
      resolved.std_vn = 0.0
    }

    if (msg.std_vu !== undefined) {
      resolved.std_vu = msg.std_vu;
    }
    else {
      resolved.std_vu = 0.0
    }

    return resolved;
    }
};

module.exports = LocVelStdGlobal;
