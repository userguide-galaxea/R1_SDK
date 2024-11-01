;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocAccGlobal)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocAccGlobal (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCACCGLOBAL")
  (make-package "LOCALIZATION_MSG::LOCACCGLOBAL"))

(in-package "ROS")
;;//! \htmlinclude LocAccGlobal.msg.html


(defclass localization_msg::LocAccGlobal
  :super ros::object
  :slots (_ae _an _au ))

(defmethod localization_msg::LocAccGlobal
  (:init
   (&key
    ((:ae __ae) 0.0)
    ((:an __an) 0.0)
    ((:au __au) 0.0)
    )
   (send-super :init)
   (setq _ae (float __ae))
   (setq _an (float __an))
   (setq _au (float __au))
   self)
  (:ae
   (&optional __ae)
   (if __ae (setq _ae __ae)) _ae)
  (:an
   (&optional __an)
   (if __an (setq _an __an)) _an)
  (:au
   (&optional __au)
   (if __au (setq _au __au)) _au)
  (:serialization-length
   ()
   (+
    ;; float64 _ae
    8
    ;; float64 _an
    8
    ;; float64 _au
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ae
       (sys::poke _ae (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _an
       (sys::poke _an (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _au
       (sys::poke _au (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ae
     (setq _ae (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _an
     (setq _an (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _au
     (setq _au (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msg::LocAccGlobal :md5sum-) "4bfa374bd35e5bd3a2a85ae867e826e1")
(setf (get localization_msg::LocAccGlobal :datatype-) "localization_msg/LocAccGlobal")
(setf (get localization_msg::LocAccGlobal :definition-)
      "float64 ae
float64 an
float64 au
")



(provide :localization_msg/LocAccGlobal "4bfa374bd35e5bd3a2a85ae867e826e1")


