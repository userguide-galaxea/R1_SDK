; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocPoseDetailInfo.msg.html

(cl:defclass <LocPoseDetailInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (is_keyframe
    :reader is_keyframe
    :initarg :is_keyframe
    :type cl:boolean
    :initform cl:nil)
   (has_scale
    :reader has_scale
    :initarg :has_scale
    :type cl:boolean
    :initform cl:nil)
   (pose_type
    :reader pose_type
    :initarg :pose_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocPoseDetailInfo (<LocPoseDetailInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocPoseDetailInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocPoseDetailInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocPoseDetailInfo> is deprecated: use localization_msg-msg:LocPoseDetailInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocPoseDetailInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'is_keyframe-val :lambda-list '(m))
(cl:defmethod is_keyframe-val ((m <LocPoseDetailInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:is_keyframe-val is deprecated.  Use localization_msg-msg:is_keyframe instead.")
  (is_keyframe m))

(cl:ensure-generic-function 'has_scale-val :lambda-list '(m))
(cl:defmethod has_scale-val ((m <LocPoseDetailInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:has_scale-val is deprecated.  Use localization_msg-msg:has_scale instead.")
  (has_scale m))

(cl:ensure-generic-function 'pose_type-val :lambda-list '(m))
(cl:defmethod pose_type-val ((m <LocPoseDetailInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:pose_type-val is deprecated.  Use localization_msg-msg:pose_type instead.")
  (pose_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocPoseDetailInfo>) ostream)
  "Serializes a message object of type '<LocPoseDetailInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_keyframe) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_scale) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pose_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocPoseDetailInfo>) istream)
  "Deserializes a message object of type '<LocPoseDetailInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_keyframe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'has_scale) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pose_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocPoseDetailInfo>)))
  "Returns string type for a message object of type '<LocPoseDetailInfo>"
  "localization_msg/LocPoseDetailInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocPoseDetailInfo)))
  "Returns string type for a message object of type 'LocPoseDetailInfo"
  "localization_msg/LocPoseDetailInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocPoseDetailInfo>)))
  "Returns md5sum for a message object of type '<LocPoseDetailInfo>"
  "7acfcd9c3212736da0f2f283eb3505b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocPoseDetailInfo)))
  "Returns md5sum for a message object of type 'LocPoseDetailInfo"
  "7acfcd9c3212736da0f2f283eb3505b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocPoseDetailInfo>)))
  "Returns full string definition for message of type '<LocPoseDetailInfo>"
  (cl:format cl:nil "uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocPoseDetailInfo)))
  "Returns full string definition for message of type 'LocPoseDetailInfo"
  (cl:format cl:nil "uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocPoseDetailInfo>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocPoseDetailInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LocPoseDetailInfo
    (cl:cons ':available (available msg))
    (cl:cons ':is_keyframe (is_keyframe msg))
    (cl:cons ':has_scale (has_scale msg))
    (cl:cons ':pose_type (pose_type msg))
))
