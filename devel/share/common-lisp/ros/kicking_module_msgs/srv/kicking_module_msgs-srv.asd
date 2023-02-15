
(cl:in-package :asdf)

(defsystem "kicking_module_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :kicking_module_msgs-msg
)
  :components ((:file "_package")
    (:file "GetKickingParam" :depends-on ("_package_GetKickingParam"))
    (:file "_package_GetKickingParam" :depends-on ("_package"))
    (:file "SetKickingParam" :depends-on ("_package_SetKickingParam"))
    (:file "_package_SetKickingParam" :depends-on ("_package"))
  ))