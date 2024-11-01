;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocQuaternion)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocQuaternion (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCQUATERNION")
  (make-package "LOCALIZATION_MSG::LOCQUATERNION"))

(in-package "ROS")
;;//! \htmlinclude LocQuaternion.msg.html


(defclass localization_msg::LocQuaternion
  :super ros::object
  :slots (_w _x _y _z ))

(defmethod localization_msg::LocQuaternion
  (:init
   (&key
    ((:w __w) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _w (float __w))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _w
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msg::LocQuaternion :md5sum-) "2b82aaf9e8e0ae143191a8612f5c5d4c")
(setf (get localization_msg::LocQuaternion :datatype-) "localization_msg/LocQuaternion")
(setf (get localization_msg::LocQuaternion :definition-)
      "float64 w
float64 x
float64 y
float64 z
")



(provide :localization_msg/LocQuaternion "2b82aaf9e8e0ae143191a8612f5c5d4c")


