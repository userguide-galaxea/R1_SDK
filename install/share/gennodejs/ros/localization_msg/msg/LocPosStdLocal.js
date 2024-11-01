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

class LocPosStdLocal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.std_px = null;
      this.std_py = null;
      this.std_pz = null;
    }
    else {
      if (initObj.hasOwnProperty('std_px')) {
        this.std_px = initObj.std_px
      }
      else {
        this.std_px = 0.0;
      }
      if (initObj.hasOwnProperty('std_py')) {
        this.std_py = initObj.std_py
      }
      else {
        this.std_py = 0.0;
      }
      if (initObj.hasOwnProperty('std_pz')) {
        this.std_pz = initObj.std_pz
      }
      else {
        this.std_pz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocPosStdLocal
    // Serialize message field [std_px]
    bufferOffset = _serializer.float64(obj.std_px, buffer, bufferOffset);
    // Serialize message field [std_py]
    bufferOffset = _serializer.float64(obj.std_py, buffer, bufferOffset);
    // Serialize message field [std_pz]
    bufferOffset = _serializer.float64(obj.std_pz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocPosStdLocal
    let len;
    let data = new LocPosStdLocal(null);
    // Deserialize message field [std_px]
    data.std_px = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_py]
    data.std_py = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_pz]
    data.std_pz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocPosStdLocal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1f33cc0d1e6dccecd1dd14995e930ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 std_px
    float64 std_py
    float64 std_pz
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocPosStdLocal(null);
    if (msg.std_px !== undefined) {
      resolved.std_px = msg.std_px;
    }
    else {
      resolved.std_px = 0.0
    }

    if (msg.std_py !== undefined) {
      resolved.std_py = msg.std_py;
    }
    else {
      resolved.std_py = 0.0
    }

    if (msg.std_pz !== undefined) {
      resolved.std_pz = msg.std_pz;
    }
    else {
      resolved.std_pz = 0.0
    }

    return resolved;
    }
};

module.exports = LocPosStdLocal;
