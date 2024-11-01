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

class controller_signal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_x_axis = null;
      this.left_y_axis = null;
      this.right_x_axis = null;
      this.right_y_axis = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('left_x_axis')) {
        this.left_x_axis = initObj.left_x_axis
      }
      else {
        this.left_x_axis = 0.0;
      }
      if (initObj.hasOwnProperty('left_y_axis')) {
        this.left_y_axis = initObj.left_y_axis
      }
      else {
        this.left_y_axis = 0.0;
      }
      if (initObj.hasOwnProperty('right_x_axis')) {
        this.right_x_axis = initObj.right_x_axis
      }
      else {
        this.right_x_axis = 0.0;
      }
      if (initObj.hasOwnProperty('right_y_axis')) {
        this.right_y_axis = initObj.right_y_axis
      }
      else {
        this.right_y_axis = 0.0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type controller_signal
    // Serialize message field [left_x_axis]
    bufferOffset = _serializer.float32(obj.left_x_axis, buffer, bufferOffset);
    // Serialize message field [left_y_axis]
    bufferOffset = _serializer.float32(obj.left_y_axis, buffer, bufferOffset);
    // Serialize message field [right_x_axis]
    bufferOffset = _serializer.float32(obj.right_x_axis, buffer, bufferOffset);
    // Serialize message field [right_y_axis]
    bufferOffset = _serializer.float32(obj.right_y_axis, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type controller_signal
    let len;
    let data = new controller_signal(null);
    // Deserialize message field [left_x_axis]
    data.left_x_axis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_y_axis]
    data.left_y_axis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_x_axis]
    data.right_x_axis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_y_axis]
    data.right_y_axis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdas_msg/controller_signal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e6ccbca8cd4108e7851c191481bfb77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 left_x_axis
    float32 left_y_axis
    float32 right_x_axis
    float32 right_y_axis
    uint8 mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new controller_signal(null);
    if (msg.left_x_axis !== undefined) {
      resolved.left_x_axis = msg.left_x_axis;
    }
    else {
      resolved.left_x_axis = 0.0
    }

    if (msg.left_y_axis !== undefined) {
      resolved.left_y_axis = msg.left_y_axis;
    }
    else {
      resolved.left_y_axis = 0.0
    }

    if (msg.right_x_axis !== undefined) {
      resolved.right_x_axis = msg.right_x_axis;
    }
    else {
      resolved.right_x_axis = 0.0
    }

    if (msg.right_y_axis !== undefined) {
      resolved.right_y_axis = msg.right_y_axis;
    }
    else {
      resolved.right_y_axis = 0.0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

module.exports = controller_signal;
