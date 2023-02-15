
(cl:in-package :asdf)

(defsystem "mcl_localization-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "localization" :depends-on ("_package_localization"))
    (:file "_package_localization" :depends-on ("_package"))
    (:file "localization_param" :depends-on ("_package_localization_param"))
    (:file "_package_localization_param" :depends-on ("_package"))
  ))