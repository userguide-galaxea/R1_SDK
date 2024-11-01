;; Auto-generated. Do not edit!


(when (boundp 'signal_arm_msg::control_stamped)
  (if (not (find-package "SIGNAL_ARM_MSG"))
    (make-package "SIGNAL_ARM_MSG"))
  (shadow 'control_stamped (find-package "SIGNAL_ARM_MSG")))
(unless (find-package "SIGNAL_ARM_MSG::CONTROL_STAMPED")
  (make-package "SIGNAL_ARM_MSG::CONTROL_STAMPED"))

(in-package "ROS")
;;//! \htmlinclude control_stamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass signal_arm_msg::control_stamped
  :super ros::object
  :slots (_header _data ))

(defmethod signal_arm_msg::control_stamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (instance signal_arm_msg::control :init))
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
    ;; signal_arm_msg/control _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; signal_arm_msg/control _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; signal_arm_msg/control _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get signal_arm_msg::control_stamped :md5sum-) "5171c999f345ff05f9782d22ad533d39")
(setf (get signal_arm_msg::control_stamped :datatype-) "signal_arm_msg/control_stamped")
(setf (get signal_arm_msg::control_stamped :definition-)
      "std_msgs/Header header
control data
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
MSG: signal_arm_msg/control
float32[] p_des
float32[] v_des
float32[] kp
float32[] kd
float32[] t_ff
")



(provide :signal_arm_msg/control_stamped "5171c999f345ff05f9782d22ad533d39")


