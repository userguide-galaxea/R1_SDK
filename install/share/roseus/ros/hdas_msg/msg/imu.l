;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::imu)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'imu (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::IMU")
  (make-package "HDAS_MSG::IMU"))

(in-package "ROS")
;;//! \htmlinclude imu.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdas_msg::imu
  :super ros::object
  :slots (_header _roll _pitch _yaw _groy_x _groy_y _groy_z _acc_x _acc_y _acc_z ))

(defmethod hdas_msg::imu
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:groy_x __groy_x) 0.0)
    ((:groy_y __groy_y) 0.0)
    ((:groy_z __groy_z) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _groy_x (float __groy_x))
   (setq _groy_y (float __groy_y))
   (setq _groy_z (float __groy_z))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:groy_x
   (&optional __groy_x)
   (if __groy_x (setq _groy_x __groy_x)) _groy_x)
  (:groy_y
   (&optional __groy_y)
   (if __groy_y (setq _groy_y __groy_y)) _groy_y)
  (:groy_z
   (&optional __groy_z)
   (if __groy_z (setq _groy_z __groy_z)) _groy_z)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _groy_x
    8
    ;; float64 _groy_y
    8
    ;; float64 _groy_z
    8
    ;; float64 _acc_x
    8
    ;; float64 _acc_y
    8
    ;; float64 _acc_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _groy_x
       (sys::poke _groy_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _groy_y
       (sys::poke _groy_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _groy_z
       (sys::poke _groy_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _groy_x
     (setq _groy_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _groy_y
     (setq _groy_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _groy_z
     (setq _groy_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_x
     (setq _acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_y
     (setq _acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_z
     (setq _acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hdas_msg::imu :md5sum-) "7875a006442e0192d8390ff9c513dcaa")
(setf (get hdas_msg::imu :datatype-) "hdas_msg/imu")
(setf (get hdas_msg::imu :definition-)
      "std_msgs/Header header
float64 roll
float64 pitch
float64 yaw
float64 groy_x
float64 groy_y
float64 groy_z
float64 acc_x
float64 acc_y
float64 acc_z

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



(provide :hdas_msg/imu "7875a006442e0192d8390ff9c513dcaa")


