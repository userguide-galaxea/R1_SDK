;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocOrientation)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocOrientation (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCORIENTATION")
  (make-package "LOCALIZATION_MSG::LOCORIENTATION"))

(in-package "ROS")
;;//! \htmlinclude LocOrientation.msg.html


(defclass localization_msg::LocOrientation
  :super ros::object
  :slots (_available _euler_global _quaternion_global _euler_local _quaternion_local ))

(defmethod localization_msg::LocOrientation
  (:init
   (&key
    ((:available __available) 0)
    ((:euler_global __euler_global) (instance localization_msg::LocEuler :init))
    ((:quaternion_global __quaternion_global) (instance localization_msg::LocQuaternion :init))
    ((:euler_local __euler_local) (instance localization_msg::LocEuler :init))
    ((:quaternion_local __quaternion_local) (instance localization_msg::LocQuaternion :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _euler_global __euler_global)
   (setq _quaternion_global __quaternion_global)
   (setq _euler_local __euler_local)
   (setq _quaternion_local __quaternion_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:euler_global
   (&rest __euler_global)
   (if (keywordp (car __euler_global))
       (send* _euler_global __euler_global)
     (progn
       (if __euler_global (setq _euler_global (car __euler_global)))
       _euler_global)))
  (:quaternion_global
   (&rest __quaternion_global)
   (if (keywordp (car __quaternion_global))
       (send* _quaternion_global __quaternion_global)
     (progn
       (if __quaternion_global (setq _quaternion_global (car __quaternion_global)))
       _quaternion_global)))
  (:euler_local
   (&rest __euler_local)
   (if (keywordp (car __euler_local))
       (send* _euler_local __euler_local)
     (progn
       (if __euler_local (setq _euler_local (car __euler_local)))
       _euler_local)))
  (:quaternion_local
   (&rest __quaternion_local)
   (if (keywordp (car __quaternion_local))
       (send* _quaternion_local __quaternion_local)
     (progn
       (if __quaternion_local (setq _quaternion_local (car __quaternion_local)))
       _quaternion_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocEuler _euler_global
    (send _euler_global :serialization-length)
    ;; localization_msg/LocQuaternion _quaternion_global
    (send _quaternion_global :serialization-length)
    ;; localization_msg/LocEuler _euler_local
    (send _euler_local :serialization-length)
    ;; localization_msg/LocQuaternion _quaternion_local
    (send _quaternion_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocEuler _euler_global
       (send _euler_global :serialize s)
     ;; localization_msg/LocQuaternion _quaternion_global
       (send _quaternion_global :serialize s)
     ;; localization_msg/LocEuler _euler_local
       (send _euler_local :serialize s)
     ;; localization_msg/LocQuaternion _quaternion_local
       (send _quaternion_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocEuler _euler_global
     (send _euler_global :deserialize buf ptr-) (incf ptr- (send _euler_global :serialization-length))
   ;; localization_msg/LocQuaternion _quaternion_global
     (send _quaternion_global :deserialize buf ptr-) (incf ptr- (send _quaternion_global :serialization-length))
   ;; localization_msg/LocEuler _euler_local
     (send _euler_local :deserialize buf ptr-) (incf ptr- (send _euler_local :serialization-length))
   ;; localization_msg/LocQuaternion _quaternion_local
     (send _quaternion_local :deserialize buf ptr-) (incf ptr- (send _quaternion_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocOrientation :md5sum-) "d51feb8932d7b17d92287bf94b778169")
(setf (get localization_msg::LocOrientation :datatype-) "localization_msg/LocOrientation")
(setf (get localization_msg::LocOrientation :definition-)
      "uint8 available
LocEuler euler_global
LocQuaternion quaternion_global
LocEuler euler_local
LocQuaternion quaternion_local
================================================================================
MSG: localization_msg/LocEuler
float64 roll
float64 pitch
float64 yaw
================================================================================
MSG: localization_msg/LocQuaternion
float64 w
float64 x
float64 y
float64 z
")



(provide :localization_msg/LocOrientation "d51feb8932d7b17d92287bf94b778169")


