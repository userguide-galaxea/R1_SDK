// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocVelGlobal = require('./LocVelGlobal.js');
let LocVelLocal = require('./LocVelLocal.js');

//-----------------------------------------------------------

class LocVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.velocity_global = null;
      this.velocity_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('velocity_global')) {
        this.velocity_global = initObj.velocity_global
      }
      else {
        this.velocity_global = new LocVelGlobal();
      }
      if (initObj.hasOwnProperty('velocity_local')) {
        this.velocity_local = initObj.velocity_local
      }
      else {
        this.velocity_local = new LocVelLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocVelocity
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [velocity_global]
    bufferOffset = LocVelGlobal.serialize(obj.velocity_global, buffer, bufferOffset);
    // Serialize message field [velocity_local]
    bufferOffset = LocVelLocal.serialize(obj.velocity_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocVelocity
    let len;
    let data = new LocVelocity(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [velocity_global]
    data.velocity_global = LocVelGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_local]
    data.velocity_local = LocVelLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9f526371b70d001d1a3b75d8970bc2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocVelGlobal velocity_global
    LocVelLocal velocity_local
    ================================================================================
    MSG: localization_msg/LocVelGlobal
    float64 ve
    float64 vn
    float64 vu
    ================================================================================
    MSG: localization_msg/LocVelLocal
    float64 vx
    float64 vy
    float64 vz
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocVelocity(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.velocity_global !== undefined) {
      resolved.velocity_global = LocVelGlobal.Resolve(msg.velocity_global)
    }
    else {
      resolved.velocity_global = new LocVelGlobal()
    }

    if (msg.velocity_local !== undefined) {
      resolved.velocity_local = LocVelLocal.Resolve(msg.velocity_local)
    }
    else {
      resolved.velocity_local = new LocVelLocal()
    }

    return resolved;
    }
};

module.exports = LocVelocity;
