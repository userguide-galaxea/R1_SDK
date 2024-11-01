;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::bms)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'bms (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::BMS")
  (make-package "HDAS_MSG::BMS"))

(in-package "ROS")
;;//! \htmlinclude bms.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdas_msg::bms
  :super ros::object
  :slots (_header _voltage _current _capital ))

(defmethod hdas_msg::bms
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:voltage __voltage) 0)
    ((:current __current) 0)
    ((:capital __capital) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _voltage (round __voltage))
   (setq _current (round __current))
   (setq _capital (round __capital))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:capital
   (&optional __capital)
   (if __capital (setq _capital __capital)) _capital)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _voltage
    2
    ;; int16 _current
    2
    ;; int16 _capital
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _voltage
       (write-word _voltage s)
     ;; int16 _current
       (write-word _current s)
     ;; int16 _capital
       (write-word _capital s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _voltage
     (setq _voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _current
     (setq _current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _capital
     (setq _capital (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hdas_msg::bms :md5sum-) "c249bbc91a486340927685f24c9fded7")
(setf (get hdas_msg::bms :datatype-) "hdas_msg/bms")
(setf (get hdas_msg::bms :definition-)
      "std_msgs/Header header
int16 voltage
int16 current
int16 capital

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

")



(provide :hdas_msg/bms "c249bbc91a486340927685f24c9fded7")


