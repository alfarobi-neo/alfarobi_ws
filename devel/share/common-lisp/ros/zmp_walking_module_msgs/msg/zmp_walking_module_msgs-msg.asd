
(cl:in-package :asdf)

(defsystem "zmp_walking_module_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ZMPWalkingParam" :depends-on ("_package_ZMPWalkingParam"))
    (:file "_package_ZMPWalkingParam" :depends-on ("_package"))
  ))