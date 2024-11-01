;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::Drivetrain)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'Drivetrain (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::DRIVETRAIN")
  (make-package "HDAS_MSG::DRIVETRAIN"))

(in-package "ROS")
;;//! \htmlinclude Drivetrain.msg.html


(defclass hdas_msg::Drivetrain
  :super ros::object
  :slots (_vel_fl _vel_fr _vel_r _angle_fl _angle_fr _angle_r ))

(defmethod hdas_msg::Drivetrain
  (:init
   (&key
    ((:vel_fl __vel_fl) 0.0)
    ((:vel_fr __vel_fr) 0.0)
    ((:vel_r __vel_r) 0.0)
    ((:angle_fl __angle_fl) 0.0)
    ((:angle_fr __angle_fr) 0.0)
    ((:angle_r __angle_r) 0.0)
    )
   (send-super :init)
   (setq _vel_fl (float __vel_fl))
   (setq _vel_fr (float __vel_fr))
   (setq _vel_r (float __vel_r))
   (setq _angle_fl (float __angle_fl))
   (setq _angle_fr (float __angle_fr))
   (setq _angle_r (float __angle_r))
   self)
  (:vel_fl
   (&optional __vel_fl)
   (if __vel_fl (setq _vel_fl __vel_fl)) _vel_fl)
  (:vel_fr
   (&optional __vel_fr)
   (if __vel_fr (setq _vel_fr __vel_fr)) _vel_fr)
  (:vel_r
   (&optional __vel_r)
   (if __vel_r (setq _vel_r __vel_r)) _vel_r)
  (:angle_fl
   (&optional __angle_fl)
   (if __angle_fl (setq _angle_fl __angle_fl)) _angle_fl)
  (:angle_fr
   (&optional __angle_fr)
   (if __angle_fr (setq _angle_fr __angle_fr)) _angle_fr)
  (:angle_r
   (&optional __angle_r)
   (if __angle_r (setq _angle_r __angle_r)) _angle_r)
  (:serialization-length
   ()
   (+
    ;; float32 _vel_fl
    4
    ;; float32 _vel_fr
    4
    ;; float32 _vel_r
    4
    ;; float32 _angle_fl
    4
    ;; float32 _angle_fr
    4
    ;; float32 _angle_r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vel_fl
       (sys::poke _vel_fl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_fr
       (sys::poke _vel_fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_r
       (sys::poke _vel_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_fl
       (sys::poke _angle_fl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_fr
       (sys::poke _angle_fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_r
       (sys::poke _angle_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vel_fl
     (setq _vel_fl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_fr
     (setq _vel_fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_r
     (setq _vel_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_fl
     (setq _angle_fl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_fr
     (setq _angle_fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_r
     (setq _angle_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hdas_msg::Drivetrain :md5sum-) "0a54847f1086c67159c1bb023398666f")
(setf (get hdas_msg::Drivetrain :datatype-) "hdas_msg/Drivetrain")
(setf (get hdas_msg::Drivetrain :definition-)
      "float32 vel_fl
float32 vel_fr
float32 vel_r
float32 angle_fl
float32 angle_fr
float32 angle_r
")



(provide :hdas_msg/Drivetrain "0a54847f1086c67159c1bb023398666f")


