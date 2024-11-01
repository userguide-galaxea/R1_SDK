; Auto-generated. Do not edit!


(cl:in-package localization_msg-msg)


;//! \htmlinclude LocOriStdXyz.msg.html

(cl:defclass <LocOriStdXyz> (roslisp-msg-protocol:ros-message)
  ((std_faix
    :reader std_faix
    :initarg :std_faix
    :type cl:float
    :initform 0.0)
   (std_faiy
    :reader std_faiy
    :initarg :std_faiy
    :type cl:float
    :initform 0.0)
   (std_faiz
    :reader std_faiz
    :initarg :std_faiz
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocOriStdXyz (<LocOriStdXyz>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocOriStdXyz>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocOriStdXyz)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msg-msg:<LocOriStdXyz> is deprecated: use localization_msg-msg:LocOriStdXyz instead.")))

(cl:ensure-generic-function 'std_faix-val :lambda-list '(m))
(cl:defmethod std_faix-val ((m <LocOriStdXyz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_faix-val is deprecated.  Use localization_msg-msg:std_faix instead.")
  (std_faix m))

(cl:ensure-generic-function 'std_faiy-val :lambda-list '(m))
(cl:defmethod std_faiy-val ((m <LocOriStdXyz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_faiy-val is deprecated.  Use localization_msg-msg:std_faiy instead.")
  (std_faiy m))

(cl:ensure-generic-function 'std_faiz-val :lambda-list '(m))
(cl:defmethod std_faiz-val ((m <LocOriStdXyz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msg-msg:std_faiz-val is deprecated.  Use localization_msg-msg:std_faiz instead.")
  (std_faiz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocOriStdXyz>) ostream)
  "Serializes a message object of type '<LocOriStdXyz>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_faix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_faiy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_faiz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocOriStdXyz>) istream)
  "Deserializes a message object of type '<LocOriStdXyz>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_faix) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_faiy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_faiz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocOriStdXyz>)))
  "Returns string type for a message object of type '<LocOriStdXyz>"
  "localization_msg/LocOriStdXyz")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocOriStdXyz)))
  "Returns string type for a message object of type 'LocOriStdXyz"
  "localization_msg/LocOriStdXyz")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocOriStdXyz>)))
  "Returns md5sum for a message object of type '<LocOriStdXyz>"
  "4321d049e56b7aec6a5970a3463d66bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocOriStdXyz)))
  "Returns md5sum for a message object of type 'LocOriStdXyz"
  "4321d049e56b7aec6a5970a3463d66bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocOriStdXyz>)))
  "Returns full string definition for message of type '<LocOriStdXyz>"
  (cl:format cl:nil "float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocOriStdXyz)))
  "Returns full string definition for message of type 'LocOriStdXyz"
  (cl:format cl:nil "float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocOriStdXyz>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocOriStdXyz>))
  "Converts a ROS message object to a list"
  (cl:list 'LocOriStdXyz
    (cl:cons ':std_faix (std_faix msg))
    (cl:cons ':std_faiy (std_faiy msg))
    (cl:cons ':std_faiz (std_faiz msg))
))
