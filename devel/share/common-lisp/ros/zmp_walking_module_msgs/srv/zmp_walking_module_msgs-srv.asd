
(cl:in-package :asdf)

(defsystem "zmp_walking_module_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :zmp_walking_module_msgs-msg
)
  :components ((:file "_package")
    (:file "GetZMPParam" :depends-on ("_package_GetZMPParam"))
    (:file "_package_GetZMPParam" :depends-on ("_package"))
    (:file "SetZMPParam" :depends-on ("_package_SetZMPParam"))
    (:file "_package_SetZMPParam" :depends-on ("_package"))
  ))