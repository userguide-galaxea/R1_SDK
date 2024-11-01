; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocOrientationStd.msg.html

(cl:defclass <LocOrientationStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (ori_std_xyz
    :reader ori_std_xyz
    :initarg :ori_std_xyz
    :type localization_msg-msg:LocOriStdXyz
    :initform (cl:make-instance 'localization_msg-msg:LocOriStdXyz)))
)

(cl:defclass LocOrientationStd (<LocOrientationStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocOrientationStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocOrientationStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocOrientationStd> is deprecated: use localization_msg-msg:LocOrientationStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocOrientationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:available-val is deprecated.  Use localization_msg-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'ori_std_xyz-val :lambda-list '(m))
(cl:defmethod ori_std_xyz-val ((m <LocOrientationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:ori_std_xyz-val is deprecated.  Use localization_msg-msg:ori_std_xyz instead.")
  (ori_std_xyz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocOrientationStd>) ostream)
  "Serializes a message object of type '<LocOrientationStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ori_std_xyz) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocOrientationStd>) istream)
  "Deserializes a message object of type '<LocOrientationStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ori_std_xyz) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocOrientationStd>)))
  "Returns string type for a message object of type '<LocOrientationStd>"
  "localization_msg/LocOrientationStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocOrientationStd)))
  "Returns string type for a message object of type 'LocOrientationStd"
  "localization_msg/LocOrientationStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocOrientationStd>)))
  "Returns md5sum for a message object of type '<LocOrientationStd>"
  "619b5d9fe08a8b0c2bbdd05b77fd532a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocOrientationStd)))
  "Returns md5sum for a message object of type 'LocOrientationStd"
  "619b5d9fe08a8b0c2bbdd05b77fd532a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocOrientationStd>)))
  "Returns full string definition for message of type '<LocOrientationStd>"
  (cl:format cl:nil "uint8 available~%LocOriStdXyz ori_std_xyz~%================================================================================~%MSG: localization_msg/LocOriStdXyz~%float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocOrientationStd)))
  "Returns full string definition for message of type 'LocOrientationStd"
  (cl:format cl:nil "uint8 available~%LocOriStdXyz ori_std_xyz~%================================================================================~%MSG: localization_msg/LocOriStdXyz~%float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocOrientationStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ori_std_xyz))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocOrientationStd>))
  "Converts a ROS message object to a list"
  (cl:list 'LocOrientationStd
    (cl:cons ':available (available msg))
    (cl:cons ':ori_std_xyz (ori_std_xyz msg))
))
