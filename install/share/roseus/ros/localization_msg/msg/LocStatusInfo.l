;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocStatusInfo)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocStatusInfo (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCSTATUSINFO")
  (make-package "LOCALIZATION_MSG::LOCSTATUSINFO"))

(in-package "ROS")
;;//! \htmlinclude LocStatusInfo.msg.html


(defclass localization_msg::LocStatusInfo
  :super ros::object
  :slots (_quality _common _extended _type ))

(defmethod localization_msg::LocStatusInfo
  (:init
   (&key
    ((:quality __quality) 0)
    ((:common __common) 0)
    ((:extended __extended) 0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _quality (round __quality))
   (setq _common (round __common))
   (setq _extended (round __extended))
   (setq _type (round __type))
   self)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:common
   (&optional __common)
   (if __common (setq _common __common)) _common)
  (:extended
   (&optional __extended)
   (if __extended (setq _extended __extended)) _extended)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _quality
    1
    ;; uint64 _common
    8
    ;; uint64 _extended
    8
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _quality
       (write-byte _quality s)
     ;; uint64 _common
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _common (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _common) (= (length (_common . bv)) 2)) ;; bignum
              (write-long (ash (elt (_common . bv) 0) 0) s)
              (write-long (ash (elt (_common . bv) 1) -1) s))
             ((and (class _common) (= (length (_common . bv)) 1)) ;; big1
              (write-long (elt (_common . bv) 0) s)
              (write-long (if (>= _common 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _common s)(write-long (if (>= _common 0) 0 #xffffffff) s)))
     ;; uint64 _extended
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _extended (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _extended) (= (length (_extended . bv)) 2)) ;; bignum
              (write-long (ash (elt (_extended . bv) 0) 0) s)
              (write-long (ash (elt (_extended . bv) 1) -1) s))
             ((and (class _extended) (= (length (_extended . bv)) 1)) ;; big1
              (write-long (elt (_extended . bv) 0) s)
              (write-long (if (>= _extended 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _extended s)(write-long (if (>= _extended 0) 0 #xffffffff) s)))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _quality
     (setq _quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _common
     
#+(or :alpha :irix6 :x86_64)
      (setf _common (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _common (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _extended
     
#+(or :alpha :irix6 :x86_64)
      (setf _extended (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _extended (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get localization_msg::LocStatusInfo :md5sum-) "8a36372e498de5e2ada620a2c8844ac6")
(setf (get localization_msg::LocStatusInfo :datatype-) "localization_msg/LocStatusInfo")
(setf (get localization_msg::LocStatusInfo :definition-)
      "uint8 quality
uint64 common
uint64 extended
uint8 type
")



(provide :localization_msg/LocStatusInfo "8a36372e498de5e2ada620a2c8844ac6")


