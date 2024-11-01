// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocOriStdXyz = require('./LocOriStdXyz.js');

//-----------------------------------------------------------

class LocOrientationStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.ori_std_xyz = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('ori_std_xyz')) {
        this.ori_std_xyz = initObj.ori_std_xyz
      }
      else {
        this.ori_std_xyz = new LocOriStdXyz();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocOrientationStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [ori_std_xyz]
    bufferOffset = LocOriStdXyz.serialize(obj.ori_std_xyz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocOrientationStd
    let len;
    let data = new LocOrientationStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ori_std_xyz]
    data.ori_std_xyz = LocOriStdXyz.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocOrientationStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '619b5d9fe08a8b0c2bbdd05b77fd532a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocOriStdXyz ori_std_xyz
    ================================================================================
    MSG: localization_msg/LocOriStdXyz
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
    const resolved = new LocOrientationStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.ori_std_xyz !== undefined) {
      resolved.ori_std_xyz = LocOriStdXyz.Resolve(msg.ori_std_xyz)
    }
    else {
      resolved.ori_std_xyz = new LocOriStdXyz()
    }

    return resolved;
    }
};

module.exports = LocOrientationStd;
