;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocAngularVelocityStd)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocAngularVelocityStd (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCANGULARVELOCITYSTD")
  (make-package "LOCALIZATION_MSG::LOCANGULARVELOCITYSTD"))

(in-package "ROS")
;;//! \htmlinclude LocAngularVelocityStd.msg.html


(defclass localization_msg::LocAngularVelocityStd
  :super ros::object
  :slots (_available _angvel_std_local ))

(defmethod localization_msg::LocAngularVelocityStd
  (:init
   (&key
    ((:available __available) 0)
    ((:angvel_std_local __angvel_std_local) (instance localization_msg::LocAngVelStdLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _angvel_std_local __angvel_std_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:angvel_std_local
   (&rest __angvel_std_local)
   (if (keywordp (car __angvel_std_local))
       (send* _angvel_std_local __angvel_std_local)
     (progn
       (if __angvel_std_local (setq _angvel_std_local (car __angvel_std_local)))
       _angvel_std_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocAngVelStdLocal _angvel_std_local
    (send _angvel_std_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocAngVelStdLocal _angvel_std_local
       (send _angvel_std_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocAngVelStdLocal _angvel_std_local
     (send _angvel_std_local :deserialize buf ptr-) (incf ptr- (send _angvel_std_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocAngularVelocityStd :md5sum-) "3d58b49b7890de9832cfd396d122e5e5")
(setf (get localization_msg::LocAngularVelocityStd :datatype-) "localization_msg/LocAngularVelocityStd")
(setf (get localization_msg::LocAngularVelocityStd :definition-)
      "uint8 available
LocAngVelStdLocal angvel_std_local
================================================================================
MSG: localization_msg/LocAngVelStdLocal
float64 std_vx
float64 std_vy
float64 std_vz
")



(provide :localization_msg/LocAngularVelocityStd "3d58b49b7890de9832cfd396d122e5e5")


