
(cl:in-package :asdf)

(defsystem "kicking_module_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "KickingParam" :depends-on ("_package_KickingParam"))
    (:file "_package_KickingParam" :depends-on ("_package"))
  ))