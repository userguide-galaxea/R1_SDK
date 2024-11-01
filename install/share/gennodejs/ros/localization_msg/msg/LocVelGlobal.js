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

class LocVelGlobal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ve = null;
      this.vn = null;
      this.vu = null;
    }
    else {
      if (initObj.hasOwnProperty('ve')) {
        this.ve = initObj.ve
      }
      else {
        this.ve = 0.0;
      }
      if (initObj.hasOwnProperty('vn')) {
        this.vn = initObj.vn
      }
      else {
        this.vn = 0.0;
      }
      if (initObj.hasOwnProperty('vu')) {
        this.vu = initObj.vu
      }
      else {
        this.vu = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocVelGlobal
    // Serialize message field [ve]
    bufferOffset = _serializer.float64(obj.ve, buffer, bufferOffset);
    // Serialize message field [vn]
    bufferOffset = _serializer.float64(obj.vn, buffer, bufferOffset);
    // Serialize message field [vu]
    bufferOffset = _serializer.float64(obj.vu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocVelGlobal
    let len;
    let data = new LocVelGlobal(null);
    // Deserialize message field [ve]
    data.ve = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vn]
    data.vn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vu]
    data.vu = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocVelGlobal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b16a288a0ff22beae511ece39b20beb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 ve
    float64 vn
    float64 vu
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocVelGlobal(null);
    if (msg.ve !== undefined) {
      resolved.ve = msg.ve;
    }
    else {
      resolved.ve = 0.0
    }

    if (msg.vn !== undefined) {
      resolved.vn = msg.vn;
    }
    else {
      resolved.vn = 0.0
    }

    if (msg.vu !== undefined) {
      resolved.vu = msg.vu;
    }
    else {
      resolved.vu = 0.0
    }

    return resolved;
    }
};

module.exports = LocVelGlobal;
