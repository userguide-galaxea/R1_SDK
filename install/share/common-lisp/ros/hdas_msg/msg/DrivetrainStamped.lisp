; Auto-generated. Do not edit!


(cl:in-package hdas_msg-msg)


;//! \htmlinclude DrivetrainStamped.msg.html

(cl:defclass <DrivetrainStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type hdas_msg-msg:Drivetrain
    :initform (cl:make-instance 'hdas_msg-msg:Drivetrain)))
)

(cl:defclass DrivetrainStamped (<DrivetrainStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrivetrainStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrivetrainStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdas_msg-msg:<DrivetrainStamped> is deprecated: use hdas_msg-msg:DrivetrainStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DrivetrainStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:header-val is deprecated.  Use hdas_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <DrivetrainStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:data-val is deprecated.  Use hdas_msg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrivetrainStamped>) ostream)
  "Serializes a message object of type '<DrivetrainStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrivetrainStamped>) istream)
  "Deserializes a message object of type '<DrivetrainStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrivetrainStamped>)))
  "Returns string type for a message object of type '<DrivetrainStamped>"
  "hdas_msg/DrivetrainStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrivetrainStamped)))
  "Returns string type for a message object of type 'DrivetrainStamped"
  "hdas_msg/DrivetrainStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrivetrainStamped>)))
  "Returns md5sum for a message object of type '<DrivetrainStamped>"
  "f731134f85be793a265c7e5e23d03ca6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrivetrainStamped)))
  "Returns md5sum for a message object of type 'DrivetrainStamped"
  "f731134f85be793a265c7e5e23d03ca6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrivetrainStamped>)))
  "Returns full string definition for message of type '<DrivetrainStamped>"
  (cl:format cl:nil "std_msgs/Header header~%Drivetrain data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdas_msg/Drivetrain~%float32 vel_fl~%float32 vel_fr~%float32 vel_r~%float32 angle_fl~%float32 angle_fr~%float32 angle_r~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrivetrainStamped)))
  "Returns full string definition for message of type 'DrivetrainStamped"
  (cl:format cl:nil "std_msgs/Header header~%Drivetrain data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdas_msg/Drivetrain~%float32 vel_fl~%float32 vel_fr~%float32 vel_r~%float32 angle_fl~%float32 angle_fr~%float32 angle_r~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrivetrainStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrivetrainStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'DrivetrainStamped
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
