;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocOrientationStd)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocOrientationStd (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCORIENTATIONSTD")
  (make-package "LOCALIZATION_MSG::LOCORIENTATIONSTD"))

(in-package "ROS")
;;//! \htmlinclude LocOrientationStd.msg.html


(defclass localization_msg::LocOrientationStd
  :super ros::object
  :slots (_available _ori_std_xyz ))

(defmethod localization_msg::LocOrientationStd
  (:init
   (&key
    ((:available __available) 0)
    ((:ori_std_xyz __ori_std_xyz) (instance localization_msg::LocOriStdXyz :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _ori_std_xyz __ori_std_xyz)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:ori_std_xyz
   (&rest __ori_std_xyz)
   (if (keywordp (car __ori_std_xyz))
       (send* _ori_std_xyz __ori_std_xyz)
     (progn
       (if __ori_std_xyz (setq _ori_std_xyz (car __ori_std_xyz)))
       _ori_std_xyz)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; localization_msg/LocOriStdXyz _ori_std_xyz
    (send _ori_std_xyz :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; localization_msg/LocOriStdXyz _ori_std_xyz
       (send _ori_std_xyz :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; localization_msg/LocOriStdXyz _ori_std_xyz
     (send _ori_std_xyz :deserialize buf ptr-) (incf ptr- (send _ori_std_xyz :serialization-length))
   ;;
   self)
  )

(setf (get localization_msg::LocOrientationStd :md5sum-) "619b5d9fe08a8b0c2bbdd05b77fd532a")
(setf (get localization_msg::LocOrientationStd :datatype-) "localization_msg/LocOrientationStd")
(setf (get localization_msg::LocOrientationStd :definition-)
      "uint8 available
LocOriStdXyz ori_std_xyz
================================================================================
MSG: localization_msg/LocOriStdXyz
float64 std_faix
float64 std_faiy
float64 std_faiz
")



(provide :localization_msg/LocOrientationStd "619b5d9fe08a8b0c2bbdd05b77fd532a")


