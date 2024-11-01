;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocAcceleration)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocAcceleration (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCACCELERATION")
  (make-package "LOCALIZATION_MSG::LOCACCELERATION"))

(in-package "ROS")
;;//! \htmlinclude LocAcceleration.msg.html


(defclass localization_msg::LocAcceleration
  :super ros::object
  :slots (_available _acceleration_global _acceleration_local ))

(defmethod localization_msg::LocAcceleration
  (:init
   (&key
    ((:available __available) 0)
    ((:acceleration_global __acceleration_global) (instance localization_msg::LocAccGlobal :init))
    ((:acceleration_local __acceleration_local) (instance localization_msg::LocAccLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _acceleration_global __acceleration_global)
   (setq _acceleration_local __acceleration_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:acceleration_global
   (&rest __acceleration_global)
   (if (keywordp (car __acceleration_global))
       (send* _acceleration_global __acceleration_global)
     (progn
       (if __acceleration_global (setq _acceleration_global (car __acceleration_global)))
       _acceleration_global)))
  (:acceleration_local
   (&rest __acceleration_local)
   (if (keywordp (car __acceleration_local))
       (send* _acceleration_local __acceleration_local)
     (progn
       (if __acceleration_local (setq _acceleration_local (car __acceleration_local)))
       _acceleration_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocAccGlobal _acceleration_global
    (send _acceleration_global :serialization-length)
    ;; localization_msg/LocAccLocal _acceleration_local
    (send _acceleration_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocAccGlobal _acceleration_global
       (send _acceleration_global :serialize s)
     ;; localization_msg/LocAccLocal _acceleration_local
       (send _acceleration_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocAccGlobal _acceleration_global
     (send _acceleration_global :deserialize buf ptr-) (incf ptr- (send _acceleration_global :serialization-length))
   ;; localization_msg/LocAccLocal _acceleration_local
     (send _acceleration_local :deserialize buf ptr-) (incf ptr- (send _acceleration_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocAcceleration :md5sum-) "724325e8eb34f4183b9fd545647fdfc8")
(setf (get localization_msg::LocAcceleration :datatype-) "localization_msg/LocAcceleration")
(setf (get localization_msg::LocAcceleration :definition-)
      "uint8 available
LocAccGlobal acceleration_global
LocAccLocal acceleration_local
================================================================================
MSG: localization_msg/LocAccGlobal
float64 ae
float64 an
float64 au
================================================================================
MSG: localization_msg/LocAccLocal
float64 ax
float64 ay
float64 az
")



(provide :localization_msg/LocAcceleration "724325e8eb34f4183b9fd545647fdfc8")


