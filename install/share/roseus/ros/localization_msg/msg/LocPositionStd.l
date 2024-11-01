;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocPositionStd)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocPositionStd (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCPOSITIONSTD")
  (make-package "LOCALIZATION_MSG::LOCPOSITIONSTD"))

(in-package "ROS")
;;//! \htmlinclude LocPositionStd.msg.html


(defclass localization_msg::LocPositionStd
  :super ros::object
  :slots (_available _pos_std_global _pos_std_local ))

(defmethod localization_msg::LocPositionStd
  (:init
   (&key
    ((:available __available) 0)
    ((:pos_std_global __pos_std_global) (instance localization_msg::LocPosStdGlobal :init))
    ((:pos_std_local __pos_std_local) (instance localization_msg::LocPosStdLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _pos_std_global __pos_std_global)
   (setq _pos_std_local __pos_std_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:pos_std_global
   (&rest __pos_std_global)
   (if (keywordp (car __pos_std_global))
       (send* _pos_std_global __pos_std_global)
     (progn
       (if __pos_std_global (setq _pos_std_global (car __pos_std_global)))
       _pos_std_global)))
  (:pos_std_local
   (&rest __pos_std_local)
   (if (keywordp (car __pos_std_local))
       (send* _pos_std_local __pos_std_local)
     (progn
       (if __pos_std_local (setq _pos_std_local (car __pos_std_local)))
       _pos_std_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocPosStdGlobal _pos_std_global
    (send _pos_std_global :serialization-length)
    ;; localization_msg/LocPosStdLocal _pos_std_local
    (send _pos_std_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocPosStdGlobal _pos_std_global
       (send _pos_std_global :serialize s)
     ;; localization_msg/LocPosStdLocal _pos_std_local
       (send _pos_std_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocPosStdGlobal _pos_std_global
     (send _pos_std_global :deserialize buf ptr-) (incf ptr- (send _pos_std_global :serialization-length))
   ;; localization_msg/LocPosStdLocal _pos_std_local
     (send _pos_std_local :deserialize buf ptr-) (incf ptr- (send _pos_std_local :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocPositionStd :md5sum-) "fa3e734857f8512f8e0771fab07d1903")
(setf (get localization_msg::LocPositionStd :datatype-) "localization_msg/LocPositionStd")
(setf (get localization_msg::LocPositionStd :definition-)
      "uint8 available
LocPosStdGlobal pos_std_global
LocPosStdLocal pos_std_local
================================================================================
MSG: localization_msg/LocPosStdGlobal
float64 std_pe
float64 std_pn
float64 std_pu
================================================================================
MSG: localization_msg/LocPosStdLocal
float64 std_px
float64 std_py
float64 std_pz
")



(provide :localization_msg/LocPositionStd "fa3e734857f8512f8e0771fab07d1903")


