;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::controller_signal_stamped)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'controller_signal_stamped (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::CONTROLLER_SIGNAL_STAMPED")
  (make-package "HDAS_MSG::CONTROLLER_SIGNAL_STAMPED"))

(in-package "ROS")
;;//! \htmlinclude controller_signal_stamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdas_msg::controller_signal_stamped
  :super ros::object
  :slots (_header _data ))

(defmethod hdas_msg::controller_signal_stamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (instance hdas_msg::controller_signal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hdas_msg/controller_signal _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hdas_msg/controller_signal _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hdas_msg/controller_signal _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get hdas_msg::controller_signal_stamped :md5sum-) "9f3c78c4e4c0f9ec5baa690b438713b9")
(setf (get hdas_msg::controller_signal_stamped :datatype-) "hdas_msg/controller_signal_stamped")
(setf (get hdas_msg::controller_signal_stamped :definition-)
      "std_msgs/Header header
controller_signal data
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: hdas_msg/controller_signal
float32 left_x_axis
float32 left_y_axis
float32 right_x_axis
float32 right_y_axis
uint8 mode
")



(provide :hdas_msg/controller_signal_stamped "9f3c78c4e4c0f9ec5baa690b438713b9")


