
(cl:in-package :asdf)

(defsystem "gps_box-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GPSBox" :depends-on ("_package_GPSBox"))
    (:file "_package_GPSBox" :depends-on ("_package"))
    (:file "GPSStatus" :depends-on ("_package_GPSStatus"))
    (:file "_package_GPSStatus" :depends-on ("_package"))
    (:file "GPSFix" :depends-on ("_package_GPSFix"))
    (:file "_package_GPSFix" :depends-on ("_package"))
  ))