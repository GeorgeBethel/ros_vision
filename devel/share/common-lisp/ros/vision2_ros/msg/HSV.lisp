; Auto-generated. Do not edit!


(cl:in-package vision2_ros-msg)


;//! \htmlinclude HSV.msg.html

(cl:defclass <HSV> (roslisp-msg-protocol:ros-message)
  ((hsv_values
    :reader hsv_values
    :initarg :hsv_values
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass HSV (<HSV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HSV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HSV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision2_ros-msg:<HSV> is deprecated: use vision2_ros-msg:HSV instead.")))

(cl:ensure-generic-function 'hsv_values-val :lambda-list '(m))
(cl:defmethod hsv_values-val ((m <HSV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision2_ros-msg:hsv_values-val is deprecated.  Use vision2_ros-msg:hsv_values instead.")
  (hsv_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HSV>) ostream)
  "Serializes a message object of type '<HSV>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'hsv_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HSV>) istream)
  "Deserializes a message object of type '<HSV>"
  (cl:setf (cl:slot-value msg 'hsv_values) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'hsv_values)))
    (cl:dotimes (i 6)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HSV>)))
  "Returns string type for a message object of type '<HSV>"
  "vision2_ros/HSV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HSV)))
  "Returns string type for a message object of type 'HSV"
  "vision2_ros/HSV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HSV>)))
  "Returns md5sum for a message object of type '<HSV>"
  "1fbdf4b8124056a7224543e418dc9dfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HSV)))
  "Returns md5sum for a message object of type 'HSV"
  "1fbdf4b8124056a7224543e418dc9dfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HSV>)))
  "Returns full string definition for message of type '<HSV>"
  (cl:format cl:nil "# variables to hold HSV settings~%~%int64[6] hsv_values ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HSV)))
  "Returns full string definition for message of type 'HSV"
  (cl:format cl:nil "# variables to hold HSV settings~%~%int64[6] hsv_values ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HSV>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'hsv_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HSV>))
  "Converts a ROS message object to a list"
  (cl:list 'HSV
    (cl:cons ':hsv_values (hsv_values msg))
))
