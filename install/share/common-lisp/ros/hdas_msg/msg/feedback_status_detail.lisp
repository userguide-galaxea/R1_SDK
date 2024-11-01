; Auto-generated. Do not edit!


(cl:in-package hdas_msg-msg)


;//! \htmlinclude feedback_status_detail.msg.html

(cl:defclass <feedback_status_detail> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (error_description
    :reader error_description
    :initarg :error_description
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass feedback_status_detail (<feedback_status_detail>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feedback_status_detail>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feedback_status_detail)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdas_msg-msg:<feedback_status_detail> is deprecated: use hdas_msg-msg:feedback_status_detail instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <feedback_status_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:name-val is deprecated.  Use hdas_msg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <feedback_status_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:error_code-val is deprecated.  Use hdas_msg-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_description-val :lambda-list '(m))
(cl:defmethod error_description-val ((m <feedback_status_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdas_msg-msg:error_description-val is deprecated.  Use hdas_msg-msg:error_description instead.")
  (error_description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feedback_status_detail>) ostream)
  "Serializes a message object of type '<feedback_status_detail>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'error_description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feedback_status_detail>) istream)
  "Deserializes a message object of type '<feedback_status_detail>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_description) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_description)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feedback_status_detail>)))
  "Returns string type for a message object of type '<feedback_status_detail>"
  "hdas_msg/feedback_status_detail")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedback_status_detail)))
  "Returns string type for a message object of type 'feedback_status_detail"
  "hdas_msg/feedback_status_detail")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feedback_status_detail>)))
  "Returns md5sum for a message object of type '<feedback_status_detail>"
  "e5280425d3fdc62c9f07e542e68626f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feedback_status_detail)))
  "Returns md5sum for a message object of type 'feedback_status_detail"
  "e5280425d3fdc62c9f07e542e68626f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feedback_status_detail>)))
  "Returns full string definition for message of type '<feedback_status_detail>"
  (cl:format cl:nil "string name~%uint32 error_code~%string[] error_description~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feedback_status_detail)))
  "Returns full string definition for message of type 'feedback_status_detail"
  (cl:format cl:nil "string name~%uint32 error_code~%string[] error_description~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <feedback_status_detail>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_description) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <feedback_status_detail>))
  "Converts a ROS message object to a list"
  (cl:list 'feedback_status_detail
    (cl:cons ':name (name msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_description (error_description msg))
))
