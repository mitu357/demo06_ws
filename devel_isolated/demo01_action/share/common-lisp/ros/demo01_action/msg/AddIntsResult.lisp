; Auto-generated. Do not edit!


(cl:in-package demo01_action-msg)


;//! \htmlinclude AddIntsResult.msg.html

(cl:defclass <AddIntsResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass AddIntsResult (<AddIntsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddIntsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddIntsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo01_action-msg:<AddIntsResult> is deprecated: use demo01_action-msg:AddIntsResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AddIntsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo01_action-msg:result-val is deprecated.  Use demo01_action-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddIntsResult>) ostream)
  "Serializes a message object of type '<AddIntsResult>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddIntsResult>) istream)
  "Deserializes a message object of type '<AddIntsResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddIntsResult>)))
  "Returns string type for a message object of type '<AddIntsResult>"
  "demo01_action/AddIntsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddIntsResult)))
  "Returns string type for a message object of type 'AddIntsResult"
  "demo01_action/AddIntsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddIntsResult>)))
  "Returns md5sum for a message object of type '<AddIntsResult>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddIntsResult)))
  "Returns md5sum for a message object of type 'AddIntsResult"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddIntsResult>)))
  "Returns full string definition for message of type '<AddIntsResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#2.最终响应变量~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddIntsResult)))
  "Returns full string definition for message of type 'AddIntsResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#2.最终响应变量~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddIntsResult>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddIntsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'AddIntsResult
    (cl:cons ':result (result msg))
))
