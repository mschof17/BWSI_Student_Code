;; Auto-generated. Do not edit!


(when (boundp 'tello::State)
  (if (not (find-package "TELLO"))
    (make-package "TELLO"))
  (shadow 'State (find-package "TELLO")))
(unless (find-package "TELLO::STATE")
  (make-package "TELLO::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tello::State
  :super ros::object
  :slots (_speed _acc _low_temp _temp _high_temp _height _dist_tof _barometer _flight_time _battery _is_flying ))

(defmethod tello::State
  (:init
   (&key
    ((:speed __speed) (instance geometry_msgs::Twist :init))
    ((:acc __acc) (instance geometry_msgs::Vector3 :init))
    ((:low_temp __low_temp) 0)
    ((:temp __temp) 0.0)
    ((:high_temp __high_temp) 0)
    ((:height __height) 0)
    ((:dist_tof __dist_tof) 0)
    ((:barometer __barometer) 0.0)
    ((:flight_time __flight_time) 0)
    ((:battery __battery) 0)
    ((:is_flying __is_flying) nil)
    )
   (send-super :init)
   (setq _speed __speed)
   (setq _acc __acc)
   (setq _low_temp (round __low_temp))
   (setq _temp (float __temp))
   (setq _high_temp (round __high_temp))
   (setq _height (round __height))
   (setq _dist_tof (round __dist_tof))
   (setq _barometer (float __barometer))
   (setq _flight_time (round __flight_time))
   (setq _battery (round __battery))
   (setq _is_flying __is_flying)
   self)
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:acc
   (&rest __acc)
   (if (keywordp (car __acc))
       (send* _acc __acc)
     (progn
       (if __acc (setq _acc (car __acc)))
       _acc)))
  (:low_temp
   (&optional __low_temp)
   (if __low_temp (setq _low_temp __low_temp)) _low_temp)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:high_temp
   (&optional __high_temp)
   (if __high_temp (setq _high_temp __high_temp)) _high_temp)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:dist_tof
   (&optional __dist_tof)
   (if __dist_tof (setq _dist_tof __dist_tof)) _dist_tof)
  (:barometer
   (&optional __barometer)
   (if __barometer (setq _barometer __barometer)) _barometer)
  (:flight_time
   (&optional __flight_time)
   (if __flight_time (setq _flight_time __flight_time)) _flight_time)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:is_flying
   (&optional (__is_flying :null))
   (if (not (eq __is_flying :null)) (setq _is_flying __is_flying)) _is_flying)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _speed
    (send _speed :serialization-length)
    ;; geometry_msgs/Vector3 _acc
    (send _acc :serialization-length)
    ;; int32 _low_temp
    4
    ;; float32 _temp
    4
    ;; int32 _high_temp
    4
    ;; int32 _height
    4
    ;; int32 _dist_tof
    4
    ;; float32 _barometer
    4
    ;; int32 _flight_time
    4
    ;; int32 _battery
    4
    ;; bool _is_flying
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _speed
       (send _speed :serialize s)
     ;; geometry_msgs/Vector3 _acc
       (send _acc :serialize s)
     ;; int32 _low_temp
       (write-long _low_temp s)
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _high_temp
       (write-long _high_temp s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _dist_tof
       (write-long _dist_tof s)
     ;; float32 _barometer
       (sys::poke _barometer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _flight_time
       (write-long _flight_time s)
     ;; int32 _battery
       (write-long _battery s)
     ;; bool _is_flying
       (if _is_flying (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; geometry_msgs/Vector3 _acc
     (send _acc :deserialize buf ptr-) (incf ptr- (send _acc :serialization-length))
   ;; int32 _low_temp
     (setq _low_temp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _high_temp
     (setq _high_temp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dist_tof
     (setq _dist_tof (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _barometer
     (setq _barometer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _flight_time
     (setq _flight_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _battery
     (setq _battery (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_flying
     (setq _is_flying (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tello::State :md5sum-) "6630f0e1fde411489f81f1f26bbffa96")
(setf (get tello::State :datatype-) "tello/State")
(setf (get tello::State :definition-)
      "geometry_msgs/Twist speed
# linear: x, y, z
# angular: x (roll), y (pitch), z (yaw)

geometry_msgs/Vector3 acc
# x, y, z acc

int32 low_temp # deg C
float32 temp
int32 high_temp

int32 height # cm
int32 dist_tof
float32 barometer

int32 flight_time   # time the motors have been active, seconds
int32 battery # 0-100

bool is_flying
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :tello/State "6630f0e1fde411489f81f1f26bbffa96")


