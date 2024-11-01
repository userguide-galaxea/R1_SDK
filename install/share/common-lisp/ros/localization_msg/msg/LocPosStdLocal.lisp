; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocPosStdLocal.msg.html

(cl:defclass <LocPosStdLocal> (roslisp-msg-protocol:ros-message)
  ((std_px
    :reader std_px
    :initarg :std_px
    :type cl:float
    :initform 0.0)
   (std_py
    :reader std_py
    :initarg :std_py
    :type cl:float
    :initform 0.0)
   (std_pz
    :reader std_pz
    :initarg :std_pz
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocPosStdLocal (<LocPosStdLocal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocPosStdLocal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocPosStdLocal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocPosStdLocal> is deprecated: use localization_msg-msg:LocPosStdLocal instead.")))

(cl:ensure-generic-function 'std_px-val :lambda-list '(m))
(cl:defmethod std_px-val ((m <LocPosStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_px-val is deprecated.  Use localization_msg-msg:std_px instead.")
  (std_px m))

(cl:ensure-generic-function 'std_py-val :lambda-list '(m))
(cl:defmethod std_py-val ((m <LocPosStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_py-val is deprecated.  Use localization_msg-msg:std_py instead.")
  (std_py m))

(cl:ensure-generic-function 'std_pz-val :lambda-list '(m))
(cl:defmethod std_pz-val ((m <LocPosStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_pz-val is deprecated.  Use localization_msg-msg:std_pz instead.")
  (std_pz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocPosStdLocal>) ostream)
  "Serializes a message object of type '<LocPosStdLocal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_px))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_py))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_pz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocPosStdLocal>) istream)
  "Deserializes a message object of type '<LocPosStdLocal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_px) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_py) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_pz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocPosStdLocal>)))
  "Returns string type for a message object of type '<LocPosStdLocal>"
  "localization_msg/LocPosStdLocal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocPosStdLocal)))
  "Returns string type for a message object of type 'LocPosStdLocal"
  "localization_msg/LocPosStdLocal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocPosStdLocal>)))
  "Returns md5sum for a message object of type '<LocPosStdLocal>"
  "d1f33cc0d1e6dccecd1dd14995e930ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocPosStdLocal)))
  "Returns md5sum for a message object of type 'LocPosStdLocal"
  "d1f33cc0d1e6dccecd1dd14995e930ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocPosStdLocal>)))
  "Returns full string definition for message of type '<LocPosStdLocal>"
  (cl:format cl:nil "float64 std_px~%float64 std_py~%float64 std_pz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocPosStdLocal)))
  "Returns full string definition for message of type 'LocPosStdLocal"
  (cl:format cl:nil "float64 std_px~%float64 std_py~%float64 std_pz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocPosStdLocal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocPosStdLocal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocPosStdLocal
    (cl:cons ':std_px (std_px msg))
    (cl:cons ':std_py (std_py msg))
    (cl:cons ':std_pz (std_pz msg))
))
