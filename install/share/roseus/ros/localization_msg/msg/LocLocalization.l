;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocLocalization)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocLocalization (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCLOCALIZATION")
  (make-package "LOCALIZATION_MSG::LOCLOCALIZATION"))

(in-package "ROS")
;;//! \htmlinclude LocLocalization.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass localization_msg::LocLocalization
  :super ros::object
  :slots (_header _meta _position _velocity _angular_velocity _orientation _acceleration _position_std _velocity_std _angular_velocity_std _orientation_std _acceleration_std _status _transform _pose_detail _road_lane_id_info _reserved ))

(defmethod localization_msg::LocLocalization
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance localization_msg::LocLocalizationMeta :init))
    ((:position __position) (instance localization_msg::LocPosition :init))
    ((:velocity __velocity) (instance localization_msg::LocVelocity :init))
    ((:angular_velocity __angular_velocity) (instance localization_msg::LocAngularVelocity :init))
    ((:orientation __orientation) (instance localization_msg::LocOrientation :init))
    ((:acceleration __acceleration) (instance localization_msg::LocAcceleration :init))
    ((:position_std __position_std) (instance localization_msg::LocPositionStd :init))
    ((:velocity_std __velocity_std) (instance localization_msg::LocVelocityStd :init))
    ((:angular_velocity_std __angular_velocity_std) (instance localization_msg::LocAngularVelocityStd :init))
    ((:orientation_std __orientation_std) (instance localization_msg::LocOrientationStd :init))
    ((:acceleration_std __acceleration_std) (instance localization_msg::LocAccelerationStd :init))
    ((:status __status) (instance localization_msg::LocStatus :init))
    ((:transform __transform) (instance localization_msg::LocTransform :init))
    ((:pose_detail __pose_detail) (instance localization_msg::LocPoseDetail :init))
    ((:road_lane_id_info __road_lane_id_info) (instance localization_msg::LocRoadLaneIdInfo :init))
    ((:reserved __reserved) (instance localization_msg::LocReserved :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _angular_velocity __angular_velocity)
   (setq _orientation __orientation)
   (setq _acceleration __acceleration)
   (setq _position_std __position_std)
   (setq _velocity_std __velocity_std)
   (setq _angular_velocity_std __angular_velocity_std)
   (setq _orientation_std __orientation_std)
   (setq _acceleration_std __acceleration_std)
   (setq _status __status)
   (setq _transform __transform)
   (setq _pose_detail __pose_detail)
   (setq _road_lane_id_info __road_lane_id_info)
   (setq _reserved __reserved)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:position_std
   (&rest __position_std)
   (if (keywordp (car __position_std))
       (send* _position_std __position_std)
     (progn
       (if __position_std (setq _position_std (car __position_std)))
       _position_std)))
  (:velocity_std
   (&rest __velocity_std)
   (if (keywordp (car __velocity_std))
       (send* _velocity_std __velocity_std)
     (progn
       (if __velocity_std (setq _velocity_std (car __velocity_std)))
       _velocity_std)))
  (:angular_velocity_std
   (&rest __angular_velocity_std)
   (if (keywordp (car __angular_velocity_std))
       (send* _angular_velocity_std __angular_velocity_std)
     (progn
       (if __angular_velocity_std (setq _angular_velocity_std (car __angular_velocity_std)))
       _angular_velocity_std)))
  (:orientation_std
   (&rest __orientation_std)
   (if (keywordp (car __orientation_std))
       (send* _orientation_std __orientation_std)
     (progn
       (if __orientation_std (setq _orientation_std (car __orientation_std)))
       _orientation_std)))
  (:acceleration_std
   (&rest __acceleration_std)
   (if (keywordp (car __acceleration_std))
       (send* _acceleration_std __acceleration_std)
     (progn
       (if __acceleration_std (setq _acceleration_std (car __acceleration_std)))
       _acceleration_std)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:pose_detail
   (&rest __pose_detail)
   (if (keywordp (car __pose_detail))
       (send* _pose_detail __pose_detail)
     (progn
       (if __pose_detail (setq _pose_detail (car __pose_detail)))
       _pose_detail)))
  (:road_lane_id_info
   (&rest __road_lane_id_info)
   (if (keywordp (car __road_lane_id_info))
       (send* _road_lane_id_info __road_lane_id_info)
     (progn
       (if __road_lane_id_info (setq _road_lane_id_info (car __road_lane_id_info)))
       _road_lane_id_info)))
  (:reserved
   (&rest __reserved)
   (if (keywordp (car __reserved))
       (send* _reserved __reserved)
     (progn
       (if __reserved (setq _reserved (car __reserved)))
       _reserved)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; localization_msg/LocLocalizationMeta _meta
    (send _meta :serialization-length)
    ;; localization_msg/LocPosition _position
    (send _position :serialization-length)
    ;; localization_msg/LocVelocity _velocity
    (send _velocity :serialization-length)
    ;; localization_msg/LocAngularVelocity _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; localization_msg/LocOrientation _orientation
    (send _orientation :serialization-length)
    ;; localization_msg/LocAcceleration _acceleration
    (send _acceleration :serialization-length)
    ;; localization_msg/LocPositionStd _position_std
    (send _position_std :serialization-length)
    ;; localization_msg/LocVelocityStd _velocity_std
    (send _velocity_std :serialization-length)
    ;; localization_msg/LocAngularVelocityStd _angular_velocity_std
    (send _angular_velocity_std :serialization-length)
    ;; localization_msg/LocOrientationStd _orientation_std
    (send _orientation_std :serialization-length)
    ;; localization_msg/LocAccelerationStd _acceleration_std
    (send _acceleration_std :serialization-length)
    ;; localization_msg/LocStatus _status
    (send _status :serialization-length)
    ;; localization_msg/LocTransform _transform
    (send _transform :serialization-length)
    ;; localization_msg/LocPoseDetail _pose_detail
    (send _pose_detail :serialization-length)
    ;; localization_msg/LocRoadLaneIdInfo _road_lane_id_info
    (send _road_lane_id_info :serialization-length)
    ;; localization_msg/LocReserved _reserved
    (send _reserved :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; localization_msg/LocLocalizationMeta _meta
       (send _meta :serialize s)
     ;; localization_msg/LocPosition _position
       (send _position :serialize s)
     ;; localization_msg/LocVelocity _velocity
       (send _velocity :serialize s)
     ;; localization_msg/LocAngularVelocity _angular_velocity
       (send _angular_velocity :serialize s)
     ;; localization_msg/LocOrientation _orientation
       (send _orientation :serialize s)
     ;; localization_msg/LocAcceleration _acceleration
       (send _acceleration :serialize s)
     ;; localization_msg/LocPositionStd _position_std
       (send _position_std :serialize s)
     ;; localization_msg/LocVelocityStd _velocity_std
       (send _velocity_std :serialize s)
     ;; localization_msg/LocAngularVelocityStd _angular_velocity_std
       (send _angular_velocity_std :serialize s)
     ;; localization_msg/LocOrientationStd _orientation_std
       (send _orientation_std :serialize s)
     ;; localization_msg/LocAccelerationStd _acceleration_std
       (send _acceleration_std :serialize s)
     ;; localization_msg/LocStatus _status
       (send _status :serialize s)
     ;; localization_msg/LocTransform _transform
       (send _transform :serialize s)
     ;; localization_msg/LocPoseDetail _pose_detail
       (send _pose_detail :serialize s)
     ;; localization_msg/LocRoadLaneIdInfo _road_lane_id_info
       (send _road_lane_id_info :serialize s)
     ;; localization_msg/LocReserved _reserved
       (send _reserved :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; localization_msg/LocLocalizationMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; localization_msg/LocPosition _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; localization_msg/LocVelocity _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; localization_msg/LocAngularVelocity _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; localization_msg/LocOrientation _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; localization_msg/LocAcceleration _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; localization_msg/LocPositionStd _position_std
     (send _position_std :deserialize buf ptr-) (incf ptr- (send _position_std :serialization-length))
   ;; localization_msg/LocVelocityStd _velocity_std
     (send _velocity_std :deserialize buf ptr-) (incf ptr- (send _velocity_std :serialization-length))
   ;; localization_msg/LocAngularVelocityStd _angular_velocity_std
     (send _angular_velocity_std :deserialize buf ptr-) (incf ptr- (send _angular_velocity_std :serialization-length))
   ;; localization_msg/LocOrientationStd _orientation_std
     (send _orientation_std :deserialize buf ptr-) (incf ptr- (send _orientation_std :serialization-length))
   ;; localization_msg/LocAccelerationStd _acceleration_std
     (send _acceleration_std :deserialize buf ptr-) (incf ptr- (send _acceleration_std :serialization-length))
   ;; localization_msg/LocStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; localization_msg/LocTransform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; localization_msg/LocPoseDetail _pose_detail
     (send _pose_detail :deserialize buf ptr-) (incf ptr- (send _pose_detail :serialization-length))
   ;; localization_msg/LocRoadLaneIdInfo _road_lane_id_info
     (send _road_lane_id_info :deserialize buf ptr-) (incf ptr- (send _road_lane_id_info :serialization-length))
   ;; localization_msg/LocReserved _reserved
     (send _reserved :deserialize buf ptr-) (incf ptr- (send _reserved :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocLocalization :md5sum-) "c3be4520cb40af3402a4a89303299b76")
(setf (get localization_msg::LocLocalization :datatype-) "localization_msg/LocLocalization")
(setf (get localization_msg::LocLocalization :definition-)
      "std_msgs/Header header
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
")



(provide :localization_msg/LocLocalization "c3be4520cb40af3402a4a89303299b76")


