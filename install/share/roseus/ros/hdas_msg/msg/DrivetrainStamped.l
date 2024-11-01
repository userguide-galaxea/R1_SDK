;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::DrivetrainStamped)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'DrivetrainStamped (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::DRIVETRAINSTAMPED")
  (make-package "HDAS_MSG::DRIVETRAINSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude DrivetrainStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdas_msg::DrivetrainStamped
  :super ros::object
  :slots (_header _data ))

(defmethod hdas_msg::DrivetrainStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (instance hdas_msg::Drivetrain :init))
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
    ;; hdas_msg/Drivetrain _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hdas_msg/Drivetrain _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hdas_msg/Drivetrain _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get hdas_msg::DrivetrainStamped :md5sum-) "f731134f85be793a265c7e5e23d03ca6")
(setf (get hdas_msg::DrivetrainStamped :datatype-) "hdas_msg/DrivetrainStamped")
(setf (get hdas_msg::DrivetrainStamped :definition-)
      "std_msgs/Header header
Drivetrain data
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
MSG: hdas_msg/Drivetrain
float32 vel_fl
float32 vel_fr
float32 vel_r
float32 angle_fl
float32 angle_fr
float32 angle_r
")



(provide :hdas_msg/DrivetrainStamped "f731134f85be793a265c7e5e23d03ca6")


