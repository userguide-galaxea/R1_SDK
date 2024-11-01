// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocAccGlobal = require('./LocAccGlobal.js');
let LocAccLocal = require('./LocAccLocal.js');

//-----------------------------------------------------------

class LocAcceleration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.acceleration_global = null;
      this.acceleration_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('acceleration_global')) {
        this.acceleration_global = initObj.acceleration_global
      }
      else {
        this.acceleration_global = new LocAccGlobal();
      }
      if (initObj.hasOwnProperty('acceleration_local')) {
        this.acceleration_local = initObj.acceleration_local
      }
      else {
        this.acceleration_local = new LocAccLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocAcceleration
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [acceleration_global]
    bufferOffset = LocAccGlobal.serialize(obj.acceleration_global, buffer, bufferOffset);
    // Serialize message field [acceleration_local]
    bufferOffset = LocAccLocal.serialize(obj.acceleration_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocAcceleration
    let len;
    let data = new LocAcceleration(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [acceleration_global]
    data.acceleration_global = LocAccGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_local]
    data.acceleration_local = LocAccLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocAcceleration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '724325e8eb34f4183b9fd545647fdfc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocAccGlobal acceleration_global
    LocAccLocal acceleration_local
    ================================================================================
    MSG: localization_msg/LocAccGlobal
    float64 ae
    float64 an
    float64 au
    ================================================================================
    MSG: localization_msg/LocAccLocal
    float64 ax
    float64 ay
    float64 az
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocAcceleration(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.acceleration_global !== undefined) {
      resolved.acceleration_global = LocAccGlobal.Resolve(msg.acceleration_global)
    }
    else {
      resolved.acceleration_global = new LocAccGlobal()
    }

    if (msg.acceleration_local !== undefined) {
      resolved.acceleration_local = LocAccLocal.Resolve(msg.acceleration_local)
    }
    else {
      resolved.acceleration_local = new LocAccLocal()
    }

    return resolved;
    }
};

module.exports = LocAcceleration;
