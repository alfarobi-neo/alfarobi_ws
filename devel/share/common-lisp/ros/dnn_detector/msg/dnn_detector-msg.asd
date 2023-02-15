
(cl:in-package :asdf)

(defsystem "dnn_detector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CircleStamped" :depends-on ("_package_CircleStamped"))
    (:file "_package_CircleStamped" :depends-on ("_package"))
    (:file "DnnDetectorParams" :depends-on ("_package_DnnDetectorParams"))
    (:file "_package_DnnDetectorParams" :depends-on ("_package"))
  ))