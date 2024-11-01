; Auto-generated. Do not edit!


(cl:in-package hdas_msg-msg)


;//! \htmlinclude bms.msg.html

(cl:defclass <bms> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:fixnum
    :initform 0)
   (capital
    :reader capital
    :initarg :capital
    :type cl:fixnum
    :initform 0))
)

(cl:defclass bms (<bms>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bms>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bms)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdas_msg-msg:<bms> is deprecated: use hdas_msg-msg:bms instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <bms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:header-val is deprecated.  Use hdas_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <bms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:voltage-val is deprecated.  Use hdas_msg-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <bms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:current-val is deprecated.  Use hdas_msg-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'capital-val :lambda-list '(m))
(cl:defmethod capital-val ((m <bms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:capital-val is deprecated.  Use hdas_msg-msg:capital instead.")
  (capital m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bms>) ostream)
  "Serializes a message object of type '<bms>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'voltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'capital)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bms>) istream)
  "Deserializes a message object of type '<bms>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'voltage) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capital) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bms>)))
  "Returns string type for a message object of type '<bms>"
  "hdas_msg/bms")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bms)))
  "Returns string type for a message object of type 'bms"
  "hdas_msg/bms")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bms>)))
  "Returns md5sum for a message object of type '<bms>"
  "c249bbc91a486340927685f24c9fded7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bms)))
  "Returns md5sum for a message object of type 'bms"
  "c249bbc91a486340927685f24c9fded7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bms>)))
  "Returns full string definition for message of type '<bms>"
  (cl:format cl:nil "std_msgs/Header header~%int16 voltage~%int16 current~%int16 capital~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bms)))
  "Returns full string definition for message of type 'bms"
  (cl:format cl:nil "std_msgs/Header header~%int16 voltage~%int16 current~%int16 capital~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bms>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bms>))
  "Converts a ROS message object to a list"
  (cl:list 'bms
    (cl:cons ':header (header msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':capital (capital msg))
))
