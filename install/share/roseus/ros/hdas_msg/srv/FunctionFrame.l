;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::FunctionFrame)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'FunctionFrame (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::FUNCTIONFRAME")
  (make-package "HDAS_MSG::FUNCTIONFRAME"))
(unless (find-package "HDAS_MSG::FUNCTIONFRAMEREQUEST")
  (make-package "HDAS_MSG::FUNCTIONFRAMEREQUEST"))
(unless (find-package "HDAS_MSG::FUNCTIONFRAMERESPONSE")
  (make-package "HDAS_MSG::FUNCTIONFRAMERESPONSE"))

(in-package "ROS")





(defclass hdas_msg::FunctionFrameRequest
  :super ros::object
  :slots (_command ))

(defmethod hdas_msg::FunctionFrameRequest
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass hdas_msg::FunctionFrameResponse
  :super ros::object
  :slots (_success _message ))

(defmethod hdas_msg::FunctionFrameResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hdas_msg::FunctionFrame
  :super ros::object
  :slots ())

(setf (get hdas_msg::FunctionFrame :md5sum-) "28ca10d14356fafac343096e46d08b18")
(setf (get hdas_msg::FunctionFrame :datatype-) "hdas_msg/FunctionFrame")
(setf (get hdas_msg::FunctionFrame :request) hdas_msg::FunctionFrameRequest)
(setf (get hdas_msg::FunctionFrame :response) hdas_msg::FunctionFrameResponse)

(defmethod hdas_msg::FunctionFrameRequest
  (:response () (instance hdas_msg::FunctionFrameResponse :init)))

(setf (get hdas_msg::FunctionFrameRequest :md5sum-) "28ca10d14356fafac343096e46d08b18")
(setf (get hdas_msg::FunctionFrameRequest :datatype-) "hdas_msg/FunctionFrameRequest")
(setf (get hdas_msg::FunctionFrameRequest :definition-)
      "uint8 command
---
bool success
string message

")

(setf (get hdas_msg::FunctionFrameResponse :md5sum-) "28ca10d14356fafac343096e46d08b18")
(setf (get hdas_msg::FunctionFrameResponse :datatype-) "hdas_msg/FunctionFrameResponse")
(setf (get hdas_msg::FunctionFrameResponse :definition-)
      "uint8 command
---
bool success
string message

")



(provide :hdas_msg/FunctionFrame "28ca10d14356fafac343096e46d08b18")


