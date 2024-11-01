; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocLocalizationMeta.msg.html

(cl:defclass <LocLocalizationMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0))
)

(cl:defclass LocLocalizationMeta (<LocLocalizationMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocLocalizationMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocLocalizationMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocLocalizationMeta> is deprecated: use localization_msg-msg:LocLocalizationMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <LocLocalizationMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:timestamp_us-val is deprecated.  Use localization_msg-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <LocLocalizationMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:seq-val is deprecated.  Use localization_msg-msg:seq instead.")
  (seq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocLocalizationMeta>) ostream)
  "Serializes a message object of type '<LocLocalizationMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'seq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocLocalizationMeta>) istream)
  "Deserializes a message object of type '<LocLocalizationMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'seq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocLocalizationMeta>)))
  "Returns string type for a message object of type '<LocLocalizationMeta>"
  "localization_msg/LocLocalizationMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocLocalizationMeta)))
  "Returns string type for a message object of type 'LocLocalizationMeta"
  "localization_msg/LocLocalizationMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocLocalizationMeta>)))
  "Returns md5sum for a message object of type '<LocLocalizationMeta>"
  "b4492f5a97b4207064078261b17a4e9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocLocalizationMeta)))
  "Returns md5sum for a message object of type 'LocLocalizationMeta"
  "b4492f5a97b4207064078261b17a4e9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocLocalizationMeta>)))
  "Returns full string definition for message of type '<LocLocalizationMeta>"
  (cl:format cl:nil "uint64 timestamp_us~%uint64 seq~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocLocalizationMeta)))
  "Returns full string definition for message of type 'LocLocalizationMeta"
  (cl:format cl:nil "uint64 timestamp_us~%uint64 seq~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocLocalizationMeta>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocLocalizationMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'LocLocalizationMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':seq (seq msg))
))
