// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocAccStdGlobal = require('./LocAccStdGlobal.js');
let LocAccStdLocal = require('./LocAccStdLocal.js');

//-----------------------------------------------------------

class LocAccelerationStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.acc_std_global = null;
      this.acc_std_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('acc_std_global')) {
        this.acc_std_global = initObj.acc_std_global
      }
      else {
        this.acc_std_global = new LocAccStdGlobal();
      }
      if (initObj.hasOwnProperty('acc_std_local')) {
        this.acc_std_local = initObj.acc_std_local
      }
      else {
        this.acc_std_local = new LocAccStdLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocAccelerationStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [acc_std_global]
    bufferOffset = LocAccStdGlobal.serialize(obj.acc_std_global, buffer, bufferOffset);
    // Serialize message field [acc_std_local]
    bufferOffset = LocAccStdLocal.serialize(obj.acc_std_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocAccelerationStd
    let len;
    let data = new LocAccelerationStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [acc_std_global]
    data.acc_std_global = LocAccStdGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_std_local]
    data.acc_std_local = LocAccStdLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocAccelerationStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a32c28cbafd6527f52d23800ca583be9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocAccStdGlobal acc_std_global
    LocAccStdLocal acc_std_local
    ================================================================================
    MSG: localization_msg/LocAccStdGlobal
    float64 std_ae
    float64 std_an
    float64 std_au
    ================================================================================
    MSG: localization_msg/LocAccStdLocal
    float64 std_ax
    float64 std_ay
    float64 std_az
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocAccelerationStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.acc_std_global !== undefined) {
      resolved.acc_std_global = LocAccStdGlobal.Resolve(msg.acc_std_global)
    }
    else {
      resolved.acc_std_global = new LocAccStdGlobal()
    }

    if (msg.acc_std_local !== undefined) {
      resolved.acc_std_local = LocAccStdLocal.Resolve(msg.acc_std_local)
    }
    else {
      resolved.acc_std_local = new LocAccStdLocal()
    }

    return resolved;
    }
};

module.exports = LocAccelerationStd;
