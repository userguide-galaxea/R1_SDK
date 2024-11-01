;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocVelGlobal)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocVelGlobal (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCVELGLOBAL")
  (make-package "LOCALIZATION_MSG::LOCVELGLOBAL"))

(in-package "ROS")
;;//! \htmlinclude LocVelGlobal.msg.html


(defclass localization_msg::LocVelGlobal
  :super ros::object
  :slots (_ve _vn _vu ))

(defmethod localization_msg::LocVelGlobal
  (:init
   (&key
    ((:ve __ve) 0.0)
    ((:vn __vn) 0.0)
    ((:vu __vu) 0.0)
    )
   (send-super :init)
   (setq _ve (float __ve))
   (setq _vn (float __vn))
   (setq _vu (float __vu))
   self)
  (:ve
   (&optional __ve)
   (if __ve (setq _ve __ve)) _ve)
  (:vn
   (&optional __vn)
   (if __vn (setq _vn __vn)) _vn)
  (:vu
   (&optional __vu)
   (if __vu (setq _vu __vu)) _vu)
  (:serialization-length
   ()
   (+
    ;; float64 _ve
    8
    ;; float64 _vn
    8
    ;; float64 _vu
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ve
       (sys::poke _ve (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vn
       (sys::poke _vn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vu
       (sys::poke _vu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ve
     (setq _ve (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vn
     (setq _vn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vu
     (setq _vu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msg::LocVelGlobal :md5sum-) "1b16a288a0ff22beae511ece39b20beb")
(setf (get localization_msg::LocVelGlobal :datatype-) "localization_msg/LocVelGlobal")
(setf (get localization_msg::LocVelGlobal :definition-)
      "float64 ve
float64 vn
float64 vu
")



(provide :localization_msg/LocVelGlobal "1b16a288a0ff22beae511ece39b20beb")


