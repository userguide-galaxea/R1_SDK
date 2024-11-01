;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocAccelerationStd)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocAccelerationStd (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCACCELERATIONSTD")
  (make-package "LOCALIZATION_MSG::LOCACCELERATIONSTD"))

(in-package "ROS")
;;//! \htmlinclude LocAccelerationStd.msg.html


(defclass localization_msg::LocAccelerationStd
  :super ros::object
  :slots (_available _acc_std_global _acc_std_local ))

(defmethod localization_msg::LocAccelerationStd
  (:init
   (&key
    ((:available __available) 0)
    ((:acc_std_global __acc_std_global) (instance localization_msg::LocAccStdGlobal :init))
    ((:acc_std_local __acc_std_local) (instance localization_msg::LocAccStdLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _acc_std_global __acc_std_global)
   (setq _acc_std_local __acc_std_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:acc_std_global
   (&rest __acc_std_global)
   (if (keywordp (car __acc_std_global))
       (send* _acc_std_global __acc_std_global)
     (progn
       (if __acc_std_global (setq _acc_std_global (car __acc_std_global)))
       _acc_std_global)))
  (:acc_std_local
   (&rest __acc_std_local)
   (if (keywordp (car __acc_std_local))
       (send* _acc_std_local __acc_std_local)
     (progn
       (if __acc_std_local (setq _acc_std_local (car __acc_std_local)))
       _acc_std_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocAccStdGlobal _acc_std_global
    (send _acc_std_global :serialization-length)
    ;; localization_msg/LocAccStdLocal _acc_std_local
    (send _acc_std_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocAccStdGlobal _acc_std_global
       (send _acc_std_global :serialize s)
     ;; localization_msg/LocAccStdLocal _acc_std_local
       (send _acc_std_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocAccStdGlobal _acc_std_global
     (send _acc_std_global :deserialize buf ptr-) (incf ptr- (send _acc_std_global :serialization-length))
   ;; localization_msg/LocAccStdLocal _acc_std_local
     (send _acc_std_local :deserialize buf ptr-) (incf ptr- (send _acc_std_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocAccelerationStd :md5sum-) "a32c28cbafd6527f52d23800ca583be9")
(setf (get localization_msg::LocAccelerationStd :datatype-) "localization_msg/LocAccelerationStd")
(setf (get localization_msg::LocAccelerationStd :definition-)
      "uint8 available
LocAccStdGlobal acc_std_global
LocAccStdLocal acc_std_local
================================================================================
MSG: localization_msg/LocAccStdGlobal
float64 std_ae
float64 std_an
float64 std_au
================================================================================
MSG: localization_msg/LocAccStdLocal
float64 std_ax
float64 std_ay
float64 std_az
")



(provide :localization_msg/LocAccelerationStd "a32c28cbafd6527f52d23800ca583be9")


