; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocOrientation.msg.html

(cl:defclass <LocOrientation> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (euler_global
    :reader euler_global
    :initarg :euler_global
    :type localization_msg-msg:LocEuler
    :initform (cl:make-instance 'localization_msg-msg:LocEuler))
   (quaternion_global
    :reader quaternion_global
    :initarg :quaternion_global
    :type localization_msg-msg:LocQuaternion
    :initform (cl:make-instance 'localization_msg-msg:LocQuaternion))
   (euler_local
    :reader euler_local
    :initarg :euler_local
    :type localization_msg-msg:LocEuler
    :initform (cl:make-instance 'localization_msg-msg:LocEuler))
   (quaternion_local
    :reader quaternion_local
    :initarg :quaternion_local
    :type localization_msg-msg:LocQuaternion
    :initform (cl:make-instance 'localization_msg-msg:LocQuaternion)))
)

(cl:defclass LocOrientation (<LocOrientation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocOrientation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocOrientation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocOrientation> is deprecated: use localization_msg-msg:LocOrientation instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'euler_global-val :lambda-list '(m))
(cl:defmethod euler_global-val ((m <LocOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:euler_global-val is deprecated.  Use localization_msg-msg:euler_global instead.")
  (euler_global m))

(cl:ensure-generic-function 'quaternion_global-val :lambda-list '(m))
(cl:defmethod quaternion_global-val ((m <LocOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:quaternion_global-val is deprecated.  Use localization_msg-msg:quaternion_global instead.")
  (quaternion_global m))

(cl:ensure-generic-function 'euler_local-val :lambda-list '(m))
(cl:defmethod euler_local-val ((m <LocOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:euler_local-val is deprecated.  Use localization_msg-msg:euler_local instead.")
  (euler_local m))

(cl:ensure-generic-function 'quaternion_local-val :lambda-list '(m))
(cl:defmethod quaternion_local-val ((m <LocOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:quaternion_local-val is deprecated.  Use localization_msg-msg:quaternion_local instead.")
  (quaternion_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocOrientation>) ostream)
  "Serializes a message object of type '<LocOrientation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler_local) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocOrientation>) istream)
  "Deserializes a message object of type '<LocOrientation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler_local) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocOrientation>)))
  "Returns string type for a message object of type '<LocOrientation>"
  "localization_msg/LocOrientation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocOrientation)))
  "Returns string type for a message object of type 'LocOrientation"
  "localization_msg/LocOrientation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocOrientation>)))
  "Returns md5sum for a message object of type '<LocOrientation>"
  "d51feb8932d7b17d92287bf94b778169")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocOrientation)))
  "Returns md5sum for a message object of type 'LocOrientation"
  "d51feb8932d7b17d92287bf94b778169")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocOrientation>)))
  "Returns full string definition for message of type '<LocOrientation>"
  (cl:format cl:nil "uint8 available~%LocEuler euler_global~%LocQuaternion quaternion_global~%LocEuler euler_local~%LocQuaternion quaternion_local~%================================================================================~%MSG: localization_msg/LocEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: localization_msg/LocQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocOrientation)))
  "Returns full string definition for message of type 'LocOrientation"
  (cl:format cl:nil "uint8 available~%LocEuler euler_global~%LocQuaternion quaternion_global~%LocEuler euler_local~%LocQuaternion quaternion_local~%================================================================================~%MSG: localization_msg/LocEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: localization_msg/LocQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocOrientation>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler_local))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocOrientation>))
  "Converts a ROS message object to a list"
  (cl:list 'LocOrientation
    (cl:cons ':available (available msg))
    (cl:cons ':euler_global (euler_global msg))
    (cl:cons ':quaternion_global (quaternion_global msg))
    (cl:cons ':euler_local (euler_local msg))
    (cl:cons ':quaternion_local (quaternion_local msg))
))
