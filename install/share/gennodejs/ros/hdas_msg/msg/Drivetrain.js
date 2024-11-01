// Auto-generated. Do not edit!

// (in-package hdas_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Drivetrain {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel_fl = null;
      this.vel_fr = null;
      this.vel_r = null;
      this.angle_fl = null;
      this.angle_fr = null;
      this.angle_r = null;
    }
    else {
      if (initObj.hasOwnProperty('vel_fl')) {
        this.vel_fl = initObj.vel_fl
      }
      else {
        this.vel_fl = 0.0;
      }
      if (initObj.hasOwnProperty('vel_fr')) {
        this.vel_fr = initObj.vel_fr
      }
      else {
        this.vel_fr = 0.0;
      }
      if (initObj.hasOwnProperty('vel_r')) {
        this.vel_r = initObj.vel_r
      }
      else {
        this.vel_r = 0.0;
      }
      if (initObj.hasOwnProperty('angle_fl')) {
        this.angle_fl = initObj.angle_fl
      }
      else {
        this.angle_fl = 0.0;
      }
      if (initObj.hasOwnProperty('angle_fr')) {
        this.angle_fr = initObj.angle_fr
      }
      else {
        this.angle_fr = 0.0;
      }
      if (initObj.hasOwnProperty('angle_r')) {
        this.angle_r = initObj.angle_r
      }
      else {
        this.angle_r = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Drivetrain
    // Serialize message field [vel_fl]
    bufferOffset = _serializer.float32(obj.vel_fl, buffer, bufferOffset);
    // Serialize message field [vel_fr]
    bufferOffset = _serializer.float32(obj.vel_fr, buffer, bufferOffset);
    // Serialize message field [vel_r]
    bufferOffset = _serializer.float32(obj.vel_r, buffer, bufferOffset);
    // Serialize message field [angle_fl]
    bufferOffset = _serializer.float32(obj.angle_fl, buffer, bufferOffset);
    // Serialize message field [angle_fr]
    bufferOffset = _serializer.float32(obj.angle_fr, buffer, bufferOffset);
    // Serialize message field [angle_r]
    bufferOffset = _serializer.float32(obj.angle_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Drivetrain
    let len;
    let data = new Drivetrain(null);
    // Deserialize message field [vel_fl]
    data.vel_fl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_fr]
    data.vel_fr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_r]
    data.vel_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_fl]
    data.angle_fl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_fr]
    data.angle_fr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_r]
    data.angle_r = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdas_msg/Drivetrain';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a54847f1086c67159c1bb023398666f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 vel_fl
    float32 vel_fr
    float32 vel_r
    float32 angle_fl
    float32 angle_fr
    float32 angle_r
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Drivetrain(null);
    if (msg.vel_fl !== undefined) {
      resolved.vel_fl = msg.vel_fl;
    }
    else {
      resolved.vel_fl = 0.0
    }

    if (msg.vel_fr !== undefined) {
      resolved.vel_fr = msg.vel_fr;
    }
    else {
      resolved.vel_fr = 0.0
    }

    if (msg.vel_r !== undefined) {
      resolved.vel_r = msg.vel_r;
    }
    else {
      resolved.vel_r = 0.0
    }

    if (msg.angle_fl !== undefined) {
      resolved.angle_fl = msg.angle_fl;
    }
    else {
      resolved.angle_fl = 0.0
    }

    if (msg.angle_fr !== undefined) {
      resolved.angle_fr = msg.angle_fr;
    }
    else {
      resolved.angle_fr = 0.0
    }

    if (msg.angle_r !== undefined) {
      resolved.angle_r = msg.angle_r;
    }
    else {
      resolved.angle_r = 0.0
    }

    return resolved;
    }
};

module.exports = Drivetrain;
