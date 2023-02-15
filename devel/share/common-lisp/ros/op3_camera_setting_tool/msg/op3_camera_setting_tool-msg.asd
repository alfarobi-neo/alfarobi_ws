
(cl:in-package :asdf)

(defsystem "op3_camera_setting_tool-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "V4lParameter" :depends-on ("_package_V4lParameter"))
    (:file "_package_V4lParameter" :depends-on ("_package"))
    (:file "V4lParameters" :depends-on ("_package_V4lParameters"))
    (:file "_package_V4lParameters" :depends-on ("_package"))
  ))