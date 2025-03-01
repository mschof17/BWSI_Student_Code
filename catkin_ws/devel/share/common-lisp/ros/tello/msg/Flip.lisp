; Auto-generated. Do not edit!


(cl:in-package tello-msg)


;//! \htmlinclude Flip.msg.html

(cl:defclass <Flip> (roslisp-msg-protocol:ros-message)
  ((flip_command
    :reader flip_command
    :initarg :flip_command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Flip (<Flip>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Flip>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Flip)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tello-msg:<Flip> is deprecated: use tello-msg:Flip instead.")))

(cl:ensure-generic-function 'flip_command-val :lambda-list '(m))
(cl:defmethod flip_command-val ((m <Flip>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello-msg:flip_command-val is deprecated.  Use tello-msg:flip_command instead.")
  (flip_command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Flip>)))
    "Constants for message type '<Flip>"
  '((:FLIP_FORWARD . 0)
    (:FLIP_LEFT . 1)
    (:FLIP_BACK . 2)
    (:FLIP_RIGHT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Flip)))
    "Constants for message type 'Flip"
  '((:FLIP_FORWARD . 0)
    (:FLIP_LEFT . 1)
    (:FLIP_BACK . 2)
    (:FLIP_RIGHT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Flip>) ostream)
  "Serializes a message object of type '<Flip>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flip_command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Flip>) istream)
  "Deserializes a message object of type '<Flip>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flip_command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Flip>)))
  "Returns string type for a message object of type '<Flip>"
  "tello/Flip")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flip)))
  "Returns string type for a message object of type 'Flip"
  "tello/Flip")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Flip>)))
  "Returns md5sum for a message object of type '<Flip>"
  "c0ea7d798764a957a0739f2eac92306d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Flip)))
  "Returns md5sum for a message object of type 'Flip"
  "c0ea7d798764a957a0739f2eac92306d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Flip>)))
  "Returns full string definition for message of type '<Flip>"
  (cl:format cl:nil "# Reference: https://github.com/clydemcqueen/flock/blob/master/flock_msgs/msg/Flip.msg~%uint8 flip_forward=0~%uint8 flip_left=1~%uint8 flip_back=2~%uint8 flip_right=3~%uint8 flip_command~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Flip)))
  "Returns full string definition for message of type 'Flip"
  (cl:format cl:nil "# Reference: https://github.com/clydemcqueen/flock/blob/master/flock_msgs/msg/Flip.msg~%uint8 flip_forward=0~%uint8 flip_left=1~%uint8 flip_back=2~%uint8 flip_right=3~%uint8 flip_command~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Flip>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Flip>))
  "Converts a ROS message object to a list"
  (cl:list 'Flip
    (cl:cons ':flip_command (flip_command msg))
))
