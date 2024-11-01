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

class LocPoseDetailInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.is_keyframe = null;
      this.has_scale = null;
      this.pose_type = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('is_keyframe')) {
        this.is_keyframe = initObj.is_keyframe
      }
      else {
        this.is_keyframe = false;
      }
      if (initObj.hasOwnProperty('has_scale')) {
        this.has_scale = initObj.has_scale
      }
      else {
        this.has_scale = false;
      }
      if (initObj.hasOwnProperty('pose_type')) {
        this.pose_type = initObj.pose_type
      }
      else {
        this.pose_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocPoseDetailInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [is_keyframe]
    bufferOffset = _serializer.bool(obj.is_keyframe, buffer, bufferOffset);
    // Serialize message field [has_scale]
    bufferOffset = _serializer.bool(obj.has_scale, buffer, bufferOffset);
    // Serialize message field [pose_type]
    bufferOffset = _serializer.uint8(obj.pose_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocPoseDetailInfo
    let len;
    let data = new LocPoseDetailInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_keyframe]
    data.is_keyframe = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [has_scale]
    data.has_scale = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose_type]
    data.pose_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocPoseDetailInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7acfcd9c3212736da0f2f283eb3505b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LocPoseDetailInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.is_keyframe !== undefined) {
      resolved.is_keyframe = msg.is_keyframe;
    }
    else {
      resolved.is_keyframe = false
    }

    if (msg.has_scale !== undefined) {
      resolved.has_scale = msg.has_scale;
    }
    else {
      resolved.has_scale = false
    }

    if (msg.pose_type !== undefined) {
      resolved.pose_type = msg.pose_type;
    }
    else {
      resolved.pose_type = 0
    }

    return resolved;
    }
};

module.exports = LocPoseDetailInfo;
