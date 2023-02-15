
(cl:in-package :asdf)

(defsystem "densis_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "densis" :depends-on ("_package_densis"))
    (:file "_package_densis" :depends-on ("_package"))
  ))