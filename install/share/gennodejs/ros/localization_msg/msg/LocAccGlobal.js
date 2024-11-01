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

class LocAccGlobal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ae = null;
      this.an = null;
      this.au = null;
    }
    else {
      if (initObj.hasOwnProperty('ae')) {
        this.ae = initObj.ae
      }
      else {
        this.ae = 0.0;
      }
      if (initObj.hasOwnProperty('an')) {
        this.an = initObj.an
      }
      else {
        this.an = 0.0;
      }
      if (initObj.hasOwnProperty('au')) {
        this.au = initObj.au
      }
      else {
        this.au = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocAccGlobal
    // Serialize message field [ae]
    bufferOffset = _serializer.float64(obj.ae, buffer, bufferOffset);
    // Serialize message field [an]
    bufferOffset = _serializer.float64(obj.an, buffer, bufferOffset);
    // Serialize message field [au]
    bufferOffset = _serializer.float64(obj.au, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocAccGlobal
    let len;
    let data = new LocAccGlobal(null);
    // Deserialize message field [ae]
    data.ae = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [an]
    data.an = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [au]
    data.au = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocAccGlobal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bfa374bd35e5bd3a2a85ae867e826e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 ae
    float64 an
    float64 au
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocAccGlobal(null);
    if (msg.ae !== undefined) {
      resolved.ae = msg.ae;
    }
    else {
      resolved.ae = 0.0
    }

    if (msg.an !== undefined) {
      resolved.an = msg.an;
    }
    else {
      resolved.an = 0.0
    }

    if (msg.au !== undefined) {
      resolved.au = msg.au;
    }
    else {
      resolved.au = 0.0
    }

    return resolved;
    }
};

module.exports = LocAccGlobal;
