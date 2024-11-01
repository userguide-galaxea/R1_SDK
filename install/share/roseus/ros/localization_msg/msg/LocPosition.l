;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocPosition)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocPosition (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCPOSITION")
  (make-package "LOCALIZATION_MSG::LOCPOSITION"))

(in-package "ROS")
;;//! \htmlinclude LocPosition.msg.html


(defclass localization_msg::LocPosition
  :super ros::object
  :slots (_available _position_global _position_local ))

(defmethod localization_msg::LocPosition
  (:init
   (&key
    ((:available __available) 0)
    ((:position_global __position_global) (instance localization_msg::LocPosGlobal :init))
    ((:position_local __position_local) (instance localization_msg::LocPosLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _position_global __position_global)
   (setq _position_local __position_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:position_global
   (&rest __position_global)
   (if (keywordp (car __position_global))
       (send* _position_global __position_global)
     (progn
       (if __position_global (setq _position_global (car __position_global)))
       _position_global)))
  (:position_local
   (&rest __position_local)
   (if (keywordp (car __position_local))
       (send* _position_local __position_local)
     (progn
       (if __position_local (setq _position_local (car __position_local)))
       _position_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocPosGlobal _position_global
    (send _position_global :serialization-length)
    ;; localization_msg/LocPosLocal _position_local
    (send _position_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocPosGlobal _position_global
       (send _position_global :serialize s)
     ;; localization_msg/LocPosLocal _position_local
       (send _position_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocPosGlobal _position_global
     (send _position_global :deserialize buf ptr-) (incf ptr- (send _position_global :serialization-length))
   ;; localization_msg/LocPosLocal _position_local
     (send _position_local :deserialize buf ptr-) (incf ptr- (send _position_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocPosition :md5sum-) "50805a3c03e9264464f9b0b6c37b9360")
(setf (get localization_msg::LocPosition :datatype-) "localization_msg/LocPosition")
(setf (get localization_msg::LocPosition :definition-)
      "uint8 available
LocPosGlobal position_global
LocPosLocal position_local
================================================================================
MSG: localization_msg/LocPosGlobal
float64 x
float64 y
float64 z
================================================================================
MSG: localization_msg/LocPosLocal
float64 x
float64 y
float64 z
")



(provide :localization_msg/LocPosition "50805a3c03e9264464f9b0b6c37b9360")


