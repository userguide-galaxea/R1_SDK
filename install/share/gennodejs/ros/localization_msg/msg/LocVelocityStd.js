// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocVelStdGlobal = require('./LocVelStdGlobal.js');
let LocVelStdLocal = require('./LocVelStdLocal.js');

//-----------------------------------------------------------

class LocVelocityStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.vel_std_global = null;
      this.vel_std_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('vel_std_global')) {
        this.vel_std_global = initObj.vel_std_global
      }
      else {
        this.vel_std_global = new LocVelStdGlobal();
      }
      if (initObj.hasOwnProperty('vel_std_local')) {
        this.vel_std_local = initObj.vel_std_local
      }
      else {
        this.vel_std_local = new LocVelStdLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocVelocityStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [vel_std_global]
    bufferOffset = LocVelStdGlobal.serialize(obj.vel_std_global, buffer, bufferOffset);
    // Serialize message field [vel_std_local]
    bufferOffset = LocVelStdLocal.serialize(obj.vel_std_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocVelocityStd
    let len;
    let data = new LocVelocityStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vel_std_global]
    data.vel_std_global = LocVelStdGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_std_local]
    data.vel_std_local = LocVelStdLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocVelocityStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cac559756cac35741cd7fe8bc8eb1ef3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocVelStdGlobal vel_std_global
    LocVelStdLocal vel_std_local
    ================================================================================
    MSG: localization_msg/LocVelStdGlobal
    float64 std_ve
    float64 std_vn
    float64 std_vu
    ================================================================================
    MSG: localization_msg/LocVelStdLocal
    float64 std_vx
    float64 std_vy
    float64 std_vz
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocVelocityStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.vel_std_global !== undefined) {
      resolved.vel_std_global = LocVelStdGlobal.Resolve(msg.vel_std_global)
    }
    else {
      resolved.vel_std_global = new LocVelStdGlobal()
    }

    if (msg.vel_std_local !== undefined) {
      resolved.vel_std_local = LocVelStdLocal.Resolve(msg.vel_std_local)
    }
    else {
      resolved.vel_std_local = new LocVelStdLocal()
    }

    return resolved;
    }
};

module.exports = LocVelocityStd;
