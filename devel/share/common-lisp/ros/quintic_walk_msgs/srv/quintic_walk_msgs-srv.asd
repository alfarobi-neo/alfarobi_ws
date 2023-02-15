
(cl:in-package :asdf)

(defsystem "quintic_walk_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :quintic_walk_msgs-msg
)
  :components ((:file "_package")
    (:file "GetWalkingParam" :depends-on ("_package_GetWalkingParam"))
    (:file "_package_GetWalkingParam" :depends-on ("_package"))
    (:file "SetWalkingParam" :depends-on ("_package_SetWalkingParam"))
    (:file "_package_SetWalkingParam" :depends-on ("_package"))
  ))