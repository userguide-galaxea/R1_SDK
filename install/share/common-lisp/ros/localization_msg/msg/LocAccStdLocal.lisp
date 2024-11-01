; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocAccStdLocal.msg.html

(cl:defclass <LocAccStdLocal> (roslisp-msg-protocol:ros-message)
  ((std_ax
    :reader std_ax
    :initarg :std_ax
    :type cl:float
    :initform 0.0)
   (std_ay
    :reader std_ay
    :initarg :std_ay
    :type cl:float
    :initform 0.0)
   (std_az
    :reader std_az
    :initarg :std_az
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocAccStdLocal (<LocAccStdLocal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocAccStdLocal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocAccStdLocal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocAccStdLocal> is deprecated: use localization_msg-msg:LocAccStdLocal instead.")))

(cl:ensure-generic-function 'std_ax-val :lambda-list '(m))
(cl:defmethod std_ax-val ((m <LocAccStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_ax-val is deprecated.  Use localization_msg-msg:std_ax instead.")
  (std_ax m))

(cl:ensure-generic-function 'std_ay-val :lambda-list '(m))
(cl:defmethod std_ay-val ((m <LocAccStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_ay-val is deprecated.  Use localization_msg-msg:std_ay instead.")
  (std_ay m))

(cl:ensure-generic-function 'std_az-val :lambda-list '(m))
(cl:defmethod std_az-val ((m <LocAccStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_az-val is deprecated.  Use localization_msg-msg:std_az instead.")
  (std_az m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocAccStdLocal>) ostream)
  "Serializes a message object of type '<LocAccStdLocal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocAccStdLocal>) istream)
  "Deserializes a message object of type '<LocAccStdLocal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_ax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_ay) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_az) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocAccStdLocal>)))
  "Returns string type for a message object of type '<LocAccStdLocal>"
  "localization_msg/LocAccStdLocal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocAccStdLocal)))
  "Returns string type for a message object of type 'LocAccStdLocal"
  "localization_msg/LocAccStdLocal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocAccStdLocal>)))
  "Returns md5sum for a message object of type '<LocAccStdLocal>"
  "fdb867b31b2a674c983f7e57dd32fd6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocAccStdLocal)))
  "Returns md5sum for a message object of type 'LocAccStdLocal"
  "fdb867b31b2a674c983f7e57dd32fd6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocAccStdLocal>)))
  "Returns full string definition for message of type '<LocAccStdLocal>"
  (cl:format cl:nil "float64 std_ax~%float64 std_ay~%float64 std_az~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocAccStdLocal)))
  "Returns full string definition for message of type 'LocAccStdLocal"
  (cl:format cl:nil "float64 std_ax~%float64 std_ay~%float64 std_az~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocAccStdLocal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocAccStdLocal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocAccStdLocal
    (cl:cons ':std_ax (std_ax msg))
    (cl:cons ':std_ay (std_ay msg))
    (cl:cons ':std_az (std_az msg))
))
