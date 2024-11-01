;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::controller_signal)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'controller_signal (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::CONTROLLER_SIGNAL")
  (make-package "HDAS_MSG::CONTROLLER_SIGNAL"))

(in-package "ROS")
;;//! \htmlinclude controller_signal.msg.html


(defclass hdas_msg::controller_signal
  :super ros::object
  :slots (_left_x_axis _left_y_axis _right_x_axis _right_y_axis _mode ))

(defmethod hdas_msg::controller_signal
  (:init
   (&key
    ((:left_x_axis __left_x_axis) 0.0)
    ((:left_y_axis __left_y_axis) 0.0)
    ((:right_x_axis __right_x_axis) 0.0)
    ((:right_y_axis __right_y_axis) 0.0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _left_x_axis (float __left_x_axis))
   (setq _left_y_axis (float __left_y_axis))
   (setq _right_x_axis (float __right_x_axis))
   (setq _right_y_axis (float __right_y_axis))
   (setq _mode (round __mode))
   self)
  (:left_x_axis
   (&optional __left_x_axis)
   (if __left_x_axis (setq _left_x_axis __left_x_axis)) _left_x_axis)
  (:left_y_axis
   (&optional __left_y_axis)
   (if __left_y_axis (setq _left_y_axis __left_y_axis)) _left_y_axis)
  (:right_x_axis
   (&optional __right_x_axis)
   (if __right_x_axis (setq _right_x_axis __right_x_axis)) _right_x_axis)
  (:right_y_axis
   (&optional __right_y_axis)
   (if __right_y_axis (setq _right_y_axis __right_y_axis)) _right_y_axis)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; float32 _left_x_axis
    4
    ;; float32 _left_y_axis
    4
    ;; float32 _right_x_axis
    4
    ;; float32 _right_y_axis
    4
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left_x_axis
       (sys::poke _left_x_axis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_y_axis
       (sys::poke _left_y_axis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_x_axis
       (sys::poke _right_x_axis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_y_axis
       (sys::poke _right_y_axis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left_x_axis
     (setq _left_x_axis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_y_axis
     (setq _left_y_axis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_x_axis
     (setq _right_x_axis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_y_axis
     (setq _right_y_axis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hdas_msg::controller_signal :md5sum-) "8e6ccbca8cd4108e7851c191481bfb77")
(setf (get hdas_msg::controller_signal :datatype-) "hdas_msg/controller_signal")
(setf (get hdas_msg::controller_signal :definition-)
      "float32 left_x_axis
float32 left_y_axis
float32 right_x_axis
float32 right_y_axis
uint8 mode
")



(provide :hdas_msg/controller_signal "8e6ccbca8cd4108e7851c191481bfb77")


