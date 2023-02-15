
(cl:in-package :asdf)

(defsystem "mcl_localization-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :mcl_localization-msg
)
  :components ((:file "_package")
    (:file "GetLocParam" :depends-on ("_package_GetLocParam"))
    (:file "_package_GetLocParam" :depends-on ("_package"))
    (:file "SetLocParam" :depends-on ("_package_SetLocParam"))
    (:file "_package_SetLocParam" :depends-on ("_package"))
  ))