;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::feedback_status_detail)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'feedback_status_detail (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::FEEDBACK_STATUS_DETAIL")
  (make-package "HDAS_MSG::FEEDBACK_STATUS_DETAIL"))

(in-package "ROS")
;;//! \htmlinclude feedback_status_detail.msg.html


(defclass hdas_msg::feedback_status_detail
  :super ros::object
  :slots (_name _error_code _error_description ))

(defmethod hdas_msg::feedback_status_detail
  (:init
   (&key
    ((:name __name) "")
    ((:error_code __error_code) 0)
    ((:error_description __error_description) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _error_code (round __error_code))
   (setq _error_description __error_description)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:error_description
   (&optional __error_description)
   (if __error_description (setq _error_description __error_description)) _error_description)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint32 _error_code
    4
    ;; string[] _error_description
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _error_description)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint32 _error_code
       (write-long _error_code s)
     ;; string[] _error_description
     (write-long (length _error_description) s)
     (dolist (elem _error_description)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _error_description
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_description (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _error_description i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get hdas_msg::feedback_status_detail :md5sum-) "e5280425d3fdc62c9f07e542e68626f8")
(setf (get hdas_msg::feedback_status_detail :datatype-) "hdas_msg/feedback_status_detail")
(setf (get hdas_msg::feedback_status_detail :definition-)
      "string name
uint32 error_code
string[] error_description
")



(provide :hdas_msg/feedback_status_detail "e5280425d3fdc62c9f07e542e68626f8")


