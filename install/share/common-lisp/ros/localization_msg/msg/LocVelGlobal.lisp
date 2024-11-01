; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocVelGlobal.msg.html

(cl:defclass <LocVelGlobal> (roslisp-msg-protocol:ros-message)
  ((ve
    :reader ve
    :initarg :ve
    :type cl:float
    :initform 0.0)
   (vn
    :reader vn
    :initarg :vn
    :type cl:float
    :initform 0.0)
   (vu
    :reader vu
    :initarg :vu
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocVelGlobal (<LocVelGlobal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocVelGlobal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocVelGlobal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocVelGlobal> is deprecated: use localization_msg-msg:LocVelGlobal instead.")))

(cl:ensure-generic-function 've-val :lambda-list '(m))
(cl:defmethod ve-val ((m <LocVelGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:ve-val is deprecated.  Use localization_msg-msg:ve instead.")
  (ve m))

(cl:ensure-generic-function 'vn-val :lambda-list '(m))
(cl:defmethod vn-val ((m <LocVelGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:vn-val is deprecated.  Use localization_msg-msg:vn instead.")
  (vn m))

(cl:ensure-generic-function 'vu-val :lambda-list '(m))
(cl:defmethod vu-val ((m <LocVelGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:vu-val is deprecated.  Use localization_msg-msg:vu instead.")
  (vu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocVelGlobal>) ostream)
  "Serializes a message object of type '<LocVelGlobal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 've))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocVelGlobal>) istream)
  "Deserializes a message object of type '<LocVelGlobal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 've) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vu) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocVelGlobal>)))
  "Returns string type for a message object of type '<LocVelGlobal>"
  "localization_msg/LocVelGlobal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocVelGlobal)))
  "Returns string type for a message object of type 'LocVelGlobal"
  "localization_msg/LocVelGlobal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocVelGlobal>)))
  "Returns md5sum for a message object of type '<LocVelGlobal>"
  "1b16a288a0ff22beae511ece39b20beb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocVelGlobal)))
  "Returns md5sum for a message object of type 'LocVelGlobal"
  "1b16a288a0ff22beae511ece39b20beb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocVelGlobal>)))
  "Returns full string definition for message of type '<LocVelGlobal>"
  (cl:format cl:nil "float64 ve~%float64 vn~%float64 vu~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocVelGlobal)))
  "Returns full string definition for message of type 'LocVelGlobal"
  (cl:format cl:nil "float64 ve~%float64 vn~%float64 vu~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocVelGlobal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocVelGlobal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocVelGlobal
    (cl:cons ':ve (ve msg))
    (cl:cons ':vn (vn msg))
    (cl:cons ':vu (vu msg))
))
