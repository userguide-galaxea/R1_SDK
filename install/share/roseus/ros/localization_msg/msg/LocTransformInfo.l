;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocTransformInfo)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocTransformInfo (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCTRANSFORMINFO")
  (make-package "LOCALIZATION_MSG::LOCTRANSFORMINFO"))

(in-package "ROS")
;;//! \htmlinclude LocTransformInfo.msg.html


(defclass localization_msg::LocTransformInfo
  :super ros::object
  :slots (_transform_q _transform_t _transform_center ))

(defmethod localization_msg::LocTransformInfo
  (:init
   (&key
    ((:transform_q __transform_q) (instance localization_msg::LocQuaternion :init))
    ((:transform_t __transform_t) (instance localization_msg::LocPosLocal :init))
    ((:transform_center __transform_center) (instance localization_msg::LocPosGlobal :init))
    )
   (send-super :init)
   (setq _transform_q __transform_q)
   (setq _transform_t __transform_t)
   (setq _transform_center __transform_center)
   self)
  (:transform_q
   (&rest __transform_q)
   (if (keywordp (car __transform_q))
       (send* _transform_q __transform_q)
     (progn
       (if __transform_q (setq _transform_q (car __transform_q)))
       _transform_q)))
  (:transform_t
   (&rest __transform_t)
   (if (keywordp (car __transform_t))
       (send* _transform_t __transform_t)
     (progn
       (if __transform_t (setq _transform_t (car __transform_t)))
       _transform_t)))
  (:transform_center
   (&rest __transform_center)
   (if (keywordp (car __transform_center))
       (send* _transform_center __transform_center)
     (progn
       (if __transform_center (setq _transform_center (car __transform_center)))
       _transform_center)))
  (:serialization-length
   ()
   (+
    ;; localization_msg/LocQuaternion _transform_q
    (send _transform_q :serialization-length)
    ;; localization_msg/LocPosLocal _transform_t
    (send _transform_t :serialization-length)
    ;; localization_msg/LocPosGlobal _transform_center
    (send _transform_center :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; localization_msg/LocQuaternion _transform_q
       (send _transform_q :serialize s)
     ;; localization_msg/LocPosLocal _transform_t
       (send _transform_t :serialize s)
     ;; localization_msg/LocPosGlobal _transform_center
       (send _transform_center :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; localization_msg/LocQuaternion _transform_q
     (send _transform_q :deserialize buf ptr-) (incf ptr- (send _transform_q :serialization-length))
   ;; localization_msg/LocPosLocal _transform_t
     (send _transform_t :deserialize buf ptr-) (incf ptr- (send _transform_t :serialization-length))
   ;; localization_msg/LocPosGlobal _transform_center
     (send _transform_center :deserialize buf ptr-) (incf ptr- (send _transform_center :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocTransformInfo :md5sum-) "9b46b84084dc9d2a0fe41cb847809c2e")
(setf (get localization_msg::LocTransformInfo :datatype-) "localization_msg/LocTransformInfo")
(setf (get localization_msg::LocTransformInfo :definition-)
      "LocQuaternion transform_q
LocPosLocal transform_t
LocPosGlobal transform_center
================================================================================
MSG: localization_msg/LocQuaternion
float64 w
float64 x
float64 y
float64 z
================================================================================
MSG: localization_msg/LocPosLocal
float64 x
float64 y
float64 z
================================================================================
MSG: localization_msg/LocPosGlobal
float64 x
float64 y
float64 z
")



(provide :localization_msg/LocTransformInfo "9b46b84084dc9d2a0fe41cb847809c2e")


