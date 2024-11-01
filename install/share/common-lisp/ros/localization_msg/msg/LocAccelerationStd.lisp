; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocAccelerationStd.msg.html

(cl:defclass <LocAccelerationStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (acc_std_global
    :reader acc_std_global
    :initarg :acc_std_global
    :type localization_msg-msg:LocAccStdGlobal
    :initform (cl:make-instance 'localization_msg-msg:LocAccStdGlobal))
   (acc_std_local
    :reader acc_std_local
    :initarg :acc_std_local
    :type localization_msg-msg:LocAccStdLocal
    :initform (cl:make-instance 'localization_msg-msg:LocAccStdLocal)))
)

(cl:defclass LocAccelerationStd (<LocAccelerationStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocAccelerationStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocAccelerationStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocAccelerationStd> is deprecated: use localization_msg-msg:LocAccelerationStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocAccelerationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'acc_std_global-val :lambda-list '(m))
(cl:defmethod acc_std_global-val ((m <LocAccelerationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:acc_std_global-val is deprecated.  Use localization_msg-msg:acc_std_global instead.")
  (acc_std_global m))

(cl:ensure-generic-function 'acc_std_local-val :lambda-list '(m))
(cl:defmethod acc_std_local-val ((m <LocAccelerationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:acc_std_local-val is deprecated.  Use localization_msg-msg:acc_std_local instead.")
  (acc_std_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocAccelerationStd>) ostream)
  "Serializes a message object of type '<LocAccelerationStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_std_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_std_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocAccelerationStd>) istream)
  "Deserializes a message object of type '<LocAccelerationStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_std_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_std_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocAccelerationStd>)))
  "Returns string type for a message object of type '<LocAccelerationStd>"
  "localization_msg/LocAccelerationStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocAccelerationStd)))
  "Returns string type for a message object of type 'LocAccelerationStd"
  "localization_msg/LocAccelerationStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocAccelerationStd>)))
  "Returns md5sum for a message object of type '<LocAccelerationStd>"
  "a32c28cbafd6527f52d23800ca583be9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocAccelerationStd)))
  "Returns md5sum for a message object of type 'LocAccelerationStd"
  "a32c28cbafd6527f52d23800ca583be9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocAccelerationStd>)))
  "Returns full string definition for message of type '<LocAccelerationStd>"
  (cl:format cl:nil "uint8 available~%LocAccStdGlobal acc_std_global~%LocAccStdLocal acc_std_local~%================================================================================~%MSG: localization_msg/LocAccStdGlobal~%float64 std_ae~%float64 std_an~%float64 std_au~%================================================================================~%MSG: localization_msg/LocAccStdLocal~%float64 std_ax~%float64 std_ay~%float64 std_az~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocAccelerationStd)))
  "Returns full string definition for message of type 'LocAccelerationStd"
  (cl:format cl:nil "uint8 available~%LocAccStdGlobal acc_std_global~%LocAccStdLocal acc_std_local~%================================================================================~%MSG: localization_msg/LocAccStdGlobal~%float64 std_ae~%float64 std_an~%float64 std_au~%================================================================================~%MSG: localization_msg/LocAccStdLocal~%float64 std_ax~%float64 std_ay~%float64 std_az~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocAccelerationStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_std_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_std_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocAccelerationStd>))
  "Converts a ROS message object to a list"
  (cl:list 'LocAccelerationStd
    (cl:cons ':available (available msg))
    (cl:cons ':acc_std_global (acc_std_global msg))
    (cl:cons ':acc_std_local (acc_std_local msg))
))
