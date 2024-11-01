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

class LocVelLocal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vx = null;
      this.vy = null;
      this.vz = null;
    }
    else {
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocVelLocal
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float64(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.float64(obj.vz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocVelLocal
    let len;
    let data = new LocVelLocal(null);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocVelLocal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffb367ff390f5e01cb55c0c75927c19a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LocVelLocal(null);
    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0.0
    }

    return resolved;
    }
};

module.exports = LocVelLocal;
