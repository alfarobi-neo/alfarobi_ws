
(cl:in-package :asdf)

(defsystem "filter_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "filter" :depends-on ("_package_filter"))
    (:file "_package_filter" :depends-on ("_package"))
  ))