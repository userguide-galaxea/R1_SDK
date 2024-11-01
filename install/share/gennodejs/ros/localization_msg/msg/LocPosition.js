// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocPosGlobal = require('./LocPosGlobal.js');
let LocPosLocal = require('./LocPosLocal.js');

//-----------------------------------------------------------

class LocPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.position_global = null;
      this.position_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('position_global')) {
        this.position_global = initObj.position_global
      }
      else {
        this.position_global = new LocPosGlobal();
      }
      if (initObj.hasOwnProperty('position_local')) {
        this.position_local = initObj.position_local
      }
      else {
        this.position_local = new LocPosLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocPosition
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [position_global]
    bufferOffset = LocPosGlobal.serialize(obj.position_global, buffer, bufferOffset);
    // Serialize message field [position_local]
    bufferOffset = LocPosLocal.serialize(obj.position_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocPosition
    let len;
    let data = new LocPosition(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position_global]
    data.position_global = LocPosGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_local]
    data.position_local = LocPosLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50805a3c03e9264464f9b0b6c37b9360';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocPosGlobal position_global
    LocPosLocal position_local
    ================================================================================
    MSG: localization_msg/LocPosGlobal
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: localization_msg/LocPosLocal
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocPosition(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.position_global !== undefined) {
      resolved.position_global = LocPosGlobal.Resolve(msg.position_global)
    }
    else {
      resolved.position_global = new LocPosGlobal()
    }

    if (msg.position_local !== undefined) {
      resolved.position_local = LocPosLocal.Resolve(msg.position_local)
    }
    else {
      resolved.position_local = new LocPosLocal()
    }

    return resolved;
    }
};

module.exports = LocPosition;
