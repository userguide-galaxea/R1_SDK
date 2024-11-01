;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocAngularVelocity)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocAngularVelocity (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCANGULARVELOCITY")
  (make-package "LOCALIZATION_MSG::LOCANGULARVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude LocAngularVelocity.msg.html


(defclass localization_msg::LocAngularVelocity
  :super ros::object
  :slots (_available _angvelocity_local ))

(defmethod localization_msg::LocAngularVelocity
  (:init
   (&key
    ((:available __available) 0)
    ((:angvelocity_local __angvelocity_local) (instance localization_msg::LocAngVelLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _angvelocity_local __angvelocity_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:angvelocity_local
   (&rest __angvelocity_local)
   (if (keywordp (car __angvelocity_local))
       (send* _angvelocity_local __angvelocity_local)
     (progn
       (if __angvelocity_local (setq _angvelocity_local (car __angvelocity_local)))
       _angvelocity_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocAngVelLocal _angvelocity_local
    (send _angvelocity_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocAngVelLocal _angvelocity_local
       (send _angvelocity_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocAngVelLocal _angvelocity_local
     (send _angvelocity_local :deserialize buf ptr-) (incf ptr- (send _angvelocity_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocAngularVelocity :md5sum-) "1577f823da62a4c4d63b9b7db50a399c")
(setf (get localization_msg::LocAngularVelocity :datatype-) "localization_msg/LocAngularVelocity")
(setf (get localization_msg::LocAngularVelocity :definition-)
      "uint8 available
LocAngVelLocal angvelocity_local
================================================================================
MSG: localization_msg/LocAngVelLocal
float64 vx
float64 vy
float64 vz
")



(provide :localization_msg/LocAngularVelocity "1577f823da62a4c4d63b9b7db50a399c")


