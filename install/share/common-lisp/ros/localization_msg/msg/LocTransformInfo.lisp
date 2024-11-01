; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocTransformInfo.msg.html

(cl:defclass <LocTransformInfo> (roslisp-msg-protocol:ros-message)
  ((transform_q
    :reader transform_q
    :initarg :transform_q
    :type localization_msg-msg:LocQuaternion
    :initform (cl:make-instance 'localization_msg-msg:LocQuaternion))
   (transform_t
    :reader transform_t
    :initarg :transform_t
    :type localization_msg-msg:LocPosLocal
    :initform (cl:make-instance 'localization_msg-msg:LocPosLocal))
   (transform_center
    :reader transform_center
    :initarg :transform_center
    :type localization_msg-msg:LocPosGlobal
    :initform (cl:make-instance 'localization_msg-msg:LocPosGlobal)))
)

(cl:defclass LocTransformInfo (<LocTransformInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocTransformInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocTransformInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocTransformInfo> is deprecated: use localization_msg-msg:LocTransformInfo instead.")))

(cl:ensure-generic-function 'transform_q-val :lambda-list '(m))
(cl:defmethod transform_q-val ((m <LocTransformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:transform_q-val is deprecated.  Use localization_msg-msg:transform_q instead.")
  (transform_q m))

(cl:ensure-generic-function 'transform_t-val :lambda-list '(m))
(cl:defmethod transform_t-val ((m <LocTransformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:transform_t-val is deprecated.  Use localization_msg-msg:transform_t instead.")
  (transform_t m))

(cl:ensure-generic-function 'transform_center-val :lambda-list '(m))
(cl:defmethod transform_center-val ((m <LocTransformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:transform_center-val is deprecated.  Use localization_msg-msg:transform_center instead.")
  (transform_center m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocTransformInfo>) ostream)
  "Serializes a message object of type '<LocTransformInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_t) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_center) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocTransformInfo>) istream)
  "Deserializes a message object of type '<LocTransformInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_t) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_center) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocTransformInfo>)))
  "Returns string type for a message object of type '<LocTransformInfo>"
  "localization_msg/LocTransformInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocTransformInfo)))
  "Returns string type for a message object of type 'LocTransformInfo"
  "localization_msg/LocTransformInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocTransformInfo>)))
  "Returns md5sum for a message object of type '<LocTransformInfo>"
  "9b46b84084dc9d2a0fe41cb847809c2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocTransformInfo)))
  "Returns md5sum for a message object of type 'LocTransformInfo"
  "9b46b84084dc9d2a0fe41cb847809c2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocTransformInfo>)))
  "Returns full string definition for message of type '<LocTransformInfo>"
  (cl:format cl:nil "LocQuaternion transform_q~%LocPosLocal transform_t~%LocPosGlobal transform_center~%================================================================================~%MSG: localization_msg/LocQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosLocal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosGlobal~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocTransformInfo)))
  "Returns full string definition for message of type 'LocTransformInfo"
  (cl:format cl:nil "LocQuaternion transform_q~%LocPosLocal transform_t~%LocPosGlobal transform_center~%================================================================================~%MSG: localization_msg/LocQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosLocal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosGlobal~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocTransformInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_t))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_center))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocTransformInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LocTransformInfo
    (cl:cons ':transform_q (transform_q msg))
    (cl:cons ':transform_t (transform_t msg))
    (cl:cons ':transform_center (transform_center msg))
))
