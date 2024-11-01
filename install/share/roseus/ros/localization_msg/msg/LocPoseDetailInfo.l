;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocPoseDetailInfo)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocPoseDetailInfo (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCPOSEDETAILINFO")
  (make-package "LOCALIZATION_MSG::LOCPOSEDETAILINFO"))

(in-package "ROS")
;;//! \htmlinclude LocPoseDetailInfo.msg.html


(defclass localization_msg::LocPoseDetailInfo
  :super ros::object
  :slots (_available _is_keyframe _has_scale _pose_type ))

(defmethod localization_msg::LocPoseDetailInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:is_keyframe __is_keyframe) nil)
    ((:has_scale __has_scale) nil)
    ((:pose_type __pose_type) 0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _is_keyframe __is_keyframe)
   (setq _has_scale __has_scale)
   (setq _pose_type (round __pose_type))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:is_keyframe
   (&optional (__is_keyframe :null))
   (if (not (eq __is_keyframe :null)) (setq _is_keyframe __is_keyframe)) _is_keyframe)
  (:has_scale
   (&optional (__has_scale :null))
   (if (not (eq __has_scale :null)) (setq _has_scale __has_scale)) _has_scale)
  (:pose_type
   (&optional __pose_type)
   (if __pose_type (setq _pose_type __pose_type)) _pose_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; bool _is_keyframe
    1
    ;; bool _has_scale
    1
    ;; uint8 _pose_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; bool _is_keyframe
       (if _is_keyframe (write-byte -1 s) (write-byte 0 s))
     ;; bool _has_scale
       (if _has_scale (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _pose_type
       (write-byte _pose_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _is_keyframe
     (setq _is_keyframe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _has_scale
     (setq _has_scale (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _pose_type
     (setq _pose_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get localization_msg::LocPoseDetailInfo :md5sum-) "7acfcd9c3212736da0f2f283eb3505b9")
(setf (get localization_msg::LocPoseDetailInfo :datatype-) "localization_msg/LocPoseDetailInfo")
(setf (get localization_msg::LocPoseDetailInfo :definition-)
      "uint8 available
bool is_keyframe
bool has_scale
uint8 pose_type
")



(provide :localization_msg/LocPoseDetailInfo "7acfcd9c3212736da0f2f283eb3505b9")


