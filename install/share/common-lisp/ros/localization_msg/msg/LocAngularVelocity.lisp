; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocAngularVelocity.msg.html

(cl:defclass <LocAngularVelocity> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (angvelocity_local
    :reader angvelocity_local
    :initarg :angvelocity_local
    :type localization_msg-msg:LocAngVelLocal
    :initform (cl:make-instance 'localization_msg-msg:LocAngVelLocal)))
)

(cl:defclass LocAngularVelocity (<LocAngularVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocAngularVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocAngularVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocAngularVelocity> is deprecated: use localization_msg-msg:LocAngularVelocity instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocAngularVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'angvelocity_local-val :lambda-list '(m))
(cl:defmethod angvelocity_local-val ((m <LocAngularVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:angvelocity_local-val is deprecated.  Use localization_msg-msg:angvelocity_local instead.")
  (angvelocity_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocAngularVelocity>) ostream)
  "Serializes a message object of type '<LocAngularVelocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angvelocity_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocAngularVelocity>) istream)
  "Deserializes a message object of type '<LocAngularVelocity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angvelocity_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocAngularVelocity>)))
  "Returns string type for a message object of type '<LocAngularVelocity>"
  "localization_msg/LocAngularVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocAngularVelocity)))
  "Returns string type for a message object of type 'LocAngularVelocity"
  "localization_msg/LocAngularVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocAngularVelocity>)))
  "Returns md5sum for a message object of type '<LocAngularVelocity>"
  "1577f823da62a4c4d63b9b7db50a399c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocAngularVelocity)))
  "Returns md5sum for a message object of type 'LocAngularVelocity"
  "1577f823da62a4c4d63b9b7db50a399c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocAngularVelocity>)))
  "Returns full string definition for message of type '<LocAngularVelocity>"
  (cl:format cl:nil "uint8 available~%LocAngVelLocal angvelocity_local~%================================================================================~%MSG: localization_msg/LocAngVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocAngularVelocity)))
  "Returns full string definition for message of type 'LocAngularVelocity"
  (cl:format cl:nil "uint8 available~%LocAngVelLocal angvelocity_local~%================================================================================~%MSG: localization_msg/LocAngVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocAngularVelocity>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angvelocity_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocAngularVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'LocAngularVelocity
    (cl:cons ':available (available msg))
    (cl:cons ':angvelocity_local (angvelocity_local msg))
))
