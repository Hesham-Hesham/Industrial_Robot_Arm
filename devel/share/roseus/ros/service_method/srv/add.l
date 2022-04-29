;; Auto-generated. Do not edit!


(when (boundp 'service_method::add)
  (if (not (find-package "SERVICE_METHOD"))
    (make-package "SERVICE_METHOD"))
  (shadow 'add (find-package "SERVICE_METHOD")))
(unless (find-package "SERVICE_METHOD::ADD")
  (make-package "SERVICE_METHOD::ADD"))
(unless (find-package "SERVICE_METHOD::ADDREQUEST")
  (make-package "SERVICE_METHOD::ADDREQUEST"))
(unless (find-package "SERVICE_METHOD::ADDRESPONSE")
  (make-package "SERVICE_METHOD::ADDRESPONSE"))

(in-package "ROS")





(defclass service_method::addRequest
  :super ros::object
  :slots (_x _y ))

(defmethod service_method::addRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass service_method::addResponse
  :super ros::object
  :slots (_sum ))

(defmethod service_method::addResponse
  (:init
   (&key
    ((:sum __sum) 0.0)
    )
   (send-super :init)
   (setq _sum (float __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; float32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _sum
       (sys::poke _sum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _sum
     (setq _sum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass service_method::add
  :super ros::object
  :slots ())

(setf (get service_method::add :md5sum-) "5a345c58fdab03aeff049471a3312360")
(setf (get service_method::add :datatype-) "service_method/add")
(setf (get service_method::add :request) service_method::addRequest)
(setf (get service_method::add :response) service_method::addResponse)

(defmethod service_method::addRequest
  (:response () (instance service_method::addResponse :init)))

(setf (get service_method::addRequest :md5sum-) "5a345c58fdab03aeff049471a3312360")
(setf (get service_method::addRequest :datatype-) "service_method/addRequest")
(setf (get service_method::addRequest :definition-)
      "float32 x
float32 y
---
float32 sum

")

(setf (get service_method::addResponse :md5sum-) "5a345c58fdab03aeff049471a3312360")
(setf (get service_method::addResponse :datatype-) "service_method/addResponse")
(setf (get service_method::addResponse :definition-)
      "float32 x
float32 y
---
float32 sum

")



(provide :service_method/add "5a345c58fdab03aeff049471a3312360")


