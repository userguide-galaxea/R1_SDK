;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocLocalizationMeta)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocLocalizationMeta (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCLOCALIZATIONMETA")
  (make-package "LOCALIZATION_MSG::LOCLOCALIZATIONMETA"))

(in-package "ROS")
;;//! \htmlinclude LocLocalizationMeta.msg.html


(defclass localization_msg::LocLocalizationMeta
  :super ros::object
  :slots (_timestamp_us _seq ))

(defmethod localization_msg::LocLocalizationMeta
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:seq __seq) 0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _seq (round __seq))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; uint64 _seq
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _seq
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _seq (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _seq) (= (length (_seq . bv)) 2)) ;; bignum
              (write-long (ash (elt (_seq . bv) 0) 0) s)
              (write-long (ash (elt (_seq . bv) 1) -1) s))
             ((and (class _seq) (= (length (_seq . bv)) 1)) ;; big1
              (write-long (elt (_seq . bv) 0) s)
              (write-long (if (>= _seq 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _seq s)(write-long (if (>= _seq 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _seq
     
#+(or :alpha :irix6 :x86_64)
      (setf _seq (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _seq (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get localization_msg::LocLocalizationMeta :md5sum-) "b4492f5a97b4207064078261b17a4e9b")
(setf (get localization_msg::LocLocalizationMeta :datatype-) "localization_msg/LocLocalizationMeta")
(setf (get localization_msg::LocLocalizationMeta :definition-)
      "uint64 timestamp_us
uint64 seq
")



(provide :localization_msg/LocLocalizationMeta "b4492f5a97b4207064078261b17a4e9b")


