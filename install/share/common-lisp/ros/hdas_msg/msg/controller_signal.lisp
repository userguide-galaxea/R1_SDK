; Auto-generated. Do not edit!


(cl:in-package hdas_msg-msg)


;//! \htmlinclude controller_signal.msg.html

(cl:defclass <controller_signal> (roslisp-msg-protocol:ros-message)
  ((left_x_axis
    :reader left_x_axis
    :initarg :left_x_axis
    :type cl:float
    :initform 0.0)
   (left_y_axis
    :reader left_y_axis
    :initarg :left_y_axis
    :type cl:float
    :initform 0.0)
   (right_x_axis
    :reader right_x_axis
    :initarg :right_x_axis
    :type cl:float
    :initform 0.0)
   (right_y_axis
    :reader right_y_axis
    :initarg :right_y_axis
    :type cl:float
    :initform 0.0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass controller_signal (<controller_signal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controller_signal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controller_signal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdas_msg-msg:<controller_signal> is deprecated: use hdas_msg-msg:controller_signal instead.")))

(cl:ensure-generic-function 'left_x_axis-val :lambda-list '(m))
(cl:defmethod left_x_axis-val ((m <controller_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:left_x_axis-val is deprecated.  Use hdas_msg-msg:left_x_axis instead.")
  (left_x_axis m))

(cl:ensure-generic-function 'left_y_axis-val :lambda-list '(m))
(cl:defmethod left_y_axis-val ((m <controller_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:left_y_axis-val is deprecated.  Use hdas_msg-msg:left_y_axis instead.")
  (left_y_axis m))

(cl:ensure-generic-function 'right_x_axis-val :lambda-list '(m))
(cl:defmethod right_x_axis-val ((m <controller_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:right_x_axis-val is deprecated.  Use hdas_msg-msg:right_x_axis instead.")
  (right_x_axis m))

(cl:ensure-generic-function 'right_y_axis-val :lambda-list '(m))
(cl:defmethod right_y_axis-val ((m <controller_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:right_y_axis-val is deprecated.  Use hdas_msg-msg:right_y_axis instead.")
  (right_y_axis m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <controller_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:mode-val is deprecated.  Use hdas_msg-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controller_signal>) ostream)
  "Serializes a message object of type '<controller_signal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_x_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_y_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_x_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_y_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controller_signal>) istream)
  "Deserializes a message object of type '<controller_signal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_x_axis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_y_axis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_x_axis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_y_axis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controller_signal>)))
  "Returns string type for a message object of type '<controller_signal>"
  "hdas_msg/controller_signal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controller_signal)))
  "Returns string type for a message object of type 'controller_signal"
  "hdas_msg/controller_signal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controller_signal>)))
  "Returns md5sum for a message object of type '<controller_signal>"
  "8e6ccbca8cd4108e7851c191481bfb77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controller_signal)))
  "Returns md5sum for a message object of type 'controller_signal"
  "8e6ccbca8cd4108e7851c191481bfb77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controller_signal>)))
  "Returns full string definition for message of type '<controller_signal>"
  (cl:format cl:nil "float32 left_x_axis~%float32 left_y_axis~%float32 right_x_axis~%float32 right_y_axis~%uint8 mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controller_signal)))
  "Returns full string definition for message of type 'controller_signal"
  (cl:format cl:nil "float32 left_x_axis~%float32 left_y_axis~%float32 right_x_axis~%float32 right_y_axis~%uint8 mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controller_signal>))
  (cl:+ 0
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controller_signal>))
  "Converts a ROS message object to a list"
  (cl:list 'controller_signal
    (cl:cons ':left_x_axis (left_x_axis msg))
    (cl:cons ':left_y_axis (left_y_axis msg))
    (cl:cons ':right_x_axis (right_x_axis msg))
    (cl:cons ':right_y_axis (right_y_axis msg))
    (cl:cons ':mode (mode msg))
))
