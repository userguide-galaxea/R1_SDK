;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocPosStdGlobal)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocPosStdGlobal (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCPOSSTDGLOBAL")
  (make-package "LOCALIZATION_MSG::LOCPOSSTDGLOBAL"))

(in-package "ROS")
;;//! \htmlinclude LocPosStdGlobal.msg.html


(defclass localization_msg::LocPosStdGlobal
  :super ros::object
  :slots (_std_pe _std_pn _std_pu ))

(defmethod localization_msg::LocPosStdGlobal
  (:init
   (&key
    ((:std_pe __std_pe) 0.0)
    ((:std_pn __std_pn) 0.0)
    ((:std_pu __std_pu) 0.0)
    )
   (send-super :init)
   (setq _std_pe (float __std_pe))
   (setq _std_pn (float __std_pn))
   (setq _std_pu (float __std_pu))
   self)
  (:std_pe
   (&optional __std_pe)
   (if __std_pe (setq _std_pe __std_pe)) _std_pe)
  (:std_pn
   (&optional __std_pn)
   (if __std_pn (setq _std_pn __std_pn)) _std_pn)
  (:std_pu
   (&optional __std_pu)
   (if __std_pu (setq _std_pu __std_pu)) _std_pu)
  (:serialization-length
   ()
   (+
    ;; float64 _std_pe
    8
    ;; float64 _std_pn
    8
    ;; float64 _std_pu
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _std_pe
       (sys::poke _std_pe (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_pn
       (sys::poke _std_pn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_pu
       (sys::poke _std_pu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _std_pe
     (setq _std_pe (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_pn
     (setq _std_pn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_pu
     (setq _std_pu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msg::LocPosStdGlobal :md5sum-) "1e0504b815b9cc4ce84f74cdaf0bcc3c")
(setf (get localization_msg::LocPosStdGlobal :datatype-) "localization_msg/LocPosStdGlobal")
(setf (get localization_msg::LocPosStdGlobal :definition-)
      "float64 std_pe
float64 std_pn
float64 std_pu
")



(provide :localization_msg/LocPosStdGlobal "1e0504b815b9cc4ce84f74cdaf0bcc3c")


