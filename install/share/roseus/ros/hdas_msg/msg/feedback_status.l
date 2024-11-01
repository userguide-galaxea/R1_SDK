;; Auto-generated. Do not edit!


(when (boundp 'hdas_msg::feedback_status)
  (if (not (find-package "HDAS_MSG"))
    (make-package "HDAS_MSG"))
  (shadow 'feedback_status (find-package "HDAS_MSG")))
(unless (find-package "HDAS_MSG::FEEDBACK_STATUS")
  (make-package "HDAS_MSG::FEEDBACK_STATUS"))

(in-package "ROS")
;;//! \htmlinclude feedback_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdas_msg::feedback_status
  :super ros::object
  :slots (_header _name_id _errors ))

(defmethod hdas_msg::feedback_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name_id __name_id) "")
    ((:errors __errors) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _name_id (string __name_id))
   (setq _errors __errors)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name_id
   (&optional __name_id)
   (if __name_id (setq _name_id __name_id)) _name_id)
  (:errors
   (&rest __errors)
   (if (keywordp (car __errors))
       (send* _errors __errors)
     (progn
       (if __errors (setq _errors (car __errors)))
       _errors)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name_id
    4 (length _name_id)
    ;; hdas_msg/feedback_status_detail[] _errors
    (apply #'+ (send-all _errors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name_id
       (write-long (length _name_id) s) (princ _name_id s)
     ;; hdas_msg/feedback_status_detail[] _errors
     (write-long (length _errors) s)
     (dolist (elem _errors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; hdas_msg/feedback_status_detail[] _errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _errors (let (r) (dotimes (i n) (push (instance hdas_msg::feedback_status_detail :init) r)) r))
     (dolist (elem- _errors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hdas_msg::feedback_status :md5sum-) "7a6984c65a4a87fe80ef0491240438e9")
(setf (get hdas_msg::feedback_status :datatype-) "hdas_msg/feedback_status")
(setf (get hdas_msg::feedback_status :definition-)
      "std_msgs/Header header
string name_id
feedback_status_detail[] errors

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: hdas_msg/feedback_status_detail
string name
uint32 error_code
string[] error_description
")



(provide :hdas_msg/feedback_status "7a6984c65a4a87fe80ef0491240438e9")


