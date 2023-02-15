
(cl:in-package :asdf)

(defsystem "data_log_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DataLog" :depends-on ("_package_DataLog"))
    (:file "_package_DataLog" :depends-on ("_package"))
  ))