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

class LocLocalizationMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.seq = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocLocalizationMeta
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint64(obj.seq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocLocalizationMeta
    let len;
    let data = new LocLocalizationMeta(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocLocalizationMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4492f5a97b4207064078261b17a4e9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    uint64 seq
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocLocalizationMeta(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    return resolved;
    }
};

module.exports = LocLocalizationMeta;
