; Auto-generated. Do not edit!


(cl:in-package hdas_msg-msg)


;//! \htmlinclude Drivetrain.msg.html

(cl:defclass <Drivetrain> (roslisp-msg-protocol:ros-message)
  ((vel_fl
    :reader vel_fl
    :initarg :vel_fl
    :type cl:float
    :initform 0.0)
   (vel_fr
    :reader vel_fr
    :initarg :vel_fr
    :type cl:float
    :initform 0.0)
   (vel_r
    :reader vel_r
    :initarg :vel_r
    :type cl:float
    :initform 0.0)
   (angle_fl
    :reader angle_fl
    :initarg :angle_fl
    :type cl:float
    :initform 0.0)
   (angle_fr
    :reader angle_fr
    :initarg :angle_fr
    :type cl:float
    :initform 0.0)
   (angle_r
    :reader angle_r
    :initarg :angle_r
    :type cl:float
    :initform 0.0))
)

(cl:defclass Drivetrain (<Drivetrain>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Drivetrain>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Drivetrain)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdas_msg-msg:<Drivetrain> is deprecated: use hdas_msg-msg:Drivetrain instead.")))

(cl:ensure-generic-function 'vel_fl-val :lambda-list '(m))
(cl:defmethod vel_fl-val ((m <Drivetrain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:vel_fl-val is deprecated.  Use hdas_msg-msg:vel_fl instead.")
  (vel_fl m))

(cl:ensure-generic-function 'vel_fr-val :lambda-list '(m))
(cl:defmethod vel_fr-val ((m <Drivetrain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:vel_fr-val is deprecated.  Use hdas_msg-msg:vel_fr instead.")
  (vel_fr m))

(cl:ensure-generic-function 'vel_r-val :lambda-list '(m))
(cl:defmethod vel_r-val ((m <Drivetrain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:vel_r-val is deprecated.  Use hdas_msg-msg:vel_r instead.")
  (vel_r m))

(cl:ensure-generic-function 'angle_fl-val :lambda-list '(m))
(cl:defmethod angle_fl-val ((m <Drivetrain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:angle_fl-val is deprecated.  Use hdas_msg-msg:angle_fl instead.")
  (angle_fl m))

(cl:ensure-generic-function 'angle_fr-val :lambda-list '(m))
(cl:defmethod angle_fr-val ((m <Drivetrain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:angle_fr-val is deprecated.  Use hdas_msg-msg:angle_fr instead.")
  (angle_fr m))

(cl:ensure-generic-function 'angle_r-val :lambda-list '(m))
(cl:defmethod angle_r-val ((m <Drivetrain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:angle_r-val is deprecated.  Use hdas_msg-msg:angle_r instead.")
  (angle_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Drivetrain>) ostream)
  "Serializes a message object of type '<Drivetrain>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_fl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_fr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_fl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_fr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Drivetrain>) istream)
  "Deserializes a message object of type '<Drivetrain>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_fl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_fr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_fl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_fr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_r) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Drivetrain>)))
  "Returns string type for a message object of type '<Drivetrain>"
  "hdas_msg/Drivetrain")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Drivetrain)))
  "Returns string type for a message object of type 'Drivetrain"
  "hdas_msg/Drivetrain")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Drivetrain>)))
  "Returns md5sum for a message object of type '<Drivetrain>"
  "0a54847f1086c67159c1bb023398666f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Drivetrain)))
  "Returns md5sum for a message object of type 'Drivetrain"
  "0a54847f1086c67159c1bb023398666f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Drivetrain>)))
  "Returns full string definition for message of type '<Drivetrain>"
  (cl:format cl:nil "float32 vel_fl~%float32 vel_fr~%float32 vel_r~%float32 angle_fl~%float32 angle_fr~%float32 angle_r~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Drivetrain)))
  "Returns full string definition for message of type 'Drivetrain"
  (cl:format cl:nil "float32 vel_fl~%float32 vel_fr~%float32 vel_r~%float32 angle_fl~%float32 angle_fr~%float32 angle_r~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Drivetrain>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Drivetrain>))
  "Converts a ROS message object to a list"
  (cl:list 'Drivetrain
    (cl:cons ':vel_fl (vel_fl msg))
    (cl:cons ':vel_fr (vel_fr msg))
    (cl:cons ':vel_r (vel_r msg))
    (cl:cons ':angle_fl (angle_fl msg))
    (cl:cons ':angle_fr (angle_fr msg))
    (cl:cons ':angle_r (angle_r msg))
))
