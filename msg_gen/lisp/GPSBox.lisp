; Auto-generated. Do not edit!


(cl:in-package gps_box-msg)


;//! \htmlinclude GPSBox.msg.html

(cl:defclass <GPSBox> (roslisp-msg-protocol:ros-message)
  ((Top_Left_Latitude
    :reader Top_Left_Latitude
    :initarg :Top_Left_Latitude
    :type cl:float
    :initform 0.0)
   (Top_Left_Longitude
    :reader Top_Left_Longitude
    :initarg :Top_Left_Longitude
    :type cl:float
    :initform 0.0)
   (Bot_Right_Latitude
    :reader Bot_Right_Latitude
    :initarg :Bot_Right_Latitude
    :type cl:float
    :initform 0.0)
   (Bot_Right_Longitude
    :reader Bot_Right_Longitude
    :initarg :Bot_Right_Longitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass GPSBox (<GPSBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_box-msg:<GPSBox> is deprecated: use gps_box-msg:GPSBox instead.")))

(cl:ensure-generic-function 'Top_Left_Latitude-val :lambda-list '(m))
(cl:defmethod Top_Left_Latitude-val ((m <GPSBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_box-msg:Top_Left_Latitude-val is deprecated.  Use gps_box-msg:Top_Left_Latitude instead.")
  (Top_Left_Latitude m))

(cl:ensure-generic-function 'Top_Left_Longitude-val :lambda-list '(m))
(cl:defmethod Top_Left_Longitude-val ((m <GPSBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_box-msg:Top_Left_Longitude-val is deprecated.  Use gps_box-msg:Top_Left_Longitude instead.")
  (Top_Left_Longitude m))

(cl:ensure-generic-function 'Bot_Right_Latitude-val :lambda-list '(m))
(cl:defmethod Bot_Right_Latitude-val ((m <GPSBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_box-msg:Bot_Right_Latitude-val is deprecated.  Use gps_box-msg:Bot_Right_Latitude instead.")
  (Bot_Right_Latitude m))

(cl:ensure-generic-function 'Bot_Right_Longitude-val :lambda-list '(m))
(cl:defmethod Bot_Right_Longitude-val ((m <GPSBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_box-msg:Bot_Right_Longitude-val is deprecated.  Use gps_box-msg:Bot_Right_Longitude instead.")
  (Bot_Right_Longitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSBox>) ostream)
  "Serializes a message object of type '<GPSBox>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Top_Left_Latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Top_Left_Longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Bot_Right_Latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Bot_Right_Longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSBox>) istream)
  "Deserializes a message object of type '<GPSBox>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Top_Left_Latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Top_Left_Longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Bot_Right_Latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Bot_Right_Longitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSBox>)))
  "Returns string type for a message object of type '<GPSBox>"
  "gps_box/GPSBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSBox)))
  "Returns string type for a message object of type 'GPSBox"
  "gps_box/GPSBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSBox>)))
  "Returns md5sum for a message object of type '<GPSBox>"
  "08778a566d2fdc56b1b23a2a1894f708")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSBox)))
  "Returns md5sum for a message object of type 'GPSBox"
  "08778a566d2fdc56b1b23a2a1894f708")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSBox>)))
  "Returns full string definition for message of type '<GPSBox>"
  (cl:format cl:nil "float64 Top_Left_Latitude~%float64 Top_Left_Longitude~%~%float64 Bot_Right_Latitude~%float64 Bot_Right_Longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSBox)))
  "Returns full string definition for message of type 'GPSBox"
  (cl:format cl:nil "float64 Top_Left_Latitude~%float64 Top_Left_Longitude~%~%float64 Bot_Right_Latitude~%float64 Bot_Right_Longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSBox>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSBox>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSBox
    (cl:cons ':Top_Left_Latitude (Top_Left_Latitude msg))
    (cl:cons ':Top_Left_Longitude (Top_Left_Longitude msg))
    (cl:cons ':Bot_Right_Latitude (Bot_Right_Latitude msg))
    (cl:cons ':Bot_Right_Longitude (Bot_Right_Longitude msg))
))
