// Auto-generated. Do not edit!

// (in-package signal_camera.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImageMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timebase = null;
      this.point_num = null;
      this.lidar_id = null;
      this.rsvd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timebase')) {
        this.timebase = initObj.timebase
      }
      else {
        this.timebase = 0;
      }
      if (initObj.hasOwnProperty('point_num')) {
        this.point_num = initObj.point_num
      }
      else {
        this.point_num = 0;
      }
      if (initObj.hasOwnProperty('lidar_id')) {
        this.lidar_id = initObj.lidar_id
      }
      else {
        this.lidar_id = 0;
      }
      if (initObj.hasOwnProperty('rsvd')) {
        this.rsvd = initObj.rsvd
      }
      else {
        this.rsvd = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timebase]
    bufferOffset = _serializer.uint64(obj.timebase, buffer, bufferOffset);
    // Serialize message field [point_num]
    bufferOffset = _serializer.uint32(obj.point_num, buffer, bufferOffset);
    // Serialize message field [lidar_id]
    bufferOffset = _serializer.uint8(obj.lidar_id, buffer, bufferOffset);
    // Check that the constant length array field [rsvd] has the right length
    if (obj.rsvd.length !== 3) {
      throw new Error('Unable to serialize array field rsvd - length must be 3')
    }
    // Serialize message field [rsvd]
    bufferOffset = _arraySerializer.uint8(obj.rsvd, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageMsg
    let len;
    let data = new ImageMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timebase]
    data.timebase = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [point_num]
    data.point_num = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lidar_id]
    data.lidar_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rsvd]
    data.rsvd = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'signal_camera/ImageMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9094ee16737ae46f3b9ab1bbbc8bf491';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ebot publish image msg format.
    
    std_msgs/Header header    # ROS standard message header
    uint64 timebase           # The time of first point
    uint32 point_num          # Total number of pointclouds
    uint8  lidar_id           # Lidar device id number
    uint8[3]  rsvd            # Reserved use
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timebase !== undefined) {
      resolved.timebase = msg.timebase;
    }
    else {
      resolved.timebase = 0
    }

    if (msg.point_num !== undefined) {
      resolved.point_num = msg.point_num;
    }
    else {
      resolved.point_num = 0
    }

    if (msg.lidar_id !== undefined) {
      resolved.lidar_id = msg.lidar_id;
    }
    else {
      resolved.lidar_id = 0
    }

    if (msg.rsvd !== undefined) {
      resolved.rsvd = msg.rsvd;
    }
    else {
      resolved.rsvd = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = ImageMsg;
