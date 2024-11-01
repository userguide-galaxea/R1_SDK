;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocVelocity)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocVelocity (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCVELOCITY")
  (make-package "LOCALIZATION_MSG::LOCVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude LocVelocity.msg.html


(defclass localization_msg::LocVelocity
  :super ros::object
  :slots (_available _velocity_global _velocity_local ))

(defmethod localization_msg::LocVelocity
  (:init
   (&key
    ((:available __available) 0)
    ((:velocity_global __velocity_global) (instance localization_msg::LocVelGlobal :init))
    ((:velocity_local __velocity_local) (instance localization_msg::LocVelLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _velocity_global __velocity_global)
   (setq _velocity_local __velocity_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:velocity_global
   (&rest __velocity_global)
   (if (keywordp (car __velocity_global))
       (send* _velocity_global __velocity_global)
     (progn
       (if __velocity_global (setq _velocity_global (car __velocity_global)))
       _velocity_global)))
  (:velocity_local
   (&rest __velocity_local)
   (if (keywordp (car __velocity_local))
       (send* _velocity_local __velocity_local)
     (progn
       (if __velocity_local (setq _velocity_local (car __velocity_local)))
       _velocity_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocVelGlobal _velocity_global
    (send _velocity_global :serialization-length)
    ;; localization_msg/LocVelLocal _velocity_local
    (send _velocity_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocVelGlobal _velocity_global
       (send _velocity_global :serialize s)
     ;; localization_msg/LocVelLocal _velocity_local
       (send _velocity_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocVelGlobal _velocity_global
     (send _velocity_global :deserialize buf ptr-) (incf ptr- (send _velocity_global :serialization-length))
   ;; localization_msg/LocVelLocal _velocity_local
     (send _velocity_local :deserialize buf ptr-) (incf ptr- (send _velocity_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocVelocity :md5sum-) "a9f526371b70d001d1a3b75d8970bc2e")
(setf (get localization_msg::LocVelocity :datatype-) "localization_msg/LocVelocity")
(setf (get localization_msg::LocVelocity :definition-)
      "uint8 available
LocVelGlobal velocity_global
LocVelLocal velocity_local
================================================================================
MSG: localization_msg/LocVelGlobal
float64 ve
float64 vn
float64 vu
================================================================================
MSG: localization_msg/LocVelLocal
float64 vx
float64 vy
float64 vz
")



(provide :localization_msg/LocVelocity "a9f526371b70d001d1a3b75d8970bc2e")


