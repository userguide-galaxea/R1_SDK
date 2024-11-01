;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocAccStdGlobal)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocAccStdGlobal (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCACCSTDGLOBAL")
  (make-package "LOCALIZATION_MSG::LOCACCSTDGLOBAL"))

(in-package "ROS")
;;//! \htmlinclude LocAccStdGlobal.msg.html


(defclass localization_msg::LocAccStdGlobal
  :super ros::object
  :slots (_std_ae _std_an _std_au ))

(defmethod localization_msg::LocAccStdGlobal
  (:init
   (&key
    ((:std_ae __std_ae) 0.0)
    ((:std_an __std_an) 0.0)
    ((:std_au __std_au) 0.0)
    )
   (send-super :init)
   (setq _std_ae (float __std_ae))
   (setq _std_an (float __std_an))
   (setq _std_au (float __std_au))
   self)
  (:std_ae
   (&optional __std_ae)
   (if __std_ae (setq _std_ae __std_ae)) _std_ae)
  (:std_an
   (&optional __std_an)
   (if __std_an (setq _std_an __std_an)) _std_an)
  (:std_au
   (&optional __std_au)
   (if __std_au (setq _std_au __std_au)) _std_au)
  (:serialization-length
   ()
   (+
    ;; float64 _std_ae
    8
    ;; float64 _std_an
    8
    ;; float64 _std_au
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _std_ae
       (sys::poke _std_ae (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_an
       (sys::poke _std_an (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_au
       (sys::poke _std_au (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _std_ae
     (setq _std_ae (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_an
     (setq _std_an (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_au
     (setq _std_au (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msg::LocAccStdGlobal :md5sum-) "26a185d309e37a3ff7938ddc96aab849")
(setf (get localization_msg::LocAccStdGlobal :datatype-) "localization_msg/LocAccStdGlobal")
(setf (get localization_msg::LocAccStdGlobal :definition-)
      "float64 std_ae
float64 std_an
float64 std_au
")



(provide :localization_msg/LocAccStdGlobal "26a185d309e37a3ff7938ddc96aab849")


