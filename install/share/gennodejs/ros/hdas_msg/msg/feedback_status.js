// Auto-generated. Do not edit!

// (in-package hdas_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let feedback_status_detail = require('./feedback_status_detail.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class feedback_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name_id = null;
      this.errors = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name_id')) {
        this.name_id = initObj.name_id
      }
      else {
        this.name_id = '';
      }
      if (initObj.hasOwnProperty('errors')) {
        this.errors = initObj.errors
      }
      else {
        this.errors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type feedback_status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name_id]
    bufferOffset = _serializer.string(obj.name_id, buffer, bufferOffset);
    // Serialize message field [errors]
    // Serialize the length for message field [errors]
    bufferOffset = _serializer.uint32(obj.errors.length, buffer, bufferOffset);
    obj.errors.forEach((val) => {
      bufferOffset = feedback_status_detail.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type feedback_status
    let len;
    let data = new feedback_status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name_id]
    data.name_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [errors]
    // Deserialize array length for message field [errors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.errors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.errors[i] = feedback_status_detail.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.name_id);
    object.errors.forEach((val) => {
      length += feedback_status_detail.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdas_msg/feedback_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a6984c65a4a87fe80ef0491240438e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string name_id
    feedback_status_detail[] errors
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: hdas_msg/feedback_status_detail
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
    const resolved = new feedback_status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name_id !== undefined) {
      resolved.name_id = msg.name_id;
    }
    else {
      resolved.name_id = ''
    }

    if (msg.errors !== undefined) {
      resolved.errors = new Array(msg.errors.length);
      for (let i = 0; i < resolved.errors.length; ++i) {
        resolved.errors[i] = feedback_status_detail.Resolve(msg.errors[i]);
      }
    }
    else {
      resolved.errors = []
    }

    return resolved;
    }
};

module.exports = feedback_status;
