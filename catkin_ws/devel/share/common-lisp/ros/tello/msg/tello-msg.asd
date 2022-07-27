
(cl:in-package :asdf)

(defsystem "tello-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Flip" :depends-on ("_package_Flip"))
    (:file "_package_Flip" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))