; Auto-generated. Do not edit!


(cl:in-package signal_arm_msg-msg)


;//! \htmlinclude control_stamped.msg.html

(cl:defclass <control_stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type signal_arm_msg-msg:control
    :initform (cl:make-instance 'signal_arm_msg-msg:control)))
)

(cl:defclass control_stamped (<control_stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name signal_arm_msg-msg:<control_stamped> is deprecated: use signal_arm_msg-msg:control_stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <control_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_arm_msg-msg:header-val is deprecated.  Use signal_arm_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <control_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_arm_msg-msg:data-val is deprecated.  Use signal_arm_msg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_stamped>) ostream)
  "Serializes a message object of type '<control_stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_stamped>) istream)
  "Deserializes a message object of type '<control_stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_stamped>)))
  "Returns string type for a message object of type '<control_stamped>"
  "signal_arm_msg/control_stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_stamped)))
  "Returns string type for a message object of type 'control_stamped"
  "signal_arm_msg/control_stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_stamped>)))
  "Returns md5sum for a message object of type '<control_stamped>"
  "5171c999f345ff05f9782d22ad533d39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_stamped)))
  "Returns md5sum for a message object of type 'control_stamped"
  "5171c999f345ff05f9782d22ad533d39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_stamped>)))
  "Returns full string definition for message of type '<control_stamped>"
  (cl:format cl:nil "std_msgs/Header header~%control data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: signal_arm_msg/control~%float32[] p_des~%float32[] v_des~%float32[] kp~%float32[] kd~%float32[] t_ff~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_stamped)))
  "Returns full string definition for message of type 'control_stamped"
  (cl:format cl:nil "std_msgs/Header header~%control data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: signal_arm_msg/control~%float32[] p_des~%float32[] v_des~%float32[] kp~%float32[] kd~%float32[] t_ff~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'control_stamped
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
