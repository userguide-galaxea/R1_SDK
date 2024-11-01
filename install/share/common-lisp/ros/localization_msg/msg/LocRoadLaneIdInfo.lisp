; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocRoadLaneIdInfo.msg.html

(cl:defclass <LocRoadLaneIdInfo> (roslisp-msg-protocol:ros-message)
  ((ur_id
    :reader ur_id
    :initarg :ur_id
    :type cl:fixnum
    :initform 0)
   (tile_id
    :reader tile_id
    :initarg :tile_id
    :type cl:integer
    :initform 0)
   (road_count
    :reader road_count
    :initarg :road_count
    :type cl:integer
    :initform 0)
   (lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocRoadLaneIdInfo (<LocRoadLaneIdInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocRoadLaneIdInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocRoadLaneIdInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocRoadLaneIdInfo> is deprecated: use localization_msg-msg:LocRoadLaneIdInfo instead.")))

(cl:ensure-generic-function 'ur_id-val :lambda-list '(m))
(cl:defmethod ur_id-val ((m <LocRoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:ur_id-val is deprecated.  Use localization_msg-msg:ur_id instead.")
  (ur_id m))

(cl:ensure-generic-function 'tile_id-val :lambda-list '(m))
(cl:defmethod tile_id-val ((m <LocRoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:tile_id-val is deprecated.  Use localization_msg-msg:tile_id instead.")
  (tile_id m))

(cl:ensure-generic-function 'road_count-val :lambda-list '(m))
(cl:defmethod road_count-val ((m <LocRoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:road_count-val is deprecated.  Use localization_msg-msg:road_count instead.")
  (road_count m))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <LocRoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:lane_id-val is deprecated.  Use localization_msg-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <LocRoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:reserved-val is deprecated.  Use localization_msg-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocRoadLaneIdInfo>) ostream)
  "Serializes a message object of type '<LocRoadLaneIdInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ur_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ur_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'road_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'road_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'road_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocRoadLaneIdInfo>) istream)
  "Deserializes a message object of type '<LocRoadLaneIdInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ur_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ur_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'road_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'road_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'road_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocRoadLaneIdInfo>)))
  "Returns string type for a message object of type '<LocRoadLaneIdInfo>"
  "localization_msg/LocRoadLaneIdInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocRoadLaneIdInfo)))
  "Returns string type for a message object of type 'LocRoadLaneIdInfo"
  "localization_msg/LocRoadLaneIdInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocRoadLaneIdInfo>)))
  "Returns md5sum for a message object of type '<LocRoadLaneIdInfo>"
  "6401b02517079499dbfd18d5fa820bef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocRoadLaneIdInfo)))
  "Returns md5sum for a message object of type 'LocRoadLaneIdInfo"
  "6401b02517079499dbfd18d5fa820bef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocRoadLaneIdInfo>)))
  "Returns full string definition for message of type '<LocRoadLaneIdInfo>"
  (cl:format cl:nil "uint16 ur_id~%uint32 tile_id~%uint32 road_count~%uint32 lane_id~%uint16 reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocRoadLaneIdInfo)))
  "Returns full string definition for message of type 'LocRoadLaneIdInfo"
  (cl:format cl:nil "uint16 ur_id~%uint32 tile_id~%uint32 road_count~%uint32 lane_id~%uint16 reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocRoadLaneIdInfo>))
  (cl:+ 0
     2
     4
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocRoadLaneIdInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LocRoadLaneIdInfo
    (cl:cons ':ur_id (ur_id msg))
    (cl:cons ':tile_id (tile_id msg))
    (cl:cons ':road_count (road_count msg))
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':reserved (reserved msg))
))
