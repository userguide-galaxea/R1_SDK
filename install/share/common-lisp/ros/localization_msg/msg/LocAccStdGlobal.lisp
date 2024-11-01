; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocAccStdGlobal.msg.html

(cl:defclass <LocAccStdGlobal> (roslisp-msg-protocol:ros-message)
  ((std_ae
    :reader std_ae
    :initarg :std_ae
    :type cl:float
    :initform 0.0)
   (std_an
    :reader std_an
    :initarg :std_an
    :type cl:float
    :initform 0.0)
   (std_au
    :reader std_au
    :initarg :std_au
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocAccStdGlobal (<LocAccStdGlobal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocAccStdGlobal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocAccStdGlobal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocAccStdGlobal> is deprecated: use localization_msg-msg:LocAccStdGlobal instead.")))

(cl:ensure-generic-function 'std_ae-val :lambda-list '(m))
(cl:defmethod std_ae-val ((m <LocAccStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_ae-val is deprecated.  Use localization_msg-msg:std_ae instead.")
  (std_ae m))

(cl:ensure-generic-function 'std_an-val :lambda-list '(m))
(cl:defmethod std_an-val ((m <LocAccStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_an-val is deprecated.  Use localization_msg-msg:std_an instead.")
  (std_an m))

(cl:ensure-generic-function 'std_au-val :lambda-list '(m))
(cl:defmethod std_au-val ((m <LocAccStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_au-val is deprecated.  Use localization_msg-msg:std_au instead.")
  (std_au m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocAccStdGlobal>) ostream)
  "Serializes a message object of type '<LocAccStdGlobal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_ae))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_an))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_au))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocAccStdGlobal>) istream)
  "Deserializes a message object of type '<LocAccStdGlobal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_ae) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_an) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_au) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocAccStdGlobal>)))
  "Returns string type for a message object of type '<LocAccStdGlobal>"
  "localization_msg/LocAccStdGlobal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocAccStdGlobal)))
  "Returns string type for a message object of type 'LocAccStdGlobal"
  "localization_msg/LocAccStdGlobal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocAccStdGlobal>)))
  "Returns md5sum for a message object of type '<LocAccStdGlobal>"
  "26a185d309e37a3ff7938ddc96aab849")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocAccStdGlobal)))
  "Returns md5sum for a message object of type 'LocAccStdGlobal"
  "26a185d309e37a3ff7938ddc96aab849")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocAccStdGlobal>)))
  "Returns full string definition for message of type '<LocAccStdGlobal>"
  (cl:format cl:nil "float64 std_ae~%float64 std_an~%float64 std_au~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocAccStdGlobal)))
  "Returns full string definition for message of type 'LocAccStdGlobal"
  (cl:format cl:nil "float64 std_ae~%float64 std_an~%float64 std_au~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocAccStdGlobal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocAccStdGlobal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocAccStdGlobal
    (cl:cons ':std_ae (std_ae msg))
    (cl:cons ':std_an (std_an msg))
    (cl:cons ':std_au (std_au msg))
))
