; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocAccLocal.msg.html

(cl:defclass <LocAccLocal> (roslisp-msg-protocol:ros-message)
  ((ax
    :reader ax
    :initarg :ax
    :type cl:float
    :initform 0.0)
   (ay
    :reader ay
    :initarg :ay
    :type cl:float
    :initform 0.0)
   (az
    :reader az
    :initarg :az
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocAccLocal (<LocAccLocal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocAccLocal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocAccLocal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocAccLocal> is deprecated: use localization_msg-msg:LocAccLocal instead.")))

(cl:ensure-generic-function 'ax-val :lambda-list '(m))
(cl:defmethod ax-val ((m <LocAccLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:ax-val is deprecated.  Use localization_msg-msg:ax instead.")
  (ax m))

(cl:ensure-generic-function 'ay-val :lambda-list '(m))
(cl:defmethod ay-val ((m <LocAccLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:ay-val is deprecated.  Use localization_msg-msg:ay instead.")
  (ay m))

(cl:ensure-generic-function 'az-val :lambda-list '(m))
(cl:defmethod az-val ((m <LocAccLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:az-val is deprecated.  Use localization_msg-msg:az instead.")
  (az m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocAccLocal>) ostream)
  "Serializes a message object of type '<LocAccLocal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocAccLocal>) istream)
  "Deserializes a message object of type '<LocAccLocal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ay) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'az) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocAccLocal>)))
  "Returns string type for a message object of type '<LocAccLocal>"
  "localization_msg/LocAccLocal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocAccLocal)))
  "Returns string type for a message object of type 'LocAccLocal"
  "localization_msg/LocAccLocal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocAccLocal>)))
  "Returns md5sum for a message object of type '<LocAccLocal>"
  "271a8351f08a1993852d2e5e55f1efa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocAccLocal)))
  "Returns md5sum for a message object of type 'LocAccLocal"
  "271a8351f08a1993852d2e5e55f1efa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocAccLocal>)))
  "Returns full string definition for message of type '<LocAccLocal>"
  (cl:format cl:nil "float64 ax~%float64 ay~%float64 az~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocAccLocal)))
  "Returns full string definition for message of type 'LocAccLocal"
  (cl:format cl:nil "float64 ax~%float64 ay~%float64 az~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocAccLocal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocAccLocal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocAccLocal
    (cl:cons ':ax (ax msg))
    (cl:cons ':ay (ay msg))
    (cl:cons ':az (az msg))
))
