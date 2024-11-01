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

class LocAccStdLocal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.std_ax = null;
      this.std_ay = null;
      this.std_az = null;
    }
    else {
      if (initObj.hasOwnProperty('std_ax')) {
        this.std_ax = initObj.std_ax
      }
      else {
        this.std_ax = 0.0;
      }
      if (initObj.hasOwnProperty('std_ay')) {
        this.std_ay = initObj.std_ay
      }
      else {
        this.std_ay = 0.0;
      }
      if (initObj.hasOwnProperty('std_az')) {
        this.std_az = initObj.std_az
      }
      else {
        this.std_az = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocAccStdLocal
    // Serialize message field [std_ax]
    bufferOffset = _serializer.float64(obj.std_ax, buffer, bufferOffset);
    // Serialize message field [std_ay]
    bufferOffset = _serializer.float64(obj.std_ay, buffer, bufferOffset);
    // Serialize message field [std_az]
    bufferOffset = _serializer.float64(obj.std_az, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocAccStdLocal
    let len;
    let data = new LocAccStdLocal(null);
    // Deserialize message field [std_ax]
    data.std_ax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_ay]
    data.std_ay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_az]
    data.std_az = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocAccStdLocal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdb867b31b2a674c983f7e57dd32fd6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 std_ax
    float64 std_ay
    float64 std_az
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocAccStdLocal(null);
    if (msg.std_ax !== undefined) {
      resolved.std_ax = msg.std_ax;
    }
    else {
      resolved.std_ax = 0.0
    }

    if (msg.std_ay !== undefined) {
      resolved.std_ay = msg.std_ay;
    }
    else {
      resolved.std_ay = 0.0
    }

    if (msg.std_az !== undefined) {
      resolved.std_az = msg.std_az;
    }
    else {
      resolved.std_az = 0.0
    }

    return resolved;
    }
};

module.exports = LocAccStdLocal;
