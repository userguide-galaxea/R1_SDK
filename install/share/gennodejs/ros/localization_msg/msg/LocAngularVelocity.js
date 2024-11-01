// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocAngVelLocal = require('./LocAngVelLocal.js');

//-----------------------------------------------------------

class LocAngularVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.angvelocity_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('angvelocity_local')) {
        this.angvelocity_local = initObj.angvelocity_local
      }
      else {
        this.angvelocity_local = new LocAngVelLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocAngularVelocity
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [angvelocity_local]
    bufferOffset = LocAngVelLocal.serialize(obj.angvelocity_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocAngularVelocity
    let len;
    let data = new LocAngularVelocity(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [angvelocity_local]
    data.angvelocity_local = LocAngVelLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocAngularVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1577f823da62a4c4d63b9b7db50a399c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocAngVelLocal angvelocity_local
    ================================================================================
    MSG: localization_msg/LocAngVelLocal
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
    const resolved = new LocAngularVelocity(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.angvelocity_local !== undefined) {
      resolved.angvelocity_local = LocAngVelLocal.Resolve(msg.angvelocity_local)
    }
    else {
      resolved.angvelocity_local = new LocAngVelLocal()
    }

    return resolved;
    }
};

module.exports = LocAngularVelocity;
