
(cl:in-package :asdf)

(defsystem "team_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "team_msgs" :depends-on ("_package_team_msgs"))
    (:file "_package_team_msgs" :depends-on ("_package"))
  ))