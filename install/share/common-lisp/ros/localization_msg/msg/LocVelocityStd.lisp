; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocVelocityStd.msg.html

(cl:defclass <LocVelocityStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (vel_std_global
    :reader vel_std_global
    :initarg :vel_std_global
    :type localization_msg-msg:LocVelStdGlobal
    :initform (cl:make-instance 'localization_msg-msg:LocVelStdGlobal))
   (vel_std_local
    :reader vel_std_local
    :initarg :vel_std_local
    :type localization_msg-msg:LocVelStdLocal
    :initform (cl:make-instance 'localization_msg-msg:LocVelStdLocal)))
)

(cl:defclass LocVelocityStd (<LocVelocityStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocVelocityStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocVelocityStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocVelocityStd> is deprecated: use localization_msg-msg:LocVelocityStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'vel_std_global-val :lambda-list '(m))
(cl:defmethod vel_std_global-val ((m <LocVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:vel_std_global-val is deprecated.  Use localization_msg-msg:vel_std_global instead.")
  (vel_std_global m))

(cl:ensure-generic-function 'vel_std_local-val :lambda-list '(m))
(cl:defmethod vel_std_local-val ((m <LocVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:vel_std_local-val is deprecated.  Use localization_msg-msg:vel_std_local instead.")
  (vel_std_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocVelocityStd>) ostream)
  "Serializes a message object of type '<LocVelocityStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_std_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_std_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocVelocityStd>) istream)
  "Deserializes a message object of type '<LocVelocityStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_std_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_std_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocVelocityStd>)))
  "Returns string type for a message object of type '<LocVelocityStd>"
  "localization_msg/LocVelocityStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocVelocityStd)))
  "Returns string type for a message object of type 'LocVelocityStd"
  "localization_msg/LocVelocityStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocVelocityStd>)))
  "Returns md5sum for a message object of type '<LocVelocityStd>"
  "cac559756cac35741cd7fe8bc8eb1ef3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocVelocityStd)))
  "Returns md5sum for a message object of type 'LocVelocityStd"
  "cac559756cac35741cd7fe8bc8eb1ef3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocVelocityStd>)))
  "Returns full string definition for message of type '<LocVelocityStd>"
  (cl:format cl:nil "uint8 available~%LocVelStdGlobal vel_std_global~%LocVelStdLocal vel_std_local~%================================================================================~%MSG: localization_msg/LocVelStdGlobal~%float64 std_ve~%float64 std_vn~%float64 std_vu~%================================================================================~%MSG: localization_msg/LocVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocVelocityStd)))
  "Returns full string definition for message of type 'LocVelocityStd"
  (cl:format cl:nil "uint8 available~%LocVelStdGlobal vel_std_global~%LocVelStdLocal vel_std_local~%================================================================================~%MSG: localization_msg/LocVelStdGlobal~%float64 std_ve~%float64 std_vn~%float64 std_vu~%================================================================================~%MSG: localization_msg/LocVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocVelocityStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_std_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_std_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocVelocityStd>))
  "Converts a ROS message object to a list"
  (cl:list 'LocVelocityStd
    (cl:cons ':available (available msg))
    (cl:cons ':vel_std_global (vel_std_global msg))
    (cl:cons ':vel_std_local (vel_std_local msg))
))
