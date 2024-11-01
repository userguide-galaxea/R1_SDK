; Auto-generated. Do not edit!


(cl:in-package hdas_msg-msg)


;//! \htmlinclude feedback_status.msg.html

(cl:defclass <feedback_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name_id
    :reader name_id
    :initarg :name_id
    :type cl:string
    :initform "")
   (errors
    :reader errors
    :initarg :errors
    :type (cl:vector hdas_msg-msg:feedback_status_detail)
   :initform (cl:make-array 0 :element-type 'hdas_msg-msg:feedback_status_detail :initial-element (cl:make-instance 'hdas_msg-msg:feedback_status_detail))))
)

(cl:defclass feedback_status (<feedback_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feedback_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feedback_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdas_msg-msg:<feedback_status> is deprecated: use hdas_msg-msg:feedback_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <feedback_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:header-val is deprecated.  Use hdas_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name_id-val :lambda-list '(m))
(cl:defmethod name_id-val ((m <feedback_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:name_id-val is deprecated.  Use hdas_msg-msg:name_id instead.")
  (name_id m))

(cl:ensure-generic-function 'errors-val :lambda-list '(m))
(cl:defmethod errors-val ((m <feedback_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:errors-val is deprecated.  Use hdas_msg-msg:errors instead.")
  (errors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feedback_status>) ostream)
  "Serializes a message object of type '<feedback_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'errors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'errors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feedback_status>) istream)
  "Deserializes a message object of type '<feedback_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'errors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'errors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hdas_msg-msg:feedback_status_detail))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feedback_status>)))
  "Returns string type for a message object of type '<feedback_status>"
  "hdas_msg/feedback_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedback_status)))
  "Returns string type for a message object of type 'feedback_status"
  "hdas_msg/feedback_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feedback_status>)))
  "Returns md5sum for a message object of type '<feedback_status>"
  "7a6984c65a4a87fe80ef0491240438e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feedback_status)))
  "Returns md5sum for a message object of type 'feedback_status"
  "7a6984c65a4a87fe80ef0491240438e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feedback_status>)))
  "Returns full string definition for message of type '<feedback_status>"
  (cl:format cl:nil "std_msgs/Header header~%string name_id~%feedback_status_detail[] errors~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdas_msg/feedback_status_detail~%string name~%uint32 error_code~%string[] error_description~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feedback_status)))
  "Returns full string definition for message of type 'feedback_status"
  (cl:format cl:nil "std_msgs/Header header~%string name_id~%feedback_status_detail[] errors~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdas_msg/feedback_status_detail~%string name~%uint32 error_code~%string[] error_description~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <feedback_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'errors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <feedback_status>))
  "Converts a ROS message object to a list"
  (cl:list 'feedback_status
    (cl:cons ':header (header msg))
    (cl:cons ':name_id (name_id msg))
    (cl:cons ':errors (errors msg))
))
