; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocAcceleration.msg.html

(cl:defclass <LocAcceleration> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (acceleration_global
    :reader acceleration_global
    :initarg :acceleration_global
    :type localization_msg-msg:LocAccGlobal
    :initform (cl:make-instance 'localization_msg-msg:LocAccGlobal))
   (acceleration_local
    :reader acceleration_local
    :initarg :acceleration_local
    :type localization_msg-msg:LocAccLocal
    :initform (cl:make-instance 'localization_msg-msg:LocAccLocal)))
)

(cl:defclass LocAcceleration (<LocAcceleration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocAcceleration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocAcceleration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocAcceleration> is deprecated: use localization_msg-msg:LocAcceleration instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'acceleration_global-val :lambda-list '(m))
(cl:defmethod acceleration_global-val ((m <LocAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:acceleration_global-val is deprecated.  Use localization_msg-msg:acceleration_global instead.")
  (acceleration_global m))

(cl:ensure-generic-function 'acceleration_local-val :lambda-list '(m))
(cl:defmethod acceleration_local-val ((m <LocAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:acceleration_local-val is deprecated.  Use localization_msg-msg:acceleration_local instead.")
  (acceleration_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocAcceleration>) ostream)
  "Serializes a message object of type '<LocAcceleration>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocAcceleration>) istream)
  "Deserializes a message object of type '<LocAcceleration>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocAcceleration>)))
  "Returns string type for a message object of type '<LocAcceleration>"
  "localization_msg/LocAcceleration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocAcceleration)))
  "Returns string type for a message object of type 'LocAcceleration"
  "localization_msg/LocAcceleration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocAcceleration>)))
  "Returns md5sum for a message object of type '<LocAcceleration>"
  "724325e8eb34f4183b9fd545647fdfc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocAcceleration)))
  "Returns md5sum for a message object of type 'LocAcceleration"
  "724325e8eb34f4183b9fd545647fdfc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocAcceleration>)))
  "Returns full string definition for message of type '<LocAcceleration>"
  (cl:format cl:nil "uint8 available~%LocAccGlobal acceleration_global~%LocAccLocal acceleration_local~%================================================================================~%MSG: localization_msg/LocAccGlobal~%float64 ae~%float64 an~%float64 au~%================================================================================~%MSG: localization_msg/LocAccLocal~%float64 ax~%float64 ay~%float64 az~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocAcceleration)))
  "Returns full string definition for message of type 'LocAcceleration"
  (cl:format cl:nil "uint8 available~%LocAccGlobal acceleration_global~%LocAccLocal acceleration_local~%================================================================================~%MSG: localization_msg/LocAccGlobal~%float64 ae~%float64 an~%float64 au~%================================================================================~%MSG: localization_msg/LocAccLocal~%float64 ax~%float64 ay~%float64 az~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocAcceleration>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocAcceleration>))
  "Converts a ROS message object to a list"
  (cl:list 'LocAcceleration
    (cl:cons ':available (available msg))
    (cl:cons ':acceleration_global (acceleration_global msg))
    (cl:cons ':acceleration_local (acceleration_local msg))
))
