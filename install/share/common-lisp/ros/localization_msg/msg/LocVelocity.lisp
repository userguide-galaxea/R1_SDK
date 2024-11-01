; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocVelocity.msg.html

(cl:defclass <LocVelocity> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (velocity_global
    :reader velocity_global
    :initarg :velocity_global
    :type localization_msg-msg:LocVelGlobal
    :initform (cl:make-instance 'localization_msg-msg:LocVelGlobal))
   (velocity_local
    :reader velocity_local
    :initarg :velocity_local
    :type localization_msg-msg:LocVelLocal
    :initform (cl:make-instance 'localization_msg-msg:LocVelLocal)))
)

(cl:defclass LocVelocity (<LocVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocVelocity> is deprecated: use localization_msg-msg:LocVelocity instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'velocity_global-val :lambda-list '(m))
(cl:defmethod velocity_global-val ((m <LocVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:velocity_global-val is deprecated.  Use localization_msg-msg:velocity_global instead.")
  (velocity_global m))

(cl:ensure-generic-function 'velocity_local-val :lambda-list '(m))
(cl:defmethod velocity_local-val ((m <LocVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:velocity_local-val is deprecated.  Use localization_msg-msg:velocity_local instead.")
  (velocity_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocVelocity>) ostream)
  "Serializes a message object of type '<LocVelocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocVelocity>) istream)
  "Deserializes a message object of type '<LocVelocity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocVelocity>)))
  "Returns string type for a message object of type '<LocVelocity>"
  "localization_msg/LocVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocVelocity)))
  "Returns string type for a message object of type 'LocVelocity"
  "localization_msg/LocVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocVelocity>)))
  "Returns md5sum for a message object of type '<LocVelocity>"
  "a9f526371b70d001d1a3b75d8970bc2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocVelocity)))
  "Returns md5sum for a message object of type 'LocVelocity"
  "a9f526371b70d001d1a3b75d8970bc2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocVelocity>)))
  "Returns full string definition for message of type '<LocVelocity>"
  (cl:format cl:nil "uint8 available~%LocVelGlobal velocity_global~%LocVelLocal velocity_local~%================================================================================~%MSG: localization_msg/LocVelGlobal~%float64 ve~%float64 vn~%float64 vu~%================================================================================~%MSG: localization_msg/LocVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocVelocity)))
  "Returns full string definition for message of type 'LocVelocity"
  (cl:format cl:nil "uint8 available~%LocVelGlobal velocity_global~%LocVelLocal velocity_local~%================================================================================~%MSG: localization_msg/LocVelGlobal~%float64 ve~%float64 vn~%float64 vu~%================================================================================~%MSG: localization_msg/LocVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocVelocity>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'LocVelocity
    (cl:cons ':available (available msg))
    (cl:cons ':velocity_global (velocity_global msg))
    (cl:cons ':velocity_local (velocity_local msg))
))
