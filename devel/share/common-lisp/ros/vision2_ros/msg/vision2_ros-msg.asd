
(cl:in-package :asdf)

(defsystem "vision2_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HSV" :depends-on ("_package_HSV"))
    (:file "_package_HSV" :depends-on ("_package"))
    (:file "detection" :depends-on ("_package_detection"))
    (:file "_package_detection" :depends-on ("_package"))
  ))