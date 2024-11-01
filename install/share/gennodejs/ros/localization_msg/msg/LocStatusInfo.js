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

class LocStatusInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quality = null;
      this.common = null;
      this.extended = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
      if (initObj.hasOwnProperty('common')) {
        this.common = initObj.common
      }
      else {
        this.common = 0;
      }
      if (initObj.hasOwnProperty('extended')) {
        this.extended = initObj.extended
      }
      else {
        this.extended = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocStatusInfo
    // Serialize message field [quality]
    bufferOffset = _serializer.uint8(obj.quality, buffer, bufferOffset);
    // Serialize message field [common]
    bufferOffset = _serializer.uint64(obj.common, buffer, bufferOffset);
    // Serialize message field [extended]
    bufferOffset = _serializer.uint64(obj.extended, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocStatusInfo
    let len;
    let data = new LocStatusInfo(null);
    // Deserialize message field [quality]
    data.quality = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [common]
    data.common = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [extended]
    data.extended = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocStatusInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a36372e498de5e2ada620a2c8844ac6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LocStatusInfo(null);
    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    if (msg.common !== undefined) {
      resolved.common = msg.common;
    }
    else {
      resolved.common = 0
    }

    if (msg.extended !== undefined) {
      resolved.extended = msg.extended;
    }
    else {
      resolved.extended = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = LocStatusInfo;
