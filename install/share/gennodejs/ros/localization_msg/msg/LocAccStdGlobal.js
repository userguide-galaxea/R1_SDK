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

class LocAccStdGlobal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.std_ae = null;
      this.std_an = null;
      this.std_au = null;
    }
    else {
      if (initObj.hasOwnProperty('std_ae')) {
        this.std_ae = initObj.std_ae
      }
      else {
        this.std_ae = 0.0;
      }
      if (initObj.hasOwnProperty('std_an')) {
        this.std_an = initObj.std_an
      }
      else {
        this.std_an = 0.0;
      }
      if (initObj.hasOwnProperty('std_au')) {
        this.std_au = initObj.std_au
      }
      else {
        this.std_au = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocAccStdGlobal
    // Serialize message field [std_ae]
    bufferOffset = _serializer.float64(obj.std_ae, buffer, bufferOffset);
    // Serialize message field [std_an]
    bufferOffset = _serializer.float64(obj.std_an, buffer, bufferOffset);
    // Serialize message field [std_au]
    bufferOffset = _serializer.float64(obj.std_au, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocAccStdGlobal
    let len;
    let data = new LocAccStdGlobal(null);
    // Deserialize message field [std_ae]
    data.std_ae = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_an]
    data.std_an = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_au]
    data.std_au = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocAccStdGlobal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26a185d309e37a3ff7938ddc96aab849';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 std_ae
    float64 std_an
    float64 std_au
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocAccStdGlobal(null);
    if (msg.std_ae !== undefined) {
      resolved.std_ae = msg.std_ae;
    }
    else {
      resolved.std_ae = 0.0
    }

    if (msg.std_an !== undefined) {
      resolved.std_an = msg.std_an;
    }
    else {
      resolved.std_an = 0.0
    }

    if (msg.std_au !== undefined) {
      resolved.std_au = msg.std_au;
    }
    else {
      resolved.std_au = 0.0
    }

    return resolved;
    }
};

module.exports = LocAccStdGlobal;
