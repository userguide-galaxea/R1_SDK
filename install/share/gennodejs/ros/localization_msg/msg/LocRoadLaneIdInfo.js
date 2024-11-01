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

class LocRoadLaneIdInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ur_id = null;
      this.tile_id = null;
      this.road_count = null;
      this.lane_id = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('ur_id')) {
        this.ur_id = initObj.ur_id
      }
      else {
        this.ur_id = 0;
      }
      if (initObj.hasOwnProperty('tile_id')) {
        this.tile_id = initObj.tile_id
      }
      else {
        this.tile_id = 0;
      }
      if (initObj.hasOwnProperty('road_count')) {
        this.road_count = initObj.road_count
      }
      else {
        this.road_count = 0;
      }
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocRoadLaneIdInfo
    // Serialize message field [ur_id]
    bufferOffset = _serializer.uint16(obj.ur_id, buffer, bufferOffset);
    // Serialize message field [tile_id]
    bufferOffset = _serializer.uint32(obj.tile_id, buffer, bufferOffset);
    // Serialize message field [road_count]
    bufferOffset = _serializer.uint32(obj.road_count, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = _serializer.uint32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint16(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocRoadLaneIdInfo
    let len;
    let data = new LocRoadLaneIdInfo(null);
    // Deserialize message field [ur_id]
    data.ur_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tile_id]
    data.tile_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [road_count]
    data.road_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocRoadLaneIdInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6401b02517079499dbfd18d5fa820bef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 ur_id
    uint32 tile_id
    uint32 road_count
    uint32 lane_id
    uint16 reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocRoadLaneIdInfo(null);
    if (msg.ur_id !== undefined) {
      resolved.ur_id = msg.ur_id;
    }
    else {
      resolved.ur_id = 0
    }

    if (msg.tile_id !== undefined) {
      resolved.tile_id = msg.tile_id;
    }
    else {
      resolved.tile_id = 0
    }

    if (msg.road_count !== undefined) {
      resolved.road_count = msg.road_count;
    }
    else {
      resolved.road_count = 0
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = LocRoadLaneIdInfo;
