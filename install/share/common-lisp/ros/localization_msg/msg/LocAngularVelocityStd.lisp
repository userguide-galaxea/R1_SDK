; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocAngularVelocityStd.msg.html

(cl:defclass <LocAngularVelocityStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (angvel_std_local
    :reader angvel_std_local
    :initarg :angvel_std_local
    :type localization_msg-msg:LocAngVelStdLocal
    :initform (cl:make-instance 'localization_msg-msg:LocAngVelStdLocal)))
)

(cl:defclass LocAngularVelocityStd (<LocAngularVelocityStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocAngularVelocityStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocAngularVelocityStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocAngularVelocityStd> is deprecated: use localization_msg-msg:LocAngularVelocityStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocAngularVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'angvel_std_local-val :lambda-list '(m))
(cl:defmethod angvel_std_local-val ((m <LocAngularVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:angvel_std_local-val is deprecated.  Use localization_msg-msg:angvel_std_local instead.")
  (angvel_std_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocAngularVelocityStd>) ostream)
  "Serializes a message object of type '<LocAngularVelocityStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angvel_std_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocAngularVelocityStd>) istream)
  "Deserializes a message object of type '<LocAngularVelocityStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angvel_std_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocAngularVelocityStd>)))
  "Returns string type for a message object of type '<LocAngularVelocityStd>"
  "localization_msg/LocAngularVelocityStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocAngularVelocityStd)))
  "Returns string type for a message object of type 'LocAngularVelocityStd"
  "localization_msg/LocAngularVelocityStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocAngularVelocityStd>)))
  "Returns md5sum for a message object of type '<LocAngularVelocityStd>"
  "3d58b49b7890de9832cfd396d122e5e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocAngularVelocityStd)))
  "Returns md5sum for a message object of type 'LocAngularVelocityStd"
  "3d58b49b7890de9832cfd396d122e5e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocAngularVelocityStd>)))
  "Returns full string definition for message of type '<LocAngularVelocityStd>"
  (cl:format cl:nil "uint8 available~%LocAngVelStdLocal angvel_std_local~%================================================================================~%MSG: localization_msg/LocAngVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocAngularVelocityStd)))
  "Returns full string definition for message of type 'LocAngularVelocityStd"
  (cl:format cl:nil "uint8 available~%LocAngVelStdLocal angvel_std_local~%================================================================================~%MSG: localization_msg/LocAngVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocAngularVelocityStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angvel_std_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocAngularVelocityStd>))
  "Converts a ROS message object to a list"
  (cl:list 'LocAngularVelocityStd
    (cl:cons ':available (available msg))
    (cl:cons ':angvel_std_local (angvel_std_local msg))
))
