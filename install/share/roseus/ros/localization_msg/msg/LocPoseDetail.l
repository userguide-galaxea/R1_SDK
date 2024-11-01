;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocPoseDetail)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocPoseDetail (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCPOSEDETAIL")
  (make-package "LOCALIZATION_MSG::LOCPOSEDETAIL"))

(in-package "ROS")
;;//! \htmlinclude LocPoseDetail.msg.html


(defclass localization_msg::LocPoseDetail
  :super ros::object
  :slots (_available _pose_detail_info ))

(defmethod localization_msg::LocPoseDetail
  (:init
   (&key
    ((:available __available) 0)
    ((:pose_detail_info __pose_detail_info) (instance localization_msg::LocPoseDetailInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _pose_detail_info __pose_detail_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:pose_detail_info
   (&rest __pose_detail_info)
   (if (keywordp (car __pose_detail_info))
       (send* _pose_detail_info __pose_detail_info)
     (progn
       (if __pose_detail_info (setq _pose_detail_info (car __pose_detail_info)))
       _pose_detail_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocPoseDetailInfo _pose_detail_info
    (send _pose_detail_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocPoseDetailInfo _pose_detail_info
       (send _pose_detail_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocPoseDetailInfo _pose_detail_info
     (send _pose_detail_info :deserialize buf ptr-) (incf ptr- (send _pose_detail_info :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocPoseDetail :md5sum-) "004458d6e21a0d465dbae5ebb975fba4")
(setf (get localization_msg::LocPoseDetail :datatype-) "localization_msg/LocPoseDetail")
(setf (get localization_msg::LocPoseDetail :definition-)
      "uint8 available
LocPoseDetailInfo pose_detail_info
================================================================================
MSG: localization_msg/LocPoseDetailInfo
uint8 available
bool is_keyframe
bool has_scale
uint8 pose_type
")



(provide :localization_msg/LocPoseDetail "004458d6e21a0d465dbae5ebb975fba4")


