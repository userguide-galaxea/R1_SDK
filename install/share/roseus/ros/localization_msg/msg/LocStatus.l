;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocStatus)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocStatus (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCSTATUS")
  (make-package "LOCALIZATION_MSG::LOCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LocStatus.msg.html


(defclass localization_msg::LocStatus
  :super ros::object
  :slots (_available _status_info ))

(defmethod localization_msg::LocStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:status_info __status_info) (instance localization_msg::LocStatusInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _status_info __status_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:status_info
   (&rest __status_info)
   (if (keywordp (car __status_info))
       (send* _status_info __status_info)
     (progn
       (if __status_info (setq _status_info (car __status_info)))
       _status_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocStatusInfo _status_info
    (send _status_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocStatusInfo _status_info
       (send _status_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocStatusInfo _status_info
     (send _status_info :deserialize buf ptr-) (incf ptr- (send _status_info :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocStatus :md5sum-) "e00652c44afdc23232e5217c17a7d02e")
(setf (get localization_msg::LocStatus :datatype-) "localization_msg/LocStatus")
(setf (get localization_msg::LocStatus :definition-)
      "uint8 available
LocStatusInfo status_info
================================================================================
MSG: localization_msg/LocStatusInfo
uint8 quality
uint64 common
uint64 extended
uint8 type
")



(provide :localization_msg/LocStatus "e00652c44afdc23232e5217c17a7d02e")


