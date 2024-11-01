// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocEuler = require('./LocEuler.js');
let LocQuaternion = require('./LocQuaternion.js');

//-----------------------------------------------------------

class LocOrientation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.euler_global = null;
      this.quaternion_global = null;
      this.euler_local = null;
      this.quaternion_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('euler_global')) {
        this.euler_global = initObj.euler_global
      }
      else {
        this.euler_global = new LocEuler();
      }
      if (initObj.hasOwnProperty('quaternion_global')) {
        this.quaternion_global = initObj.quaternion_global
      }
      else {
        this.quaternion_global = new LocQuaternion();
      }
      if (initObj.hasOwnProperty('euler_local')) {
        this.euler_local = initObj.euler_local
      }
      else {
        this.euler_local = new LocEuler();
      }
      if (initObj.hasOwnProperty('quaternion_local')) {
        this.quaternion_local = initObj.quaternion_local
      }
      else {
        this.quaternion_local = new LocQuaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocOrientation
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [euler_global]
    bufferOffset = LocEuler.serialize(obj.euler_global, buffer, bufferOffset);
    // Serialize message field [quaternion_global]
    bufferOffset = LocQuaternion.serialize(obj.quaternion_global, buffer, bufferOffset);
    // Serialize message field [euler_local]
    bufferOffset = LocEuler.serialize(obj.euler_local, buffer, bufferOffset);
    // Serialize message field [quaternion_local]
    bufferOffset = LocQuaternion.serialize(obj.quaternion_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocOrientation
    let len;
    let data = new LocOrientation(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [euler_global]
    data.euler_global = LocEuler.deserialize(buffer, bufferOffset);
    // Deserialize message field [quaternion_global]
    data.quaternion_global = LocQuaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [euler_local]
    data.euler_local = LocEuler.deserialize(buffer, bufferOffset);
    // Deserialize message field [quaternion_local]
    data.quaternion_local = LocQuaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 113;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocOrientation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd51feb8932d7b17d92287bf94b778169';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocEuler euler_global
    LocQuaternion quaternion_global
    LocEuler euler_local
    LocQuaternion quaternion_local
    ================================================================================
    MSG: localization_msg/LocEuler
    float64 roll
    float64 pitch
    float64 yaw
    ================================================================================
    MSG: localization_msg/LocQuaternion
    float64 w
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
    const resolved = new LocOrientation(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.euler_global !== undefined) {
      resolved.euler_global = LocEuler.Resolve(msg.euler_global)
    }
    else {
      resolved.euler_global = new LocEuler()
    }

    if (msg.quaternion_global !== undefined) {
      resolved.quaternion_global = LocQuaternion.Resolve(msg.quaternion_global)
    }
    else {
      resolved.quaternion_global = new LocQuaternion()
    }

    if (msg.euler_local !== undefined) {
      resolved.euler_local = LocEuler.Resolve(msg.euler_local)
    }
    else {
      resolved.euler_local = new LocEuler()
    }

    if (msg.quaternion_local !== undefined) {
      resolved.quaternion_local = LocQuaternion.Resolve(msg.quaternion_local)
    }
    else {
      resolved.quaternion_local = new LocQuaternion()
    }

    return resolved;
    }
};

module.exports = LocOrientation;
