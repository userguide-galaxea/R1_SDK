;; Auto-generated. Do not edit!


(when (boundp 'signal_camera::ImageMsg)
  (if (not (find-package "SIGNAL_CAMERA"))
    (make-package "SIGNAL_CAMERA"))
  (shadow 'ImageMsg (find-package "SIGNAL_CAMERA")))
(unless (find-package "SIGNAL_CAMERA::IMAGEMSG")
  (make-package "SIGNAL_CAMERA::IMAGEMSG"))

(in-package "ROS")
;;//! \htmlinclude ImageMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass signal_camera::ImageMsg
  :super ros::object
  :slots (_header _timebase _point_num _lidar_id _rsvd ))

(defmethod signal_camera::ImageMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timebase __timebase) 0)
    ((:point_num __point_num) 0)
    ((:lidar_id __lidar_id) 0)
    ((:rsvd __rsvd) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _timebase (round __timebase))
   (setq _point_num (round __point_num))
   (setq _lidar_id (round __lidar_id))
   (setq _rsvd __rsvd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timebase
   (&optional __timebase)
   (if __timebase (setq _timebase __timebase)) _timebase)
  (:point_num
   (&optional __point_num)
   (if __point_num (setq _point_num __point_num)) _point_num)
  (:lidar_id
   (&optional __lidar_id)
   (if __lidar_id (setq _lidar_id __lidar_id)) _lidar_id)
  (:rsvd
   (&optional __rsvd)
   (if __rsvd (setq _rsvd __rsvd)) _rsvd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timebase
    8
    ;; uint32 _point_num
    4
    ;; uint8 _lidar_id
    1
    ;; uint8[3] _rsvd
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _timebase
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timebase (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timebase) (= (length (_timebase . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timebase . bv) 0) 0) s)
              (write-long (ash (elt (_timebase . bv) 1) -1) s))
             ((and (class _timebase) (= (length (_timebase . bv)) 1)) ;; big1
              (write-long (elt (_timebase . bv) 0) s)
              (write-long (if (>= _timebase 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timebase s)(write-long (if (>= _timebase 0) 0 #xffffffff) s)))
     ;; uint32 _point_num
       (write-long _point_num s)
     ;; uint8 _lidar_id
       (write-byte _lidar_id s)
     ;; uint8[3] _rsvd
     (princ _rsvd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _timebase
     
#+(or :alpha :irix6 :x86_64)
      (setf _timebase (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timebase (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _point_num
     (setq _point_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _lidar_id
     (setq _lidar_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _rsvd
   (setq _rsvd (make-array 3 :element-type :char))
   (replace _rsvd buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get signal_camera::ImageMsg :md5sum-) "9094ee16737ae46f3b9ab1bbbc8bf491")
(setf (get signal_camera::ImageMsg :datatype-) "signal_camera/ImageMsg")
(setf (get signal_camera::ImageMsg :definition-)
      "# Ebot publish image msg format.

std_msgs/Header header    # ROS standard message header
uint64 timebase           # The time of first point
uint32 point_num          # Total number of pointclouds
uint8  lidar_id           # Lidar device id number
uint8[3]  rsvd            # Reserved use


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



(provide :signal_camera/ImageMsg "9094ee16737ae46f3b9ab1bbbc8bf491")


