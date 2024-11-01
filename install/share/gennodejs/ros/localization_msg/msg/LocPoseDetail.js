// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocPoseDetailInfo = require('./LocPoseDetailInfo.js');

//-----------------------------------------------------------

class LocPoseDetail {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.pose_detail_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('pose_detail_info')) {
        this.pose_detail_info = initObj.pose_detail_info
      }
      else {
        this.pose_detail_info = new LocPoseDetailInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocPoseDetail
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [pose_detail_info]
    bufferOffset = LocPoseDetailInfo.serialize(obj.pose_detail_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocPoseDetail
    let len;
    let data = new LocPoseDetail(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pose_detail_info]
    data.pose_detail_info = LocPoseDetailInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocPoseDetail';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '004458d6e21a0d465dbae5ebb975fba4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocPoseDetailInfo pose_detail_info
    ================================================================================
    MSG: localization_msg/LocPoseDetailInfo
    uint8 available
    bool is_keyframe
    bool has_scale
    uint8 pose_type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocPoseDetail(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.pose_detail_info !== undefined) {
      resolved.pose_detail_info = LocPoseDetailInfo.Resolve(msg.pose_detail_info)
    }
    else {
      resolved.pose_detail_info = new LocPoseDetailInfo()
    }

    return resolved;
    }
};

module.exports = LocPoseDetail;
