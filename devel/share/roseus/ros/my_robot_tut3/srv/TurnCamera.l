;; Auto-generated. Do not edit!


(when (boundp 'my_robot_tut3::TurnCamera)
  (if (not (find-package "MY_ROBOT_TUT3"))
    (make-package "MY_ROBOT_TUT3"))
  (shadow 'TurnCamera (find-package "MY_ROBOT_TUT3")))
(unless (find-package "MY_ROBOT_TUT3::TURNCAMERA")
  (make-package "MY_ROBOT_TUT3::TURNCAMERA"))
(unless (find-package "MY_ROBOT_TUT3::TURNCAMERAREQUEST")
  (make-package "MY_ROBOT_TUT3::TURNCAMERAREQUEST"))
(unless (find-package "MY_ROBOT_TUT3::TURNCAMERARESPONSE")
  (make-package "MY_ROBOT_TUT3::TURNCAMERARESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass my_robot_tut3::TurnCameraRequest
  :super ros::object
  :slots (_turn_degrees ))

(defmethod my_robot_tut3::TurnCameraRequest
  (:init
   (&key
    ((:turn_degrees __turn_degrees) 0.0)
    )
   (send-super :init)
   (setq _turn_degrees (float __turn_degrees))
   self)
  (:turn_degrees
   (&optional __turn_degrees)
   (if __turn_degrees (setq _turn_degrees __turn_degrees)) _turn_degrees)
  (:serialization-length
   ()
   (+
    ;; float32 _turn_degrees
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _turn_degrees
       (sys::poke _turn_degrees (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _turn_degrees
     (setq _turn_degrees (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_robot_tut3::TurnCameraResponse
  :super ros::object
  :slots (_image ))

(defmethod my_robot_tut3::TurnCameraResponse
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass my_robot_tut3::TurnCamera
  :super ros::object
  :slots ())

(setf (get my_robot_tut3::TurnCamera :md5sum-) "d2bd6d55eaa6b367037dff843fa7a83c")
(setf (get my_robot_tut3::TurnCamera :datatype-) "my_robot_tut3/TurnCamera")
(setf (get my_robot_tut3::TurnCamera :request) my_robot_tut3::TurnCameraRequest)
(setf (get my_robot_tut3::TurnCamera :response) my_robot_tut3::TurnCameraResponse)

(defmethod my_robot_tut3::TurnCameraRequest
  (:response () (instance my_robot_tut3::TurnCameraResponse :init)))

(setf (get my_robot_tut3::TurnCameraRequest :md5sum-) "d2bd6d55eaa6b367037dff843fa7a83c")
(setf (get my_robot_tut3::TurnCameraRequest :datatype-) "my_robot_tut3/TurnCameraRequest")
(setf (get my_robot_tut3::TurnCameraRequest :definition-)
      "float32 turn_degrees
---
sensor_msgs/Image image


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get my_robot_tut3::TurnCameraResponse :md5sum-) "d2bd6d55eaa6b367037dff843fa7a83c")
(setf (get my_robot_tut3::TurnCameraResponse :datatype-) "my_robot_tut3/TurnCameraResponse")
(setf (get my_robot_tut3::TurnCameraResponse :definition-)
      "float32 turn_degrees
---
sensor_msgs/Image image


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :my_robot_tut3/TurnCamera "d2bd6d55eaa6b367037dff843fa7a83c")


