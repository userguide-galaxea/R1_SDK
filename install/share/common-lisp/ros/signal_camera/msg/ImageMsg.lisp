; Auto-generated. Do not edit!


(cl:in-package signal_camera-msg)


;//! \htmlinclude ImageMsg.msg.html

(cl:defclass <ImageMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (timebase
    :reader timebase
    :initarg :timebase
    :type cl:integer
    :initform 0)
   (point_num
    :reader point_num
    :initarg :point_num
    :type cl:integer
    :initform 0)
   (lidar_id
    :reader lidar_id
    :initarg :lidar_id
    :type cl:fixnum
    :initform 0)
   (rsvd
    :reader rsvd
    :initarg :rsvd
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ImageMsg (<ImageMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name signal_camera-msg:<ImageMsg> is deprecated: use signal_camera-msg:ImageMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImageMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_camera-msg:header-val is deprecated.  Use signal_camera-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timebase-val :lambda-list '(m))
(cl:defmethod timebase-val ((m <ImageMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_camera-msg:timebase-val is deprecated.  Use signal_camera-msg:timebase instead.")
  (timebase m))

(cl:ensure-generic-function 'point_num-val :lambda-list '(m))
(cl:defmethod point_num-val ((m <ImageMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_camera-msg:point_num-val is deprecated.  Use signal_camera-msg:point_num instead.")
  (point_num m))

(cl:ensure-generic-function 'lidar_id-val :lambda-list '(m))
(cl:defmethod lidar_id-val ((m <ImageMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_camera-msg:lidar_id-val is deprecated.  Use signal_camera-msg:lidar_id instead.")
  (lidar_id m))

(cl:ensure-generic-function 'rsvd-val :lambda-list '(m))
(cl:defmethod rsvd-val ((m <ImageMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signal_camera-msg:rsvd-val is deprecated.  Use signal_camera-msg:rsvd instead.")
  (rsvd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageMsg>) ostream)
  "Serializes a message object of type '<ImageMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timebase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timebase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timebase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timebase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timebase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timebase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timebase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timebase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'point_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'point_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'point_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lidar_id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'rsvd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageMsg>) istream)
  "Deserializes a message object of type '<ImageMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timebase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timebase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timebase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timebase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timebase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timebase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timebase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timebase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'point_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'point_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'point_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lidar_id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rsvd) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'rsvd)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageMsg>)))
  "Returns string type for a message object of type '<ImageMsg>"
  "signal_camera/ImageMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageMsg)))
  "Returns string type for a message object of type 'ImageMsg"
  "signal_camera/ImageMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageMsg>)))
  "Returns md5sum for a message object of type '<ImageMsg>"
  "9094ee16737ae46f3b9ab1bbbc8bf491")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageMsg)))
  "Returns md5sum for a message object of type 'ImageMsg"
  "9094ee16737ae46f3b9ab1bbbc8bf491")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageMsg>)))
  "Returns full string definition for message of type '<ImageMsg>"
  (cl:format cl:nil "# Ebot publish image msg format.~%~%std_msgs/Header header    # ROS standard message header~%uint64 timebase           # The time of first point~%uint32 point_num          # Total number of pointclouds~%uint8  lidar_id           # Lidar device id number~%uint8[3]  rsvd            # Reserved use~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageMsg)))
  "Returns full string definition for message of type 'ImageMsg"
  (cl:format cl:nil "# Ebot publish image msg format.~%~%std_msgs/Header header    # ROS standard message header~%uint64 timebase           # The time of first point~%uint32 point_num          # Total number of pointclouds~%uint8  lidar_id           # Lidar device id number~%uint8[3]  rsvd            # Reserved use~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rsvd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageMsg
    (cl:cons ':header (header msg))
    (cl:cons ':timebase (timebase msg))
    (cl:cons ':point_num (point_num msg))
    (cl:cons ':lidar_id (lidar_id msg))
    (cl:cons ':rsvd (rsvd msg))
))
