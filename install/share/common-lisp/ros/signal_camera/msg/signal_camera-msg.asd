
(cl:in-package :asdf)

(defsystem "signal_camera-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageMsg" :depends-on ("_package_ImageMsg"))
    (:file "_package_ImageMsg" :depends-on ("_package"))
  ))