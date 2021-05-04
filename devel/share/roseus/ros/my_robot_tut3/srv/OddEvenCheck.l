;; Auto-generated. Do not edit!


(when (boundp 'my_robot_tut3::OddEvenCheck)
  (if (not (find-package "MY_ROBOT_TUT3"))
    (make-package "MY_ROBOT_TUT3"))
  (shadow 'OddEvenCheck (find-package "MY_ROBOT_TUT3")))
(unless (find-package "MY_ROBOT_TUT3::ODDEVENCHECK")
  (make-package "MY_ROBOT_TUT3::ODDEVENCHECK"))
(unless (find-package "MY_ROBOT_TUT3::ODDEVENCHECKREQUEST")
  (make-package "MY_ROBOT_TUT3::ODDEVENCHECKREQUEST"))
(unless (find-package "MY_ROBOT_TUT3::ODDEVENCHECKRESPONSE")
  (make-package "MY_ROBOT_TUT3::ODDEVENCHECKRESPONSE"))

(in-package "ROS")





(defclass my_robot_tut3::OddEvenCheckRequest
  :super ros::object
  :slots (_number ))

(defmethod my_robot_tut3::OddEvenCheckRequest
  (:init
   (&key
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_robot_tut3::OddEvenCheckResponse
  :super ros::object
  :slots (_answer ))

(defmethod my_robot_tut3::OddEvenCheckResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_robot_tut3::OddEvenCheck
  :super ros::object
  :slots ())

(setf (get my_robot_tut3::OddEvenCheck :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get my_robot_tut3::OddEvenCheck :datatype-) "my_robot_tut3/OddEvenCheck")
(setf (get my_robot_tut3::OddEvenCheck :request) my_robot_tut3::OddEvenCheckRequest)
(setf (get my_robot_tut3::OddEvenCheck :response) my_robot_tut3::OddEvenCheckResponse)

(defmethod my_robot_tut3::OddEvenCheckRequest
  (:response () (instance my_robot_tut3::OddEvenCheckResponse :init)))

(setf (get my_robot_tut3::OddEvenCheckRequest :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get my_robot_tut3::OddEvenCheckRequest :datatype-) "my_robot_tut3/OddEvenCheckRequest")
(setf (get my_robot_tut3::OddEvenCheckRequest :definition-)
      "int32 number
---
string answer

")

(setf (get my_robot_tut3::OddEvenCheckResponse :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get my_robot_tut3::OddEvenCheckResponse :datatype-) "my_robot_tut3/OddEvenCheckResponse")
(setf (get my_robot_tut3::OddEvenCheckResponse :definition-)
      "int32 number
---
string answer

")



(provide :my_robot_tut3/OddEvenCheck "4ff0b0ab1ed04611e3a2b4090af9ee4f")


