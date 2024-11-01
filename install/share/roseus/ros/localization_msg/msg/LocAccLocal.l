;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocAccLocal)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocAccLocal (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCACCLOCAL")
  (make-package "LOCALIZATION_MSG::LOCACCLOCAL"))

(in-package "ROS")
;;//! \htmlinclude LocAccLocal.msg.html


(defclass localization_msg::LocAccLocal
  :super ros::object
  :slots (_ax _ay _az ))

(defmethod localization_msg::LocAccLocal
  (:init
   (&key
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    )
   (send-super :init)
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   self)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:serialization-length
   ()
   (+
    ;; float64 _ax
    8
    ;; float64 _ay
    8
    ;; float64 _az
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _az
       (sys::poke _az (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ax
     (setq _ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay
     (setq _ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _az
     (setq _az (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msg::LocAccLocal :md5sum-) "271a8351f08a1993852d2e5e55f1efa1")
(setf (get localization_msg::LocAccLocal :datatype-) "localization_msg/LocAccLocal")
(setf (get localization_msg::LocAccLocal :definition-)
      "float64 ax
float64 ay
float64 az
")



(provide :localization_msg/LocAccLocal "271a8351f08a1993852d2e5e55f1efa1")


