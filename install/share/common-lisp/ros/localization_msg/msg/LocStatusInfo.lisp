; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocStatusInfo.msg.html

(cl:defclass <LocStatusInfo> (roslisp-msg-protocol:ros-message)
  ((quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0)
   (common
    :reader common
    :initarg :common
    :type cl:integer
    :initform 0)
   (extended
    :reader extended
    :initarg :extended
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocStatusInfo (<LocStatusInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocStatusInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocStatusInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocStatusInfo> is deprecated: use localization_msg-msg:LocStatusInfo instead.")))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <LocStatusInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:quality-val is deprecated.  Use localization_msg-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'common-val :lambda-list '(m))
(cl:defmethod common-val ((m <LocStatusInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:common-val is deprecated.  Use localization_msg-msg:common instead.")
  (common m))

(cl:ensure-generic-function 'extended-val :lambda-list '(m))
(cl:defmethod extended-val ((m <LocStatusInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:extended-val is deprecated.  Use localization_msg-msg:extended instead.")
  (extended m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LocStatusInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:type-val is deprecated.  Use localization_msg-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocStatusInfo>) ostream)
  "Serializes a message object of type '<LocStatusInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'common)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'common)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'common)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'common)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'common)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'common)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'common)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'common)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extended)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'extended)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'extended)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'extended)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'extended)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'extended)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'extended)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'extended)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocStatusInfo>) istream)
  "Deserializes a message object of type '<LocStatusInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'common)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'common)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'common)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'common)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'common)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'common)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'common)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'common)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extended)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'extended)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'extended)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'extended)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'extended)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'extended)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'extended)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'extended)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocStatusInfo>)))
  "Returns string type for a message object of type '<LocStatusInfo>"
  "localization_msg/LocStatusInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocStatusInfo)))
  "Returns string type for a message object of type 'LocStatusInfo"
  "localization_msg/LocStatusInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocStatusInfo>)))
  "Returns md5sum for a message object of type '<LocStatusInfo>"
  "8a36372e498de5e2ada620a2c8844ac6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocStatusInfo)))
  "Returns md5sum for a message object of type 'LocStatusInfo"
  "8a36372e498de5e2ada620a2c8844ac6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocStatusInfo>)))
  "Returns full string definition for message of type '<LocStatusInfo>"
  (cl:format cl:nil "uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocStatusInfo)))
  "Returns full string definition for message of type 'LocStatusInfo"
  (cl:format cl:nil "uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocStatusInfo>))
  (cl:+ 0
     1
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocStatusInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LocStatusInfo
    (cl:cons ':quality (quality msg))
    (cl:cons ':common (common msg))
    (cl:cons ':extended (extended msg))
    (cl:cons ':type (type msg))
))
