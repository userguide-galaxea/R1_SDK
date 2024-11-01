; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocPositionStd.msg.html

(cl:defclass <LocPositionStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (pos_std_global
    :reader pos_std_global
    :initarg :pos_std_global
    :type localization_msg-msg:LocPosStdGlobal
    :initform (cl:make-instance 'localization_msg-msg:LocPosStdGlobal))
   (pos_std_local
    :reader pos_std_local
    :initarg :pos_std_local
    :type localization_msg-msg:LocPosStdLocal
    :initform (cl:make-instance 'localization_msg-msg:LocPosStdLocal)))
)

(cl:defclass LocPositionStd (<LocPositionStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocPositionStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocPositionStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocPositionStd> is deprecated: use localization_msg-msg:LocPositionStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocPositionStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'pos_std_global-val :lambda-list '(m))
(cl:defmethod pos_std_global-val ((m <LocPositionStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:pos_std_global-val is deprecated.  Use localization_msg-msg:pos_std_global instead.")
  (pos_std_global m))

(cl:ensure-generic-function 'pos_std_local-val :lambda-list '(m))
(cl:defmethod pos_std_local-val ((m <LocPositionStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:pos_std_local-val is deprecated.  Use localization_msg-msg:pos_std_local instead.")
  (pos_std_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocPositionStd>) ostream)
  "Serializes a message object of type '<LocPositionStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_std_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_std_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocPositionStd>) istream)
  "Deserializes a message object of type '<LocPositionStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_std_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_std_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocPositionStd>)))
  "Returns string type for a message object of type '<LocPositionStd>"
  "localization_msg/LocPositionStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocPositionStd)))
  "Returns string type for a message object of type 'LocPositionStd"
  "localization_msg/LocPositionStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocPositionStd>)))
  "Returns md5sum for a message object of type '<LocPositionStd>"
  "fa3e734857f8512f8e0771fab07d1903")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocPositionStd)))
  "Returns md5sum for a message object of type 'LocPositionStd"
  "fa3e734857f8512f8e0771fab07d1903")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocPositionStd>)))
  "Returns full string definition for message of type '<LocPositionStd>"
  (cl:format cl:nil "uint8 available~%LocPosStdGlobal pos_std_global~%LocPosStdLocal pos_std_local~%================================================================================~%MSG: localization_msg/LocPosStdGlobal~%float64 std_pe~%float64 std_pn~%float64 std_pu~%================================================================================~%MSG: localization_msg/LocPosStdLocal~%float64 std_px~%float64 std_py~%float64 std_pz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocPositionStd)))
  "Returns full string definition for message of type 'LocPositionStd"
  (cl:format cl:nil "uint8 available~%LocPosStdGlobal pos_std_global~%LocPosStdLocal pos_std_local~%================================================================================~%MSG: localization_msg/LocPosStdGlobal~%float64 std_pe~%float64 std_pn~%float64 std_pu~%================================================================================~%MSG: localization_msg/LocPosStdLocal~%float64 std_px~%float64 std_py~%float64 std_pz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocPositionStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_std_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_std_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocPositionStd>))
  "Converts a ROS message object to a list"
  (cl:list 'LocPositionStd
    (cl:cons ':available (available msg))
    (cl:cons ':pos_std_global (pos_std_global msg))
    (cl:cons ':pos_std_local (pos_std_local msg))
))
