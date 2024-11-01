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

class LocReserved {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.reserved_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('reserved_data')) {
        this.reserved_data = initObj.reserved_data
      }
      else {
        this.reserved_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocReserved
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [reserved_data]
    bufferOffset = _arraySerializer.uint64(obj.reserved_data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocReserved
    let len;
    let data = new LocReserved(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved_data]
    data.reserved_data = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.reserved_data.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocReserved';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01bf7ee7fa3865254c05e26ac8cb514c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    uint64[] reserved_data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocReserved(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.reserved_data !== undefined) {
      resolved.reserved_data = msg.reserved_data;
    }
    else {
      resolved.reserved_data = []
    }

    return resolved;
    }
};

module.exports = LocReserved;
