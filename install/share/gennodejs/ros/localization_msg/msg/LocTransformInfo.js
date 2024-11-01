// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocQuaternion = require('./LocQuaternion.js');
let LocPosLocal = require('./LocPosLocal.js');
let LocPosGlobal = require('./LocPosGlobal.js');

//-----------------------------------------------------------

class LocTransformInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform_q = null;
      this.transform_t = null;
      this.transform_center = null;
    }
    else {
      if (initObj.hasOwnProperty('transform_q')) {
        this.transform_q = initObj.transform_q
      }
      else {
        this.transform_q = new LocQuaternion();
      }
      if (initObj.hasOwnProperty('transform_t')) {
        this.transform_t = initObj.transform_t
      }
      else {
        this.transform_t = new LocPosLocal();
      }
      if (initObj.hasOwnProperty('transform_center')) {
        this.transform_center = initObj.transform_center
      }
      else {
        this.transform_center = new LocPosGlobal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocTransformInfo
    // Serialize message field [transform_q]
    bufferOffset = LocQuaternion.serialize(obj.transform_q, buffer, bufferOffset);
    // Serialize message field [transform_t]
    bufferOffset = LocPosLocal.serialize(obj.transform_t, buffer, bufferOffset);
    // Serialize message field [transform_center]
    bufferOffset = LocPosGlobal.serialize(obj.transform_center, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocTransformInfo
    let len;
    let data = new LocTransformInfo(null);
    // Deserialize message field [transform_q]
    data.transform_q = LocQuaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform_t]
    data.transform_t = LocPosLocal.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform_center]
    data.transform_center = LocPosGlobal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocTransformInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b46b84084dc9d2a0fe41cb847809c2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    LocQuaternion transform_q
    LocPosLocal transform_t
    LocPosGlobal transform_center
    ================================================================================
    MSG: localization_msg/LocQuaternion
    float64 w
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: localization_msg/LocPosLocal
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: localization_msg/LocPosGlobal
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
    const resolved = new LocTransformInfo(null);
    if (msg.transform_q !== undefined) {
      resolved.transform_q = LocQuaternion.Resolve(msg.transform_q)
    }
    else {
      resolved.transform_q = new LocQuaternion()
    }

    if (msg.transform_t !== undefined) {
      resolved.transform_t = LocPosLocal.Resolve(msg.transform_t)
    }
    else {
      resolved.transform_t = new LocPosLocal()
    }

    if (msg.transform_center !== undefined) {
      resolved.transform_center = LocPosGlobal.Resolve(msg.transform_center)
    }
    else {
      resolved.transform_center = new LocPosGlobal()
    }

    return resolved;
    }
};

module.exports = LocTransformInfo;
