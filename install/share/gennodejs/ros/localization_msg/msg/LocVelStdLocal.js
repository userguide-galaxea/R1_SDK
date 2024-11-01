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

class LocVelStdLocal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.std_vx = null;
      this.std_vy = null;
      this.std_vz = null;
    }
    else {
      if (initObj.hasOwnProperty('std_vx')) {
        this.std_vx = initObj.std_vx
      }
      else {
        this.std_vx = 0.0;
      }
      if (initObj.hasOwnProperty('std_vy')) {
        this.std_vy = initObj.std_vy
      }
      else {
        this.std_vy = 0.0;
      }
      if (initObj.hasOwnProperty('std_vz')) {
        this.std_vz = initObj.std_vz
      }
      else {
        this.std_vz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocVelStdLocal
    // Serialize message field [std_vx]
    bufferOffset = _serializer.float64(obj.std_vx, buffer, bufferOffset);
    // Serialize message field [std_vy]
    bufferOffset = _serializer.float64(obj.std_vy, buffer, bufferOffset);
    // Serialize message field [std_vz]
    bufferOffset = _serializer.float64(obj.std_vz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocVelStdLocal
    let len;
    let data = new LocVelStdLocal(null);
    // Deserialize message field [std_vx]
    data.std_vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_vy]
    data.std_vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_vz]
    data.std_vz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocVelStdLocal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '714b0488d1b05ea8fb95fcdd2da24c03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LocVelStdLocal(null);
    if (msg.std_vx !== undefined) {
      resolved.std_vx = msg.std_vx;
    }
    else {
      resolved.std_vx = 0.0
    }

    if (msg.std_vy !== undefined) {
      resolved.std_vy = msg.std_vy;
    }
    else {
      resolved.std_vy = 0.0
    }

    if (msg.std_vz !== undefined) {
      resolved.std_vz = msg.std_vz;
    }
    else {
      resolved.std_vz = 0.0
    }

    return resolved;
    }
};

module.exports = LocVelStdLocal;
