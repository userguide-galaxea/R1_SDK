; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocTransform.msg.html

(cl:defclass <LocTransform> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (transform_llh_to_boot
    :reader transform_llh_to_boot
    :initarg :transform_llh_to_boot
    :type localization_msg-msg:LocTransformInfo
    :initform (cl:make-instance 'localization_msg-msg:LocTransformInfo))
   (transform_avp_map_to_boot
    :reader transform_avp_map_to_boot
    :initarg :transform_avp_map_to_boot
    :type localization_msg-msg:LocTransformInfo
    :initform (cl:make-instance 'localization_msg-msg:LocTransformInfo))
   (transform_ego_motion_to_boot
    :reader transform_ego_motion_to_boot
    :initarg :transform_ego_motion_to_boot
    :type localization_msg-msg:LocTransformInfo
    :initform (cl:make-instance 'localization_msg-msg:LocTransformInfo)))
)

(cl:defclass LocTransform (<LocTransform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocTransform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocTransform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocTransform> is deprecated: use localization_msg-msg:LocTransform instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'transform_llh_to_boot-val :lambda-list '(m))
(cl:defmethod transform_llh_to_boot-val ((m <LocTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:transform_llh_to_boot-val is deprecated.  Use localization_msg-msg:transform_llh_to_boot instead.")
  (transform_llh_to_boot m))

(cl:ensure-generic-function 'transform_avp_map_to_boot-val :lambda-list '(m))
(cl:defmethod transform_avp_map_to_boot-val ((m <LocTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:transform_avp_map_to_boot-val is deprecated.  Use localization_msg-msg:transform_avp_map_to_boot instead.")
  (transform_avp_map_to_boot m))

(cl:ensure-generic-function 'transform_ego_motion_to_boot-val :lambda-list '(m))
(cl:defmethod transform_ego_motion_to_boot-val ((m <LocTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:transform_ego_motion_to_boot-val is deprecated.  Use localization_msg-msg:transform_ego_motion_to_boot instead.")
  (transform_ego_motion_to_boot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocTransform>) ostream)
  "Serializes a message object of type '<LocTransform>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_llh_to_boot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_avp_map_to_boot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_ego_motion_to_boot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocTransform>) istream)
  "Deserializes a message object of type '<LocTransform>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_llh_to_boot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_avp_map_to_boot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_ego_motion_to_boot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocTransform>)))
  "Returns string type for a message object of type '<LocTransform>"
  "localization_msg/LocTransform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocTransform)))
  "Returns string type for a message object of type 'LocTransform"
  "localization_msg/LocTransform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocTransform>)))
  "Returns md5sum for a message object of type '<LocTransform>"
  "3d6a2de0b6a829c7a528510f80cc997a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocTransform)))
  "Returns md5sum for a message object of type 'LocTransform"
  "3d6a2de0b6a829c7a528510f80cc997a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocTransform>)))
  "Returns full string definition for message of type '<LocTransform>"
  (cl:format cl:nil "uint8 available~%LocTransformInfo transform_llh_to_boot~%LocTransformInfo transform_avp_map_to_boot~%LocTransformInfo transform_ego_motion_to_boot~%================================================================================~%MSG: localization_msg/LocTransformInfo~%LocQuaternion transform_q~%LocPosLocal transform_t~%LocPosGlobal transform_center~%================================================================================~%MSG: localization_msg/LocQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosLocal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosGlobal~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocTransform)))
  "Returns full string definition for message of type 'LocTransform"
  (cl:format cl:nil "uint8 available~%LocTransformInfo transform_llh_to_boot~%LocTransformInfo transform_avp_map_to_boot~%LocTransformInfo transform_ego_motion_to_boot~%================================================================================~%MSG: localization_msg/LocTransformInfo~%LocQuaternion transform_q~%LocPosLocal transform_t~%LocPosGlobal transform_center~%================================================================================~%MSG: localization_msg/LocQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosLocal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosGlobal~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocTransform>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_llh_to_boot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_avp_map_to_boot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_ego_motion_to_boot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocTransform>))
  "Converts a ROS message object to a list"
  (cl:list 'LocTransform
    (cl:cons ':available (available msg))
    (cl:cons ':transform_llh_to_boot (transform_llh_to_boot msg))
    (cl:cons ':transform_avp_map_to_boot (transform_avp_map_to_boot msg))
    (cl:cons ':transform_ego_motion_to_boot (transform_ego_motion_to_boot msg))
))
