// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocTransformInfo = require('./LocTransformInfo.js');

//-----------------------------------------------------------

class LocTransform {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.transform_llh_to_boot = null;
      this.transform_avp_map_to_boot = null;
      this.transform_ego_motion_to_boot = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('transform_llh_to_boot')) {
        this.transform_llh_to_boot = initObj.transform_llh_to_boot
      }
      else {
        this.transform_llh_to_boot = new LocTransformInfo();
      }
      if (initObj.hasOwnProperty('transform_avp_map_to_boot')) {
        this.transform_avp_map_to_boot = initObj.transform_avp_map_to_boot
      }
      else {
        this.transform_avp_map_to_boot = new LocTransformInfo();
      }
      if (initObj.hasOwnProperty('transform_ego_motion_to_boot')) {
        this.transform_ego_motion_to_boot = initObj.transform_ego_motion_to_boot
      }
      else {
        this.transform_ego_motion_to_boot = new LocTransformInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocTransform
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [transform_llh_to_boot]
    bufferOffset = LocTransformInfo.serialize(obj.transform_llh_to_boot, buffer, bufferOffset);
    // Serialize message field [transform_avp_map_to_boot]
    bufferOffset = LocTransformInfo.serialize(obj.transform_avp_map_to_boot, buffer, bufferOffset);
    // Serialize message field [transform_ego_motion_to_boot]
    bufferOffset = LocTransformInfo.serialize(obj.transform_ego_motion_to_boot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocTransform
    let len;
    let data = new LocTransform(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [transform_llh_to_boot]
    data.transform_llh_to_boot = LocTransformInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform_avp_map_to_boot]
    data.transform_avp_map_to_boot = LocTransformInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform_ego_motion_to_boot]
    data.transform_ego_motion_to_boot = LocTransformInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 241;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocTransform';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d6a2de0b6a829c7a528510f80cc997a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    LocTransformInfo transform_llh_to_boot
    LocTransformInfo transform_avp_map_to_boot
    LocTransformInfo transform_ego_motion_to_boot
    ================================================================================
    MSG: localization_msg/LocTransformInfo
    LocQuaternion transform_q
    LocPosLocal transform_t
    LocPosGlobal transform_center
    ================================================================================
    MSG: localization_msg/LocQuaternion
    float64 w
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: localization_msg/LocPosLocal
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: localization_msg/LocPosGlobal
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocTransform(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.transform_llh_to_boot !== undefined) {
      resolved.transform_llh_to_boot = LocTransformInfo.Resolve(msg.transform_llh_to_boot)
    }
    else {
      resolved.transform_llh_to_boot = new LocTransformInfo()
    }

    if (msg.transform_avp_map_to_boot !== undefined) {
      resolved.transform_avp_map_to_boot = LocTransformInfo.Resolve(msg.transform_avp_map_to_boot)
    }
    else {
      resolved.transform_avp_map_to_boot = new LocTransformInfo()
    }

    if (msg.transform_ego_motion_to_boot !== undefined) {
      resolved.transform_ego_motion_to_boot = LocTransformInfo.Resolve(msg.transform_ego_motion_to_boot)
    }
    else {
      resolved.transform_ego_motion_to_boot = new LocTransformInfo()
    }

    return resolved;
    }
};

module.exports = LocTransform;
