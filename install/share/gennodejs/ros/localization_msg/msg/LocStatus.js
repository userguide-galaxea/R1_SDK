// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocStatusInfo = require('./LocStatusInfo.js');

//-----------------------------------------------------------

class LocStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.status_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('status_info')) {
        this.status_info = initObj.status_info
      }
      else {
        this.status_info = new LocStatusInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [status_info]
    bufferOffset = LocStatusInfo.serialize(obj.status_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocStatus
    let len;
    let data = new LocStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status_info]
    data.status_info = LocStatusInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e00652c44afdc23232e5217c17a7d02e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocStatusInfo status_info
    ================================================================================
    MSG: localization_msg/LocStatusInfo
    uint8 quality
    uint64 common
    uint64 extended
    uint8 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.status_info !== undefined) {
      resolved.status_info = LocStatusInfo.Resolve(msg.status_info)
    }
    else {
      resolved.status_info = new LocStatusInfo()
    }

    return resolved;
    }
};

module.exports = LocStatus;
