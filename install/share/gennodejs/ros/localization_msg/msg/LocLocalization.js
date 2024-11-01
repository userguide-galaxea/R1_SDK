// Auto-generated. Do not edit!

// (in-package localization_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocLocalizationMeta = require('./LocLocalizationMeta.js');
let LocPosition = require('./LocPosition.js');
let LocVelocity = require('./LocVelocity.js');
let LocAngularVelocity = require('./LocAngularVelocity.js');
let LocOrientation = require('./LocOrientation.js');
let LocAcceleration = require('./LocAcceleration.js');
let LocPositionStd = require('./LocPositionStd.js');
let LocVelocityStd = require('./LocVelocityStd.js');
let LocAngularVelocityStd = require('./LocAngularVelocityStd.js');
let LocOrientationStd = require('./LocOrientationStd.js');
let LocAccelerationStd = require('./LocAccelerationStd.js');
let LocStatus = require('./LocStatus.js');
let LocTransform = require('./LocTransform.js');
let LocPoseDetail = require('./LocPoseDetail.js');
let LocRoadLaneIdInfo = require('./LocRoadLaneIdInfo.js');
let LocReserved = require('./LocReserved.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LocLocalization {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.position = null;
      this.velocity = null;
      this.angular_velocity = null;
      this.orientation = null;
      this.acceleration = null;
      this.position_std = null;
      this.velocity_std = null;
      this.angular_velocity_std = null;
      this.orientation_std = null;
      this.acceleration_std = null;
      this.status = null;
      this.transform = null;
      this.pose_detail = null;
      this.road_lane_id_info = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new LocLocalizationMeta();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new LocPosition();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new LocVelocity();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new LocAngularVelocity();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new LocOrientation();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new LocAcceleration();
      }
      if (initObj.hasOwnProperty('position_std')) {
        this.position_std = initObj.position_std
      }
      else {
        this.position_std = new LocPositionStd();
      }
      if (initObj.hasOwnProperty('velocity_std')) {
        this.velocity_std = initObj.velocity_std
      }
      else {
        this.velocity_std = new LocVelocityStd();
      }
      if (initObj.hasOwnProperty('angular_velocity_std')) {
        this.angular_velocity_std = initObj.angular_velocity_std
      }
      else {
        this.angular_velocity_std = new LocAngularVelocityStd();
      }
      if (initObj.hasOwnProperty('orientation_std')) {
        this.orientation_std = initObj.orientation_std
      }
      else {
        this.orientation_std = new LocOrientationStd();
      }
      if (initObj.hasOwnProperty('acceleration_std')) {
        this.acceleration_std = initObj.acceleration_std
      }
      else {
        this.acceleration_std = new LocAccelerationStd();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new LocStatus();
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new LocTransform();
      }
      if (initObj.hasOwnProperty('pose_detail')) {
        this.pose_detail = initObj.pose_detail
      }
      else {
        this.pose_detail = new LocPoseDetail();
      }
      if (initObj.hasOwnProperty('road_lane_id_info')) {
        this.road_lane_id_info = initObj.road_lane_id_info
      }
      else {
        this.road_lane_id_info = new LocRoadLaneIdInfo();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = new LocReserved();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocLocalization
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = LocLocalizationMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = LocPosition.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = LocVelocity.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = LocAngularVelocity.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = LocOrientation.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = LocAcceleration.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [position_std]
    bufferOffset = LocPositionStd.serialize(obj.position_std, buffer, bufferOffset);
    // Serialize message field [velocity_std]
    bufferOffset = LocVelocityStd.serialize(obj.velocity_std, buffer, bufferOffset);
    // Serialize message field [angular_velocity_std]
    bufferOffset = LocAngularVelocityStd.serialize(obj.angular_velocity_std, buffer, bufferOffset);
    // Serialize message field [orientation_std]
    bufferOffset = LocOrientationStd.serialize(obj.orientation_std, buffer, bufferOffset);
    // Serialize message field [acceleration_std]
    bufferOffset = LocAccelerationStd.serialize(obj.acceleration_std, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = LocStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = LocTransform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [pose_detail]
    bufferOffset = LocPoseDetail.serialize(obj.pose_detail, buffer, bufferOffset);
    // Serialize message field [road_lane_id_info]
    bufferOffset = LocRoadLaneIdInfo.serialize(obj.road_lane_id_info, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = LocReserved.serialize(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocLocalization
    let len;
    let data = new LocLocalization(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = LocLocalizationMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = LocPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = LocVelocity.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = LocAngularVelocity.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = LocOrientation.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = LocAcceleration.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_std]
    data.position_std = LocPositionStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_std]
    data.velocity_std = LocVelocityStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_std]
    data.angular_velocity_std = LocAngularVelocityStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_std]
    data.orientation_std = LocOrientationStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_std]
    data.acceleration_std = LocAccelerationStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = LocStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = LocTransform.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_detail]
    data.pose_detail = LocPoseDetail.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_lane_id_info]
    data.road_lane_id_info = LocRoadLaneIdInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = LocReserved.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += LocReserved.getMessageSize(object.reserved);
    return length + 779;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msg/LocLocalization';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3be4520cb40af3402a4a89303299b76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    LocLocalizationMeta meta
    LocPosition position
    LocVelocity velocity
    LocAngularVelocity angular_velocity
    LocOrientation orientation
    LocAcceleration acceleration
    LocPositionStd position_std
    LocVelocityStd velocity_std
    LocAngularVelocityStd angular_velocity_std
    LocOrientationStd orientation_std
    LocAccelerationStd acceleration_std
    LocStatus status
    LocTransform transform
    LocPoseDetail pose_detail
    LocRoadLaneIdInfo road_lane_id_info
    LocReserved reserved
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
    MSG: localization_msg/LocLocalizationMeta
    uint64 timestamp_us
    uint64 seq
    ================================================================================
    MSG: localization_msg/LocPosition
    uint8 available
    LocPosGlobal position_global
    LocPosLocal position_local
    ================================================================================
    MSG: localization_msg/LocPosGlobal
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: localization_msg/LocPosLocal
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: localization_msg/LocVelocity
    uint8 available
    LocVelGlobal velocity_global
    LocVelLocal velocity_local
    ================================================================================
    MSG: localization_msg/LocVelGlobal
    float64 ve
    float64 vn
    float64 vu
    ================================================================================
    MSG: localization_msg/LocVelLocal
    float64 vx
    float64 vy
    float64 vz
    ================================================================================
    MSG: localization_msg/LocAngularVelocity
    uint8 available
    LocAngVelLocal angvelocity_local
    ================================================================================
    MSG: localization_msg/LocAngVelLocal
    float64 vx
    float64 vy
    float64 vz
    ================================================================================
    MSG: localization_msg/LocOrientation
    uint8 available
    LocEuler euler_global
    LocQuaternion quaternion_global
    LocEuler euler_local
    LocQuaternion quaternion_local
    ================================================================================
    MSG: localization_msg/LocEuler
    float64 roll
    float64 pitch
    float64 yaw
    ================================================================================
    MSG: localization_msg/LocQuaternion
    float64 w
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: localization_msg/LocAcceleration
    uint8 available
    LocAccGlobal acceleration_global
    LocAccLocal acceleration_local
    ================================================================================
    MSG: localization_msg/LocAccGlobal
    float64 ae
    float64 an
    float64 au
    ================================================================================
    MSG: localization_msg/LocAccLocal
    float64 ax
    float64 ay
    float64 az
    ================================================================================
    MSG: localization_msg/LocPositionStd
    uint8 available
    LocPosStdGlobal pos_std_global
    LocPosStdLocal pos_std_local
    ================================================================================
    MSG: localization_msg/LocPosStdGlobal
    float64 std_pe
    float64 std_pn
    float64 std_pu
    ================================================================================
    MSG: localization_msg/LocPosStdLocal
    float64 std_px
    float64 std_py
    float64 std_pz
    ================================================================================
    MSG: localization_msg/LocVelocityStd
    uint8 available
    LocVelStdGlobal vel_std_global
    LocVelStdLocal vel_std_local
    ================================================================================
    MSG: localization_msg/LocVelStdGlobal
    float64 std_ve
    float64 std_vn
    float64 std_vu
    ================================================================================
    MSG: localization_msg/LocVelStdLocal
    float64 std_vx
    float64 std_vy
    float64 std_vz
    ================================================================================
    MSG: localization_msg/LocAngularVelocityStd
    uint8 available
    LocAngVelStdLocal angvel_std_local
    ================================================================================
    MSG: localization_msg/LocAngVelStdLocal
    float64 std_vx
    float64 std_vy
    float64 std_vz
    ================================================================================
    MSG: localization_msg/LocOrientationStd
    uint8 available
    LocOriStdXyz ori_std_xyz
    ================================================================================
    MSG: localization_msg/LocOriStdXyz
    float64 std_faix
    float64 std_faiy
    float64 std_faiz
    ================================================================================
    MSG: localization_msg/LocAccelerationStd
    uint8 available
    LocAccStdGlobal acc_std_global
    LocAccStdLocal acc_std_local
    ================================================================================
    MSG: localization_msg/LocAccStdGlobal
    float64 std_ae
    float64 std_an
    float64 std_au
    ================================================================================
    MSG: localization_msg/LocAccStdLocal
    float64 std_ax
    float64 std_ay
    float64 std_az
    ================================================================================
    MSG: localization_msg/LocStatus
    uint8 available
    LocStatusInfo status_info
    ================================================================================
    MSG: localization_msg/LocStatusInfo
    uint8 quality
    uint64 common
    uint64 extended
    uint8 type
    ================================================================================
    MSG: localization_msg/LocTransform
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
    MSG: localization_msg/LocPoseDetail
    uint8 available
    LocPoseDetailInfo pose_detail_info
    ================================================================================
    MSG: localization_msg/LocPoseDetailInfo
    uint8 available
    bool is_keyframe
    bool has_scale
    uint8 pose_type
    ================================================================================
    MSG: localization_msg/LocRoadLaneIdInfo
    uint16 ur_id
    uint32 tile_id
    uint32 road_count
    uint32 lane_id
    uint16 reserved
    ================================================================================
    MSG: localization_msg/LocReserved
    uint8 available
    uint64[] reserved_data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocLocalization(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = LocLocalizationMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new LocLocalizationMeta()
    }

    if (msg.position !== undefined) {
      resolved.position = LocPosition.Resolve(msg.position)
    }
    else {
      resolved.position = new LocPosition()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = LocVelocity.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new LocVelocity()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = LocAngularVelocity.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new LocAngularVelocity()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = LocOrientation.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new LocOrientation()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = LocAcceleration.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new LocAcceleration()
    }

    if (msg.position_std !== undefined) {
      resolved.position_std = LocPositionStd.Resolve(msg.position_std)
    }
    else {
      resolved.position_std = new LocPositionStd()
    }

    if (msg.velocity_std !== undefined) {
      resolved.velocity_std = LocVelocityStd.Resolve(msg.velocity_std)
    }
    else {
      resolved.velocity_std = new LocVelocityStd()
    }

    if (msg.angular_velocity_std !== undefined) {
      resolved.angular_velocity_std = LocAngularVelocityStd.Resolve(msg.angular_velocity_std)
    }
    else {
      resolved.angular_velocity_std = new LocAngularVelocityStd()
    }

    if (msg.orientation_std !== undefined) {
      resolved.orientation_std = LocOrientationStd.Resolve(msg.orientation_std)
    }
    else {
      resolved.orientation_std = new LocOrientationStd()
    }

    if (msg.acceleration_std !== undefined) {
      resolved.acceleration_std = LocAccelerationStd.Resolve(msg.acceleration_std)
    }
    else {
      resolved.acceleration_std = new LocAccelerationStd()
    }

    if (msg.status !== undefined) {
      resolved.status = LocStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new LocStatus()
    }

    if (msg.transform !== undefined) {
      resolved.transform = LocTransform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new LocTransform()
    }

    if (msg.pose_detail !== undefined) {
      resolved.pose_detail = LocPoseDetail.Resolve(msg.pose_detail)
    }
    else {
      resolved.pose_detail = new LocPoseDetail()
    }

    if (msg.road_lane_id_info !== undefined) {
      resolved.road_lane_id_info = LocRoadLaneIdInfo.Resolve(msg.road_lane_id_info)
    }
    else {
      resolved.road_lane_id_info = new LocRoadLaneIdInfo()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = LocReserved.Resolve(msg.reserved)
    }
    else {
      resolved.reserved = new LocReserved()
    }

    return resolved;
    }
};

module.exports = LocLocalization;
