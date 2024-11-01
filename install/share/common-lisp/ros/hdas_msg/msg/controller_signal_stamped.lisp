; Auto-generated. Do not edit!


(cl:in-package hdas_msg-msg)


;//! \htmlinclude controller_signal_stamped.msg.html

(cl:defclass <controller_signal_stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type hdas_msg-msg:controller_signal
    :initform (cl:make-instance 'hdas_msg-msg:controller_signal)))
)

(cl:defclass controller_signal_stamped (<controller_signal_stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controller_signal_stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controller_signal_stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdas_msg-msg:<controller_signal_stamped> is deprecated: use hdas_msg-msg:controller_signal_stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <controller_signal_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:header-val is deprecated.  Use hdas_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <controller_signal_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:data-val is deprecated.  Use hdas_msg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controller_signal_stamped>) ostream)
  "Serializes a message object of type '<controller_signal_stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controller_signal_stamped>) istream)
  "Deserializes a message object of type '<controller_signal_stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controller_signal_stamped>)))
  "Returns string type for a message object of type '<controller_signal_stamped>"
  "hdas_msg/controller_signal_stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controller_signal_stamped)))
  "Returns string type for a message object of type 'controller_signal_stamped"
  "hdas_msg/controller_signal_stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controller_signal_stamped>)))
  "Returns md5sum for a message object of type '<controller_signal_stamped>"
  "9f3c78c4e4c0f9ec5baa690b438713b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controller_signal_stamped)))
  "Returns md5sum for a message object of type 'controller_signal_stamped"
  "9f3c78c4e4c0f9ec5baa690b438713b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controller_signal_stamped>)))
  "Returns full string definition for message of type '<controller_signal_stamped>"
  (cl:format cl:nil "std_msgs/Header header~%controller_signal data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdas_msg/controller_signal~%float32 left_x_axis~%float32 left_y_axis~%float32 right_x_axis~%float32 right_y_axis~%uint8 mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controller_signal_stamped)))
  "Returns full string definition for message of type 'controller_signal_stamped"
  (cl:format cl:nil "std_msgs/Header header~%controller_signal data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdas_msg/controller_signal~%float32 left_x_axis~%float32 left_y_axis~%float32 right_x_axis~%float32 right_y_axis~%uint8 mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controller_signal_stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controller_signal_stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'controller_signal_stamped
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
