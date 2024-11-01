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

class feedback_status_detail {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.error_code = null;
      this.error_description = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('error_description')) {
        this.error_description = initObj.error_description
      }
      else {
        this.error_description = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type feedback_status_detail
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [error_description]
    bufferOffset = _arraySerializer.string(obj.error_description, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type feedback_status_detail
    let len;
    let data = new feedback_status_detail(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [error_description]
    data.error_description = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    object.error_description.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdas_msg/feedback_status_detail';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5280425d3fdc62c9f07e542e68626f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    uint32 error_code
    string[] error_description
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new feedback_status_detail(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.error_description !== undefined) {
      resolved.error_description = msg.error_description;
    }
    else {
      resolved.error_description = []
    }

    return resolved;
    }
};

module.exports = feedback_status_detail;
