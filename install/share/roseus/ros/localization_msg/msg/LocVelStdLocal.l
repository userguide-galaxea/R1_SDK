;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocVelStdLocal)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocVelStdLocal (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCVELSTDLOCAL")
  (make-package "LOCALIZATION_MSG::LOCVELSTDLOCAL"))

(in-package "ROS")
;;//! \htmlinclude LocVelStdLocal.msg.html


(defclass localization_msg::LocVelStdLocal
  :super ros::object
  :slots (_std_vx _std_vy _std_vz ))

(defmethod localization_msg::LocVelStdLocal
  (:init
   (&key
    ((:std_vx __std_vx) 0.0)
    ((:std_vy __std_vy) 0.0)
    ((:std_vz __std_vz) 0.0)
    )
   (send-super :init)
   (setq _std_vx (float __std_vx))
   (setq _std_vy (float __std_vy))
   (setq _std_vz (float __std_vz))
   self)
  (:std_vx
   (&optional __std_vx)
   (if __std_vx (setq _std_vx __std_vx)) _std_vx)
  (:std_vy
   (&optional __std_vy)
   (if __std_vy (setq _std_vy __std_vy)) _std_vy)
  (:std_vz
   (&optional __std_vz)
   (if __std_vz (setq _std_vz __std_vz)) _std_vz)
  (:serialization-length
   ()
   (+
    ;; float64 _std_vx
    8
    ;; float64 _std_vy
    8
    ;; float64 _std_vz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _std_vx
       (sys::poke _std_vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_vy
       (sys::poke _std_vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_vz
       (sys::poke _std_vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _std_vx
     (setq _std_vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_vy
     (setq _std_vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_vz
     (setq _std_vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msg::LocVelStdLocal :md5sum-) "714b0488d1b05ea8fb95fcdd2da24c03")
(setf (get localization_msg::LocVelStdLocal :datatype-) "localization_msg/LocVelStdLocal")
(setf (get localization_msg::LocVelStdLocal :definition-)
      "float64 std_vx
float64 std_vy
float64 std_vz
")



(provide :localization_msg/LocVelStdLocal "714b0488d1b05ea8fb95fcdd2da24c03")


