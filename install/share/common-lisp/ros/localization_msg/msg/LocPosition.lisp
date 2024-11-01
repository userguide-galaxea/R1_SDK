; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocPosition.msg.html

(cl:defclass <LocPosition> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (position_global
    :reader position_global
    :initarg :position_global
    :type localization_msg-msg:LocPosGlobal
    :initform (cl:make-instance 'localization_msg-msg:LocPosGlobal))
   (position_local
    :reader position_local
    :initarg :position_local
    :type localization_msg-msg:LocPosLocal
    :initform (cl:make-instance 'localization_msg-msg:LocPosLocal)))
)

(cl:defclass LocPosition (<LocPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocPosition> is deprecated: use localization_msg-msg:LocPosition instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'position_global-val :lambda-list '(m))
(cl:defmethod position_global-val ((m <LocPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:position_global-val is deprecated.  Use localization_msg-msg:position_global instead.")
  (position_global m))

(cl:ensure-generic-function 'position_local-val :lambda-list '(m))
(cl:defmethod position_local-val ((m <LocPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:position_local-val is deprecated.  Use localization_msg-msg:position_local instead.")
  (position_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocPosition>) ostream)
  "Serializes a message object of type '<LocPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocPosition>) istream)
  "Deserializes a message object of type '<LocPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocPosition>)))
  "Returns string type for a message object of type '<LocPosition>"
  "localization_msg/LocPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocPosition)))
  "Returns string type for a message object of type 'LocPosition"
  "localization_msg/LocPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocPosition>)))
  "Returns md5sum for a message object of type '<LocPosition>"
  "50805a3c03e9264464f9b0b6c37b9360")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocPosition)))
  "Returns md5sum for a message object of type 'LocPosition"
  "50805a3c03e9264464f9b0b6c37b9360")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocPosition>)))
  "Returns full string definition for message of type '<LocPosition>"
  (cl:format cl:nil "uint8 available~%LocPosGlobal position_global~%LocPosLocal position_local~%================================================================================~%MSG: localization_msg/LocPosGlobal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosLocal~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocPosition)))
  "Returns full string definition for message of type 'LocPosition"
  (cl:format cl:nil "uint8 available~%LocPosGlobal position_global~%LocPosLocal position_local~%================================================================================~%MSG: localization_msg/LocPosGlobal~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: localization_msg/LocPosLocal~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocPosition>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'LocPosition
    (cl:cons ':available (available msg))
    (cl:cons ':position_global (position_global msg))
    (cl:cons ':position_local (position_local msg))
))
