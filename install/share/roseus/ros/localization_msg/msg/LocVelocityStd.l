;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocVelocityStd)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocVelocityStd (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCVELOCITYSTD")
  (make-package "LOCALIZATION_MSG::LOCVELOCITYSTD"))

(in-package "ROS")
;;//! \htmlinclude LocVelocityStd.msg.html


(defclass localization_msg::LocVelocityStd
  :super ros::object
  :slots (_available _vel_std_global _vel_std_local ))

(defmethod localization_msg::LocVelocityStd
  (:init
   (&key
    ((:available __available) 0)
    ((:vel_std_global __vel_std_global) (instance localization_msg::LocVelStdGlobal :init))
    ((:vel_std_local __vel_std_local) (instance localization_msg::LocVelStdLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _vel_std_global __vel_std_global)
   (setq _vel_std_local __vel_std_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:vel_std_global
   (&rest __vel_std_global)
   (if (keywordp (car __vel_std_global))
       (send* _vel_std_global __vel_std_global)
     (progn
       (if __vel_std_global (setq _vel_std_global (car __vel_std_global)))
       _vel_std_global)))
  (:vel_std_local
   (&rest __vel_std_local)
   (if (keywordp (car __vel_std_local))
       (send* _vel_std_local __vel_std_local)
     (progn
       (if __vel_std_local (setq _vel_std_local (car __vel_std_local)))
       _vel_std_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocVelStdGlobal _vel_std_global
    (send _vel_std_global :serialization-length)
    ;; localization_msg/LocVelStdLocal _vel_std_local
    (send _vel_std_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocVelStdGlobal _vel_std_global
       (send _vel_std_global :serialize s)
     ;; localization_msg/LocVelStdLocal _vel_std_local
       (send _vel_std_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocVelStdGlobal _vel_std_global
     (send _vel_std_global :deserialize buf ptr-) (incf ptr- (send _vel_std_global :serialization-length))
   ;; localization_msg/LocVelStdLocal _vel_std_local
     (send _vel_std_local :deserialize buf ptr-) (incf ptr- (send _vel_std_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocVelocityStd :md5sum-) "cac559756cac35741cd7fe8bc8eb1ef3")
(setf (get localization_msg::LocVelocityStd :datatype-) "localization_msg/LocVelocityStd")
(setf (get localization_msg::LocVelocityStd :definition-)
      "uint8 available
LocVelStdGlobal vel_std_global
LocVelStdLocal vel_std_local
================================================================================
MSG: localization_msg/LocVelStdGlobal
float64 std_ve
float64 std_vn
float64 std_vu
================================================================================
MSG: localization_msg/LocVelStdLocal
float64 std_vx
float64 std_vy
float64 std_vz
")



(provide :localization_msg/LocVelocityStd "cac559756cac35741cd7fe8bc8eb1ef3")


