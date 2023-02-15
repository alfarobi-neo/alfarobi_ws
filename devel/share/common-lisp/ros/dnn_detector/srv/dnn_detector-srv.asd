
(cl:in-package :asdf)

(defsystem "dnn_detector-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dnn_detector-msg
)
  :components ((:file "_package")
    (:file "GetParameters" :depends-on ("_package_GetParameters"))
    (:file "_package_GetParameters" :depends-on ("_package"))
    (:file "SetParameters" :depends-on ("_package_SetParameters"))
    (:file "_package_SetParameters" :depends-on ("_package"))
  ))