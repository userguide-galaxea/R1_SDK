;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocAngVelLocal)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocAngVelLocal (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCANGVELLOCAL")
  (make-package "LOCALIZATION_MSG::LOCANGVELLOCAL"))

(in-package "ROS")
;;//! \htmlinclude LocAngVelLocal.msg.html


(defclass localization_msg::LocAngVelLocal
  :super ros::object
  :slots (_vx _vy _vz ))

(defmethod localization_msg::LocAngVelLocal
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msg::LocAngVelLocal :md5sum-) "ffb367ff390f5e01cb55c0c75927c19a")
(setf (get localization_msg::LocAngVelLocal :datatype-) "localization_msg/LocAngVelLocal")
(setf (get localization_msg::LocAngVelLocal :definition-)
      "float64 vx
float64 vy
float64 vz
")



(provide :localization_msg/LocAngVelLocal "ffb367ff390f5e01cb55c0c75927c19a")


