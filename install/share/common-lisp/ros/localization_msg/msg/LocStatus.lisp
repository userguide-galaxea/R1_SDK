; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocStatus.msg.html

(cl:defclass <LocStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (status_info
    :reader status_info
    :initarg :status_info
    :type localization_msg-msg:LocStatusInfo
    :initform (cl:make-instance 'localization_msg-msg:LocStatusInfo)))
)

(cl:defclass LocStatus (<LocStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocStatus> is deprecated: use localization_msg-msg:LocStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'status_info-val :lambda-list '(m))
(cl:defmethod status_info-val ((m <LocStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:status_info-val is deprecated.  Use localization_msg-msg:status_info instead.")
  (status_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocStatus>) ostream)
  "Serializes a message object of type '<LocStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocStatus>) istream)
  "Deserializes a message object of type '<LocStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocStatus>)))
  "Returns string type for a message object of type '<LocStatus>"
  "localization_msg/LocStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocStatus)))
  "Returns string type for a message object of type 'LocStatus"
  "localization_msg/LocStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocStatus>)))
  "Returns md5sum for a message object of type '<LocStatus>"
  "e00652c44afdc23232e5217c17a7d02e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocStatus)))
  "Returns md5sum for a message object of type 'LocStatus"
  "e00652c44afdc23232e5217c17a7d02e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocStatus>)))
  "Returns full string definition for message of type '<LocStatus>"
  (cl:format cl:nil "uint8 available~%LocStatusInfo status_info~%================================================================================~%MSG: localization_msg/LocStatusInfo~%uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocStatus)))
  "Returns full string definition for message of type 'LocStatus"
  (cl:format cl:nil "uint8 available~%LocStatusInfo status_info~%================================================================================~%MSG: localization_msg/LocStatusInfo~%uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LocStatus
    (cl:cons ':available (available msg))
    (cl:cons ':status_info (status_info msg))
))
