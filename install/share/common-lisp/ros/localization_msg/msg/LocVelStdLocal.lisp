; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocVelStdLocal.msg.html

(cl:defclass <LocVelStdLocal> (roslisp-msg-protocol:ros-message)
  ((std_vx
    :reader std_vx
    :initarg :std_vx
    :type cl:float
    :initform 0.0)
   (std_vy
    :reader std_vy
    :initarg :std_vy
    :type cl:float
    :initform 0.0)
   (std_vz
    :reader std_vz
    :initarg :std_vz
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocVelStdLocal (<LocVelStdLocal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocVelStdLocal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocVelStdLocal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocVelStdLocal> is deprecated: use localization_msg-msg:LocVelStdLocal instead.")))

(cl:ensure-generic-function 'std_vx-val :lambda-list '(m))
(cl:defmethod std_vx-val ((m <LocVelStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_vx-val is deprecated.  Use localization_msg-msg:std_vx instead.")
  (std_vx m))

(cl:ensure-generic-function 'std_vy-val :lambda-list '(m))
(cl:defmethod std_vy-val ((m <LocVelStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_vy-val is deprecated.  Use localization_msg-msg:std_vy instead.")
  (std_vy m))

(cl:ensure-generic-function 'std_vz-val :lambda-list '(m))
(cl:defmethod std_vz-val ((m <LocVelStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_vz-val is deprecated.  Use localization_msg-msg:std_vz instead.")
  (std_vz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocVelStdLocal>) ostream)
  "Serializes a message object of type '<LocVelStdLocal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocVelStdLocal>) istream)
  "Deserializes a message object of type '<LocVelStdLocal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_vy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_vz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocVelStdLocal>)))
  "Returns string type for a message object of type '<LocVelStdLocal>"
  "localization_msg/LocVelStdLocal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocVelStdLocal)))
  "Returns string type for a message object of type 'LocVelStdLocal"
  "localization_msg/LocVelStdLocal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocVelStdLocal>)))
  "Returns md5sum for a message object of type '<LocVelStdLocal>"
  "714b0488d1b05ea8fb95fcdd2da24c03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocVelStdLocal)))
  "Returns md5sum for a message object of type 'LocVelStdLocal"
  "714b0488d1b05ea8fb95fcdd2da24c03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocVelStdLocal>)))
  "Returns full string definition for message of type '<LocVelStdLocal>"
  (cl:format cl:nil "float64 std_vx~%float64 std_vy~%float64 std_vz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocVelStdLocal)))
  "Returns full string definition for message of type 'LocVelStdLocal"
  (cl:format cl:nil "float64 std_vx~%float64 std_vy~%float64 std_vz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocVelStdLocal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocVelStdLocal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocVelStdLocal
    (cl:cons ':std_vx (std_vx msg))
    (cl:cons ':std_vy (std_vy msg))
    (cl:cons ':std_vz (std_vz msg))
))
