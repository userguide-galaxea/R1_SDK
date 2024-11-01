// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocPosStdGlobal = require('./LocPosStdGlobal.js');
let LocPosStdLocal = require('./LocPosStdLocal.js');

//-----------------------------------------------------------

class LocPositionStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.pos_std_global = null;
      this.pos_std_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('pos_std_global')) {
        this.pos_std_global = initObj.pos_std_global
      }
      else {
        this.pos_std_global = new LocPosStdGlobal();
      }
      if (initObj.hasOwnProperty('pos_std_local')) {
        this.pos_std_local = initObj.pos_std_local
      }
      else {
        this.pos_std_local = new LocPosStdLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocPositionStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [pos_std_global]
    bufferOffset = LocPosStdGlobal.serialize(obj.pos_std_global, buffer, bufferOffset);
    // Serialize message field [pos_std_local]
    bufferOffset = LocPosStdLocal.serialize(obj.pos_std_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocPositionStd
    let len;
    let data = new LocPositionStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pos_std_global]
    data.pos_std_global = LocPosStdGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_std_local]
    data.pos_std_local = LocPosStdLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocPositionStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa3e734857f8512f8e0771fab07d1903';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocPosStdGlobal pos_std_global
    LocPosStdLocal pos_std_local
    ================================================================================
    MSG: localization_msg/LocPosStdGlobal
    float64 std_pe
    float64 std_pn
    float64 std_pu
    ================================================================================
    MSG: localization_msg/LocPosStdLocal
    float64 std_px
    float64 std_py
    float64 std_pz
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocPositionStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.pos_std_global !== undefined) {
      resolved.pos_std_global = LocPosStdGlobal.Resolve(msg.pos_std_global)
    }
    else {
      resolved.pos_std_global = new LocPosStdGlobal()
    }

    if (msg.pos_std_local !== undefined) {
      resolved.pos_std_local = LocPosStdLocal.Resolve(msg.pos_std_local)
    }
    else {
      resolved.pos_std_local = new LocPosStdLocal()
    }

    return resolved;
    }
};

module.exports = LocPositionStd;
