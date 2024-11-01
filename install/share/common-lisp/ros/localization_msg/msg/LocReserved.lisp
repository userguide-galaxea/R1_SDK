; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocReserved.msg.html

(cl:defclass <LocReserved> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (reserved_data
    :reader reserved_data
    :initarg :reserved_data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass LocReserved (<LocReserved>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocReserved>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocReserved)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocReserved> is deprecated: use localization_msg-msg:LocReserved instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocReserved>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'reserved_data-val :lambda-list '(m))
(cl:defmethod reserved_data-val ((m <LocReserved>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:reserved_data-val is deprecated.  Use localization_msg-msg:reserved_data instead.")
  (reserved_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocReserved>) ostream)
  "Serializes a message object of type '<LocReserved>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'reserved_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocReserved>) istream)
  "Deserializes a message object of type '<LocReserved>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocReserved>)))
  "Returns string type for a message object of type '<LocReserved>"
  "localization_msg/LocReserved")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocReserved)))
  "Returns string type for a message object of type 'LocReserved"
  "localization_msg/LocReserved")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocReserved>)))
  "Returns md5sum for a message object of type '<LocReserved>"
  "01bf7ee7fa3865254c05e26ac8cb514c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocReserved)))
  "Returns md5sum for a message object of type 'LocReserved"
  "01bf7ee7fa3865254c05e26ac8cb514c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocReserved>)))
  "Returns full string definition for message of type '<LocReserved>"
  (cl:format cl:nil "uint8 available~%uint64[] reserved_data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocReserved)))
  "Returns full string definition for message of type 'LocReserved"
  (cl:format cl:nil "uint8 available~%uint64[] reserved_data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocReserved>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocReserved>))
  "Converts a ROS message object to a list"
  (cl:list 'LocReserved
    (cl:cons ':available (available msg))
    (cl:cons ':reserved_data (reserved_data msg))
))
