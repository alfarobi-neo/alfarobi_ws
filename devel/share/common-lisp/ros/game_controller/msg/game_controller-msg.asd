
(cl:in-package :asdf)

(defsystem "game_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GameState" :depends-on ("_package_GameState"))
    (:file "_package_GameState" :depends-on ("_package"))
  ))