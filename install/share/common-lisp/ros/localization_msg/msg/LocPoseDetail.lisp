; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocPoseDetail.msg.html

(cl:defclass <LocPoseDetail> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (pose_detail_info
    :reader pose_detail_info
    :initarg :pose_detail_info
    :type localization_msg-msg:LocPoseDetailInfo
    :initform (cl:make-instance 'localization_msg-msg:LocPoseDetailInfo)))
)

(cl:defclass LocPoseDetail (<LocPoseDetail>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocPoseDetail>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocPoseDetail)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocPoseDetail> is deprecated: use localization_msg-msg:LocPoseDetail instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocPoseDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'pose_detail_info-val :lambda-list '(m))
(cl:defmethod pose_detail_info-val ((m <LocPoseDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:pose_detail_info-val is deprecated.  Use localization_msg-msg:pose_detail_info instead.")
  (pose_detail_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocPoseDetail>) ostream)
  "Serializes a message object of type '<LocPoseDetail>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_detail_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocPoseDetail>) istream)
  "Deserializes a message object of type '<LocPoseDetail>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_detail_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocPoseDetail>)))
  "Returns string type for a message object of type '<LocPoseDetail>"
  "localization_msg/LocPoseDetail")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocPoseDetail)))
  "Returns string type for a message object of type 'LocPoseDetail"
  "localization_msg/LocPoseDetail")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocPoseDetail>)))
  "Returns md5sum for a message object of type '<LocPoseDetail>"
  "004458d6e21a0d465dbae5ebb975fba4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocPoseDetail)))
  "Returns md5sum for a message object of type 'LocPoseDetail"
  "004458d6e21a0d465dbae5ebb975fba4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocPoseDetail>)))
  "Returns full string definition for message of type '<LocPoseDetail>"
  (cl:format cl:nil "uint8 available~%LocPoseDetailInfo pose_detail_info~%================================================================================~%MSG: localization_msg/LocPoseDetailInfo~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocPoseDetail)))
  "Returns full string definition for message of type 'LocPoseDetail"
  (cl:format cl:nil "uint8 available~%LocPoseDetailInfo pose_detail_info~%================================================================================~%MSG: localization_msg/LocPoseDetailInfo~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocPoseDetail>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_detail_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocPoseDetail>))
  "Converts a ROS message object to a list"
  (cl:list 'LocPoseDetail
    (cl:cons ':available (available msg))
    (cl:cons ':pose_detail_info (pose_detail_info msg))
))
