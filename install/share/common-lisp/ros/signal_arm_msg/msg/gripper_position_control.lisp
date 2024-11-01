; Auto-generated. Do not edit!


(cl:in-package signal_arm_msg-msg)


;//! \htmlinclude gripper_position_control.msg.html

(cl:defclass <gripper_position_control> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gripper_stroke
    :reader gripper_stroke
    :initarg :gripper_stroke
    :type cl:float
    :initform 0.0))
)

(cl:defclass gripper_position_control (<gripper_position_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gripper_position_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gripper_position_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name signal_arm_msg-msg:<gripper_position_control> is deprecated: use signal_arm_msg-msg:gripper_position_control instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gripper_position_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_arm_msg-msg:header-val is deprecated.  Use signal_arm_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gripper_stroke-val :lambda-list '(m))
(cl:defmethod gripper_stroke-val ((m <gripper_position_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_arm_msg-msg:gripper_stroke-val is deprecated.  Use signal_arm_msg-msg:gripper_stroke instead.")
  (gripper_stroke m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gripper_position_control>) ostream)
  "Serializes a message object of type '<gripper_position_control>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gripper_stroke))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gripper_position_control>) istream)
  "Deserializes a message object of type '<gripper_position_control>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gripper_stroke) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gripper_position_control>)))
  "Returns string type for a message object of type '<gripper_position_control>"
  "signal_arm_msg/gripper_position_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gripper_position_control)))
  "Returns string type for a message object of type 'gripper_position_control"
  "signal_arm_msg/gripper_position_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gripper_position_control>)))
  "Returns md5sum for a message object of type '<gripper_position_control>"
  "dbfc87e504144f4078e11692fe88aff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gripper_position_control)))
  "Returns md5sum for a message object of type 'gripper_position_control"
  "dbfc87e504144f4078e11692fe88aff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gripper_position_control>)))
  "Returns full string definition for message of type '<gripper_position_control>"
  (cl:format cl:nil "std_msgs/Header header~%float32 gripper_stroke~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gripper_position_control)))
  "Returns full string definition for message of type 'gripper_position_control"
  (cl:format cl:nil "std_msgs/Header header~%float32 gripper_stroke~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gripper_position_control>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gripper_position_control>))
  "Converts a ROS message object to a list"
  (cl:list 'gripper_position_control
    (cl:cons ':header (header msg))
    (cl:cons ':gripper_stroke (gripper_stroke msg))
))
