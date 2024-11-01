;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocTransform)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocTransform (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCTRANSFORM")
  (make-package "LOCALIZATION_MSG::LOCTRANSFORM"))

(in-package "ROS")
;;//! \htmlinclude LocTransform.msg.html


(defclass localization_msg::LocTransform
  :super ros::object
  :slots (_available _transform_llh_to_boot _transform_avp_map_to_boot _transform_ego_motion_to_boot ))

(defmethod localization_msg::LocTransform
  (:init
   (&key
    ((:available __available) 0)
    ((:transform_llh_to_boot __transform_llh_to_boot) (instance localization_msg::LocTransformInfo :init))
    ((:transform_avp_map_to_boot __transform_avp_map_to_boot) (instance localization_msg::LocTransformInfo :init))
    ((:transform_ego_motion_to_boot __transform_ego_motion_to_boot) (instance localization_msg::LocTransformInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _transform_llh_to_boot __transform_llh_to_boot)
   (setq _transform_avp_map_to_boot __transform_avp_map_to_boot)
   (setq _transform_ego_motion_to_boot __transform_ego_motion_to_boot)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:transform_llh_to_boot
   (&rest __transform_llh_to_boot)
   (if (keywordp (car __transform_llh_to_boot))
       (send* _transform_llh_to_boot __transform_llh_to_boot)
     (progn
       (if __transform_llh_to_boot (setq _transform_llh_to_boot (car __transform_llh_to_boot)))
       _transform_llh_to_boot)))
  (:transform_avp_map_to_boot
   (&rest __transform_avp_map_to_boot)
   (if (keywordp (car __transform_avp_map_to_boot))
       (send* _transform_avp_map_to_boot __transform_avp_map_to_boot)
     (progn
       (if __transform_avp_map_to_boot (setq _transform_avp_map_to_boot (car __transform_avp_map_to_boot)))
       _transform_avp_map_to_boot)))
  (:transform_ego_motion_to_boot
   (&rest __transform_ego_motion_to_boot)
   (if (keywordp (car __transform_ego_motion_to_boot))
       (send* _transform_ego_motion_to_boot __transform_ego_motion_to_boot)
     (progn
       (if __transform_ego_motion_to_boot (setq _transform_ego_motion_to_boot (car __transform_ego_motion_to_boot)))
       _transform_ego_motion_to_boot)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocTransformInfo _transform_llh_to_boot
    (send _transform_llh_to_boot :serialization-length)
    ;; localization_msg/LocTransformInfo _transform_avp_map_to_boot
    (send _transform_avp_map_to_boot :serialization-length)
    ;; localization_msg/LocTransformInfo _transform_ego_motion_to_boot
    (send _transform_ego_motion_to_boot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocTransformInfo _transform_llh_to_boot
       (send _transform_llh_to_boot :serialize s)
     ;; localization_msg/LocTransformInfo _transform_avp_map_to_boot
       (send _transform_avp_map_to_boot :serialize s)
     ;; localization_msg/LocTransformInfo _transform_ego_motion_to_boot
       (send _transform_ego_motion_to_boot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocTransformInfo _transform_llh_to_boot
     (send _transform_llh_to_boot :deserialize buf ptr-) (incf ptr- (send _transform_llh_to_boot :serialization-length))
   ;; localization_msg/LocTransformInfo _transform_avp_map_to_boot
     (send _transform_avp_map_to_boot :deserialize buf ptr-) (incf ptr- (send _transform_avp_map_to_boot :serialization-length))
   ;; localization_msg/LocTransformInfo _transform_ego_motion_to_boot
     (send _transform_ego_motion_to_boot :deserialize buf ptr-) (incf ptr- (send _transform_ego_motion_to_boot :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocTransform :md5sum-) "3d6a2de0b6a829c7a528510f80cc997a")
(setf (get localization_msg::LocTransform :datatype-) "localization_msg/LocTransform")
(setf (get localization_msg::LocTransform :definition-)
      "uint8 available
LocTransformInfo transform_llh_to_boot
LocTransformInfo transform_avp_map_to_boot
LocTransformInfo transform_ego_motion_to_boot
================================================================================
MSG: localization_msg/LocTransformInfo
LocQuaternion transform_q
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



(provide :localization_msg/LocTransform "3d6a2de0b6a829c7a528510f80cc997a")


