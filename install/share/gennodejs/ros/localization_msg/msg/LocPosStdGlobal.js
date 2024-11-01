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

class LocPosStdGlobal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.std_pe = null;
      this.std_pn = null;
      this.std_pu = null;
    }
    else {
      if (initObj.hasOwnProperty('std_pe')) {
        this.std_pe = initObj.std_pe
      }
      else {
        this.std_pe = 0.0;
      }
      if (initObj.hasOwnProperty('std_pn')) {
        this.std_pn = initObj.std_pn
      }
      else {
        this.std_pn = 0.0;
      }
      if (initObj.hasOwnProperty('std_pu')) {
        this.std_pu = initObj.std_pu
      }
      else {
        this.std_pu = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocPosStdGlobal
    // Serialize message field [std_pe]
    bufferOffset = _serializer.float64(obj.std_pe, buffer, bufferOffset);
    // Serialize message field [std_pn]
    bufferOffset = _serializer.float64(obj.std_pn, buffer, bufferOffset);
    // Serialize message field [std_pu]
    bufferOffset = _serializer.float64(obj.std_pu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocPosStdGlobal
    let len;
    let data = new LocPosStdGlobal(null);
    // Deserialize message field [std_pe]
    data.std_pe = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_pn]
    data.std_pn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_pu]
    data.std_pu = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocPosStdGlobal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e0504b815b9cc4ce84f74cdaf0bcc3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 std_pe
    float64 std_pn
    float64 std_pu
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocPosStdGlobal(null);
    if (msg.std_pe !== undefined) {
      resolved.std_pe = msg.std_pe;
    }
    else {
      resolved.std_pe = 0.0
    }

    if (msg.std_pn !== undefined) {
      resolved.std_pn = msg.std_pn;
    }
    else {
      resolved.std_pn = 0.0
    }

    if (msg.std_pu !== undefined) {
      resolved.std_pu = msg.std_pu;
    }
    else {
      resolved.std_pu = 0.0
    }

    return resolved;
    }
};

module.exports = LocPosStdGlobal;
