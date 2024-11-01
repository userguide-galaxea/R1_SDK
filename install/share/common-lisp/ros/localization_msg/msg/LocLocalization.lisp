; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocLocalization.msg.html

(cl:defclass <LocLocalization> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type localization_msg-msg:LocLocalizationMeta
    :initform (cl:make-instance 'localization_msg-msg:LocLocalizationMeta))
   (position
    :reader position
    :initarg :position
    :type localization_msg-msg:LocPosition
    :initform (cl:make-instance 'localization_msg-msg:LocPosition))
   (velocity
    :reader velocity
    :initarg :velocity
    :type localization_msg-msg:LocVelocity
    :initform (cl:make-instance 'localization_msg-msg:LocVelocity))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type localization_msg-msg:LocAngularVelocity
    :initform (cl:make-instance 'localization_msg-msg:LocAngularVelocity))
   (orientation
    :reader orientation
    :initarg :orientation
    :type localization_msg-msg:LocOrientation
    :initform (cl:make-instance 'localization_msg-msg:LocOrientation))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type localization_msg-msg:LocAcceleration
    :initform (cl:make-instance 'localization_msg-msg:LocAcceleration))
   (position_std
    :reader position_std
    :initarg :position_std
    :type localization_msg-msg:LocPositionStd
    :initform (cl:make-instance 'localization_msg-msg:LocPositionStd))
   (velocity_std
    :reader velocity_std
    :initarg :velocity_std
    :type localization_msg-msg:LocVelocityStd
    :initform (cl:make-instance 'localization_msg-msg:LocVelocityStd))
   (angular_velocity_std
    :reader angular_velocity_std
    :initarg :angular_velocity_std
    :type localization_msg-msg:LocAngularVelocityStd
    :initform (cl:make-instance 'localization_msg-msg:LocAngularVelocityStd))
   (orientation_std
    :reader orientation_std
    :initarg :orientation_std
    :type localization_msg-msg:LocOrientationStd
    :initform (cl:make-instance 'localization_msg-msg:LocOrientationStd))
   (acceleration_std
    :reader acceleration_std
    :initarg :acceleration_std
    :type localization_msg-msg:LocAccelerationStd
    :initform (cl:make-instance 'localization_msg-msg:LocAccelerationStd))
   (status
    :reader status
    :initarg :status
    :type localization_msg-msg:LocStatus
    :initform (cl:make-instance 'localization_msg-msg:LocStatus))
   (transform
    :reader transform
    :initarg :transform
    :type localization_msg-msg:LocTransform
    :initform (cl:make-instance 'localization_msg-msg:LocTransform))
   (pose_detail
    :reader pose_detail
    :initarg :pose_detail
    :type localization_msg-msg:LocPoseDetail
    :initform (cl:make-instance 'localization_msg-msg:LocPoseDetail))
   (road_lane_id_info
    :reader road_lane_id_info
    :initarg :road_lane_id_info
    :type localization_msg-msg:LocRoadLaneIdInfo
    :initform (cl:make-instance 'localization_msg-msg:LocRoadLaneIdInfo))
   (reserved
    :reader reserved
    :initarg :reserved
    :type localization_msg-msg:LocReserved
    :initform (cl:make-instance 'localization_msg-msg:LocReserved)))
)

(cl:defclass LocLocalization (<LocLocalization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocLocalization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocLocalization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocLocalization> is deprecated: use localization_msg-msg:LocLocalization instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:header-val is deprecated.  Use localization_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:meta-val is deprecated.  Use localization_msg-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:position-val is deprecated.  Use localization_msg-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:velocity-val is deprecated.  Use localization_msg-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:angular_velocity-val is deprecated.  Use localization_msg-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:orientation-val is deprecated.  Use localization_msg-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:acceleration-val is deprecated.  Use localization_msg-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'position_std-val :lambda-list '(m))
(cl:defmethod position_std-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:position_std-val is deprecated.  Use localization_msg-msg:position_std instead.")
  (position_std m))

(cl:ensure-generic-function 'velocity_std-val :lambda-list '(m))
(cl:defmethod velocity_std-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:velocity_std-val is deprecated.  Use localization_msg-msg:velocity_std instead.")
  (velocity_std m))

(cl:ensure-generic-function 'angular_velocity_std-val :lambda-list '(m))
(cl:defmethod angular_velocity_std-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:angular_velocity_std-val is deprecated.  Use localization_msg-msg:angular_velocity_std instead.")
  (angular_velocity_std m))

(cl:ensure-generic-function 'orientation_std-val :lambda-list '(m))
(cl:defmethod orientation_std-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:orientation_std-val is deprecated.  Use localization_msg-msg:orientation_std instead.")
  (orientation_std m))

(cl:ensure-generic-function 'acceleration_std-val :lambda-list '(m))
(cl:defmethod acceleration_std-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:acceleration_std-val is deprecated.  Use localization_msg-msg:acceleration_std instead.")
  (acceleration_std m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:status-val is deprecated.  Use localization_msg-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:transform-val is deprecated.  Use localization_msg-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'pose_detail-val :lambda-list '(m))
(cl:defmethod pose_detail-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:pose_detail-val is deprecated.  Use localization_msg-msg:pose_detail instead.")
  (pose_detail m))

(cl:ensure-generic-function 'road_lane_id_info-val :lambda-list '(m))
(cl:defmethod road_lane_id_info-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:road_lane_id_info-val is deprecated.  Use localization_msg-msg:road_lane_id_info instead.")
  (road_lane_id_info m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <LocLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:reserved-val is deprecated.  Use localization_msg-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocLocalization>) ostream)
  "Serializes a message object of type '<LocLocalization>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_detail) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_lane_id_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reserved) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocLocalization>) istream)
  "Deserializes a message object of type '<LocLocalization>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_detail) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_lane_id_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reserved) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocLocalization>)))
  "Returns string type for a message object of type '<LocLocalization>"
  "localization_msg/LocLocalization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocLocalization)))
  "Returns string type for a message object of type 'LocLocalization"
  "localization_msg/LocLocalization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocLocalization>)))
  "Returns md5sum for a message object of type '<LocLocalization>"
  "c3be4520cb40af3402a4a89303299b76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocLocalization)))
  "Returns md5sum for a message object of type 'LocLocalization"
  "c3be4520cb40af3402a4a89303299b76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocLocalization>)))
  "Returns full string definition for message of type '<LocLocalization>"
  (cl:format cl:nil "std_msgs/Header header~%LocLocalizationMeta meta~%LocPosition position~%LocVelocity velocity~%LocAngularVelocity angular_velocity~%LocOrientation orientation~%LocAcceleration acceleration~%LocPositionStd position_std~%LocVelocityStd velocity_std~%LocAngularVelocityStd angular_velocity_std~%LocOrientationStd orientation_std~%LocAccelerationStd acceleration_std~%LocStatus status~%LocTransform transform~%LocPoseDetail pose_detail~%LocRoadLaneIdInfo road_lane_id_info~%LocReserved reserved~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: localization_msg/LocLocalizationMeta~%uint64 timestamp_us~%uint64 seq~%================================================================================~%MSG: localization_msg/LocPosition~%uint8 available~%LocPosGlobal position_global~%LocPosLocal position_local~%================================================================================~%MSG: localization_msg/LocPosGlobal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosLocal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocVelocity~%uint8 available~%LocVelGlobal velocity_global~%LocVelLocal velocity_local~%================================================================================~%MSG: localization_msg/LocVelGlobal~%float64 ve~%float64 vn~%float64 vu~%================================================================================~%MSG: localization_msg/LocVelLocal~%float64 vx~%float64 vy~%float64 vz~%================================================================================~%MSG: localization_msg/LocAngularVelocity~%uint8 available~%LocAngVelLocal angvelocity_local~%================================================================================~%MSG: localization_msg/LocAngVelLocal~%float64 vx~%float64 vy~%float64 vz~%================================================================================~%MSG: localization_msg/LocOrientation~%uint8 available~%LocEuler euler_global~%LocQuaternion quaternion_global~%LocEuler euler_local~%LocQuaternion quaternion_local~%================================================================================~%MSG: localization_msg/LocEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: localization_msg/LocQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocAcceleration~%uint8 available~%LocAccGlobal acceleration_global~%LocAccLocal acceleration_local~%================================================================================~%MSG: localization_msg/LocAccGlobal~%float64 ae~%float64 an~%float64 au~%================================================================================~%MSG: localization_msg/LocAccLocal~%float64 ax~%float64 ay~%float64 az~%================================================================================~%MSG: localization_msg/LocPositionStd~%uint8 available~%LocPosStdGlobal pos_std_global~%LocPosStdLocal pos_std_local~%================================================================================~%MSG: localization_msg/LocPosStdGlobal~%float64 std_pe~%float64 std_pn~%float64 std_pu~%================================================================================~%MSG: localization_msg/LocPosStdLocal~%float64 std_px~%float64 std_py~%float64 std_pz~%================================================================================~%MSG: localization_msg/LocVelocityStd~%uint8 available~%LocVelStdGlobal vel_std_global~%LocVelStdLocal vel_std_local~%================================================================================~%MSG: localization_msg/LocVelStdGlobal~%float64 std_ve~%float64 std_vn~%float64 std_vu~%================================================================================~%MSG: localization_msg/LocVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%================================================================================~%MSG: localization_msg/LocAngularVelocityStd~%uint8 available~%LocAngVelStdLocal angvel_std_local~%================================================================================~%MSG: localization_msg/LocAngVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%================================================================================~%MSG: localization_msg/LocOrientationStd~%uint8 available~%LocOriStdXyz ori_std_xyz~%================================================================================~%MSG: localization_msg/LocOriStdXyz~%float64 std_faix~%float64 std_faiy~%float64 std_faiz~%================================================================================~%MSG: localization_msg/LocAccelerationStd~%uint8 available~%LocAccStdGlobal acc_std_global~%LocAccStdLocal acc_std_local~%================================================================================~%MSG: localization_msg/LocAccStdGlobal~%float64 std_ae~%float64 std_an~%float64 std_au~%================================================================================~%MSG: localization_msg/LocAccStdLocal~%float64 std_ax~%float64 std_ay~%float64 std_az~%================================================================================~%MSG: localization_msg/LocStatus~%uint8 available~%LocStatusInfo status_info~%================================================================================~%MSG: localization_msg/LocStatusInfo~%uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%================================================================================~%MSG: localization_msg/LocTransform~%uint8 available~%LocTransformInfo transform_llh_to_boot~%LocTransformInfo transform_avp_map_to_boot~%LocTransformInfo transform_ego_motion_to_boot~%================================================================================~%MSG: localization_msg/LocTransformInfo~%LocQuaternion transform_q~%LocPosLocal transform_t~%LocPosGlobal transform_center~%================================================================================~%MSG: localization_msg/LocPoseDetail~%uint8 available~%LocPoseDetailInfo pose_detail_info~%================================================================================~%MSG: localization_msg/LocPoseDetailInfo~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%================================================================================~%MSG: localization_msg/LocRoadLaneIdInfo~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%uint32 lane_id~%uint16 reserved~%================================================================================~%MSG: localization_msg/LocReserved~%uint8 available~%uint64[] reserved_data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocLocalization)))
  "Returns full string definition for message of type 'LocLocalization"
  (cl:format cl:nil "std_msgs/Header header~%LocLocalizationMeta meta~%LocPosition position~%LocVelocity velocity~%LocAngularVelocity angular_velocity~%LocOrientation orientation~%LocAcceleration acceleration~%LocPositionStd position_std~%LocVelocityStd velocity_std~%LocAngularVelocityStd angular_velocity_std~%LocOrientationStd orientation_std~%LocAccelerationStd acceleration_std~%LocStatus status~%LocTransform transform~%LocPoseDetail pose_detail~%LocRoadLaneIdInfo road_lane_id_info~%LocReserved reserved~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: localization_msg/LocLocalizationMeta~%uint64 timestamp_us~%uint64 seq~%================================================================================~%MSG: localization_msg/LocPosition~%uint8 available~%LocPosGlobal position_global~%LocPosLocal position_local~%================================================================================~%MSG: localization_msg/LocPosGlobal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosLocal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocVelocity~%uint8 available~%LocVelGlobal velocity_global~%LocVelLocal velocity_local~%================================================================================~%MSG: localization_msg/LocVelGlobal~%float64 ve~%float64 vn~%float64 vu~%================================================================================~%MSG: localization_msg/LocVelLocal~%float64 vx~%float64 vy~%float64 vz~%================================================================================~%MSG: localization_msg/LocAngularVelocity~%uint8 available~%LocAngVelLocal angvelocity_local~%================================================================================~%MSG: localization_msg/LocAngVelLocal~%float64 vx~%float64 vy~%float64 vz~%================================================================================~%MSG: localization_msg/LocOrientation~%uint8 available~%LocEuler euler_global~%LocQuaternion quaternion_global~%LocEuler euler_local~%LocQuaternion quaternion_local~%================================================================================~%MSG: localization_msg/LocEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: localization_msg/LocQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocAcceleration~%uint8 available~%LocAccGlobal acceleration_global~%LocAccLocal acceleration_local~%================================================================================~%MSG: localization_msg/LocAccGlobal~%float64 ae~%float64 an~%float64 au~%================================================================================~%MSG: localization_msg/LocAccLocal~%float64 ax~%float64 ay~%float64 az~%================================================================================~%MSG: localization_msg/LocPositionStd~%uint8 available~%LocPosStdGlobal pos_std_global~%LocPosStdLocal pos_std_local~%================================================================================~%MSG: localization_msg/LocPosStdGlobal~%float64 std_pe~%float64 std_pn~%float64 std_pu~%================================================================================~%MSG: localization_msg/LocPosStdLocal~%float64 std_px~%float64 std_py~%float64 std_pz~%================================================================================~%MSG: localization_msg/LocVelocityStd~%uint8 available~%LocVelStdGlobal vel_std_global~%LocVelStdLocal vel_std_local~%================================================================================~%MSG: localization_msg/LocVelStdGlobal~%float64 std_ve~%float64 std_vn~%float64 std_vu~%================================================================================~%MSG: localization_msg/LocVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%================================================================================~%MSG: localization_msg/LocAngularVelocityStd~%uint8 available~%LocAngVelStdLocal angvel_std_local~%================================================================================~%MSG: localization_msg/LocAngVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%================================================================================~%MSG: localization_msg/LocOrientationStd~%uint8 available~%LocOriStdXyz ori_std_xyz~%================================================================================~%MSG: localization_msg/LocOriStdXyz~%float64 std_faix~%float64 std_faiy~%float64 std_faiz~%================================================================================~%MSG: localization_msg/LocAccelerationStd~%uint8 available~%LocAccStdGlobal acc_std_global~%LocAccStdLocal acc_std_local~%================================================================================~%MSG: localization_msg/LocAccStdGlobal~%float64 std_ae~%float64 std_an~%float64 std_au~%================================================================================~%MSG: localization_msg/LocAccStdLocal~%float64 std_ax~%float64 std_ay~%float64 std_az~%================================================================================~%MSG: localization_msg/LocStatus~%uint8 available~%LocStatusInfo status_info~%================================================================================~%MSG: localization_msg/LocStatusInfo~%uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%================================================================================~%MSG: localization_msg/LocTransform~%uint8 available~%LocTransformInfo transform_llh_to_boot~%LocTransformInfo transform_avp_map_to_boot~%LocTransformInfo transform_ego_motion_to_boot~%================================================================================~%MSG: localization_msg/LocTransformInfo~%LocQuaternion transform_q~%LocPosLocal transform_t~%LocPosGlobal transform_center~%================================================================================~%MSG: localization_msg/LocPoseDetail~%uint8 available~%LocPoseDetailInfo pose_detail_info~%================================================================================~%MSG: localization_msg/LocPoseDetailInfo~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%================================================================================~%MSG: localization_msg/LocRoadLaneIdInfo~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%uint32 lane_id~%uint16 reserved~%================================================================================~%MSG: localization_msg/LocReserved~%uint8 available~%uint64[] reserved_data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocLocalization>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_detail))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_lane_id_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocLocalization>))
  "Converts a ROS message object to a list"
  (cl:list 'LocLocalization
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':position_std (position_std msg))
    (cl:cons ':velocity_std (velocity_std msg))
    (cl:cons ':angular_velocity_std (angular_velocity_std msg))
    (cl:cons ':orientation_std (orientation_std msg))
    (cl:cons ':acceleration_std (acceleration_std msg))
    (cl:cons ':status (status msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':pose_detail (pose_detail msg))
    (cl:cons ':road_lane_id_info (road_lane_id_info msg))
    (cl:cons ':reserved (reserved msg))
))
