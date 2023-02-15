
(cl:in-package :asdf)

(defsystem "vision_utils-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Feature" :depends-on ("_package_Feature"))
    (:file "_package_Feature" :depends-on ("_package"))
    (:file "Features" :depends-on ("_package_Features"))
    (:file "_package_Features" :depends-on ("_package"))
    (:file "FieldBoundary" :depends-on ("_package_FieldBoundary"))
    (:file "_package_FieldBoundary" :depends-on ("_package"))
    (:file "LUT" :depends-on ("_package_LUT"))
    (:file "_package_LUT" :depends-on ("_package"))
    (:file "LineTip" :depends-on ("_package_LineTip"))
    (:file "_package_LineTip" :depends-on ("_package"))
    (:file "MonitorUtils" :depends-on ("_package_MonitorUtils"))
    (:file "_package_MonitorUtils" :depends-on ("_package"))
    (:file "Particles" :depends-on ("_package_Particles"))
    (:file "_package_Particles" :depends-on ("_package"))
  ))