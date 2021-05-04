; Auto-generated. Do not edit!


(cl:in-package my_robot_tut3-srv)


;//! \htmlinclude TurnCamera-request.msg.html

(cl:defclass <TurnCamera-request> (roslisp-msg-protocol:ros-message)
  ((turn_degrees
    :reader turn_degrees
    :initarg :turn_degrees
    :type cl:float
    :initform 0.0))
)

(cl:defclass TurnCamera-request (<TurnCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_tut3-srv:<TurnCamera-request> is deprecated: use my_robot_tut3-srv:TurnCamera-request instead.")))

(cl:ensure-generic-function 'turn_degrees-val :lambda-list '(m))
(cl:defmethod turn_degrees-val ((m <TurnCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_tut3-srv:turn_degrees-val is deprecated.  Use my_robot_tut3-srv:turn_degrees instead.")
  (turn_degrees m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnCamera-request>) ostream)
  "Serializes a message object of type '<TurnCamera-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'turn_degrees))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnCamera-request>) istream)
  "Deserializes a message object of type '<TurnCamera-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turn_degrees) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnCamera-request>)))
  "Returns string type for a service object of type '<TurnCamera-request>"
  "my_robot_tut3/TurnCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnCamera-request)))
  "Returns string type for a service object of type 'TurnCamera-request"
  "my_robot_tut3/TurnCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnCamera-request>)))
  "Returns md5sum for a message object of type '<TurnCamera-request>"
  "d2bd6d55eaa6b367037dff843fa7a83c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnCamera-request)))
  "Returns md5sum for a message object of type 'TurnCamera-request"
  "d2bd6d55eaa6b367037dff843fa7a83c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnCamera-request>)))
  "Returns full string definition for message of type '<TurnCamera-request>"
  (cl:format cl:nil "float32 turn_degrees~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnCamera-request)))
  "Returns full string definition for message of type 'TurnCamera-request"
  (cl:format cl:nil "float32 turn_degrees~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnCamera-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnCamera-request
    (cl:cons ':turn_degrees (turn_degrees msg))
))
;//! \htmlinclude TurnCamera-response.msg.html

(cl:defclass <TurnCamera-response> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass TurnCamera-response (<TurnCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_tut3-srv:<TurnCamera-response> is deprecated: use my_robot_tut3-srv:TurnCamera-response instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <TurnCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_tut3-srv:image-val is deprecated.  Use my_robot_tut3-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnCamera-response>) ostream)
  "Serializes a message object of type '<TurnCamera-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnCamera-response>) istream)
  "Deserializes a message object of type '<TurnCamera-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnCamera-response>)))
  "Returns string type for a service object of type '<TurnCamera-response>"
  "my_robot_tut3/TurnCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnCamera-response)))
  "Returns string type for a service object of type 'TurnCamera-response"
  "my_robot_tut3/TurnCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnCamera-response>)))
  "Returns md5sum for a message object of type '<TurnCamera-response>"
  "d2bd6d55eaa6b367037dff843fa7a83c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnCamera-response)))
  "Returns md5sum for a message object of type 'TurnCamera-response"
  "d2bd6d55eaa6b367037dff843fa7a83c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnCamera-response>)))
  "Returns full string definition for message of type '<TurnCamera-response>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnCamera-response)))
  "Returns full string definition for message of type 'TurnCamera-response"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnCamera-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnCamera-response
    (cl:cons ':image (image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TurnCamera)))
  'TurnCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TurnCamera)))
  'TurnCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnCamera)))
  "Returns string type for a service object of type '<TurnCamera>"
  "my_robot_tut3/TurnCamera")