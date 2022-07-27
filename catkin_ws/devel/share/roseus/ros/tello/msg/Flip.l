;; Auto-generated. Do not edit!


(when (boundp 'tello::Flip)
  (if (not (find-package "TELLO"))
    (make-package "TELLO"))
  (shadow 'Flip (find-package "TELLO")))
(unless (find-package "TELLO::FLIP")
  (make-package "TELLO::FLIP"))

(in-package "ROS")
;;//! \htmlinclude Flip.msg.html


(intern "*FLIP_FORWARD*" (find-package "TELLO::FLIP"))
(shadow '*FLIP_FORWARD* (find-package "TELLO::FLIP"))
(defconstant tello::Flip::*FLIP_FORWARD* 0)
(intern "*FLIP_LEFT*" (find-package "TELLO::FLIP"))
(shadow '*FLIP_LEFT* (find-package "TELLO::FLIP"))
(defconstant tello::Flip::*FLIP_LEFT* 1)
(intern "*FLIP_BACK*" (find-package "TELLO::FLIP"))
(shadow '*FLIP_BACK* (find-package "TELLO::FLIP"))
(defconstant tello::Flip::*FLIP_BACK* 2)
(intern "*FLIP_RIGHT*" (find-package "TELLO::FLIP"))
(shadow '*FLIP_RIGHT* (find-package "TELLO::FLIP"))
(defconstant tello::Flip::*FLIP_RIGHT* 3)

(defun tello::Flip-to-symbol (const)
  (cond
        ((= const 0) 'tello::Flip::*flip_forward*)
        ((= const 1) 'tello::Flip::*flip_left*)
        ((= const 2) 'tello::Flip::*flip_back*)
        ((= const 3) 'tello::Flip::*flip_right*)
        (t nil)))

(defclass tello::Flip
  :super ros::object
  :slots (_flip_command ))

(defmethod tello::Flip
  (:init
   (&key
    ((:flip_command __flip_command) 0)
    )
   (send-super :init)
   (setq _flip_command (round __flip_command))
   self)
  (:flip_command
   (&optional __flip_command)
   (if __flip_command (setq _flip_command __flip_command)) _flip_command)
  (:serialization-length
   ()
   (+
    ;; uint8 _flip_command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _flip_command
       (write-byte _flip_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _flip_command
     (setq _flip_command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tello::Flip :md5sum-) "c0ea7d798764a957a0739f2eac92306d")
(setf (get tello::Flip :datatype-) "tello/Flip")
(setf (get tello::Flip :definition-)
      "# Reference: https://github.com/clydemcqueen/flock/blob/master/flock_msgs/msg/Flip.msg
uint8 flip_forward=0
uint8 flip_left=1
uint8 flip_back=2
uint8 flip_right=3
uint8 flip_command
")



(provide :tello/Flip "c0ea7d798764a957a0739f2eac92306d")


