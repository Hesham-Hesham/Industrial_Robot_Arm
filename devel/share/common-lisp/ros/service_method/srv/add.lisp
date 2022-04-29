; Auto-generated. Do not edit!


(cl:in-package service_method-srv)


;//! \htmlinclude add-request.msg.html

(cl:defclass <add-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass add-request (<add-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_method-srv:<add-request> is deprecated: use service_method-srv:add-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <add-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_method-srv:x-val is deprecated.  Use service_method-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <add-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_method-srv:y-val is deprecated.  Use service_method-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add-request>) ostream)
  "Serializes a message object of type '<add-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add-request>) istream)
  "Deserializes a message object of type '<add-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add-request>)))
  "Returns string type for a service object of type '<add-request>"
  "service_method/addRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add-request)))
  "Returns string type for a service object of type 'add-request"
  "service_method/addRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add-request>)))
  "Returns md5sum for a message object of type '<add-request>"
  "5a345c58fdab03aeff049471a3312360")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add-request)))
  "Returns md5sum for a message object of type 'add-request"
  "5a345c58fdab03aeff049471a3312360")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add-request>)))
  "Returns full string definition for message of type '<add-request>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add-request)))
  "Returns full string definition for message of type 'add-request"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add-request>))
  "Converts a ROS message object to a list"
  (cl:list 'add-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude add-response.msg.html

(cl:defclass <add-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:float
    :initform 0.0))
)

(cl:defclass add-response (<add-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_method-srv:<add-response> is deprecated: use service_method-srv:add-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <add-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_method-srv:sum-val is deprecated.  Use service_method-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add-response>) ostream)
  "Serializes a message object of type '<add-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add-response>) istream)
  "Deserializes a message object of type '<add-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sum) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add-response>)))
  "Returns string type for a service object of type '<add-response>"
  "service_method/addResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add-response)))
  "Returns string type for a service object of type 'add-response"
  "service_method/addResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add-response>)))
  "Returns md5sum for a message object of type '<add-response>"
  "5a345c58fdab03aeff049471a3312360")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add-response)))
  "Returns md5sum for a message object of type 'add-response"
  "5a345c58fdab03aeff049471a3312360")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add-response>)))
  "Returns full string definition for message of type '<add-response>"
  (cl:format cl:nil "float32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add-response)))
  "Returns full string definition for message of type 'add-response"
  (cl:format cl:nil "float32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add-response>))
  "Converts a ROS message object to a list"
  (cl:list 'add-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'add)))
  'add-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'add)))
  'add-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add)))
  "Returns string type for a service object of type '<add>"
  "service_method/add")