
(cl:in-package :asdf)

(defsystem "team_communication-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "robot_data" :depends-on ("_package_robot_data"))
    (:file "_package_robot_data" :depends-on ("_package"))
    (:file "team_comm" :depends-on ("_package_team_comm"))
    (:file "_package_team_comm" :depends-on ("_package"))
    (:file "team_data" :depends-on ("_package_team_data"))
    (:file "_package_team_data" :depends-on ("_package"))
  ))