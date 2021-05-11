#!/usr/bin/env python3

import rospy
from my_robot_tut3.srv import TurnCamera, TurnCameraResponse
import numpy as np
import os
import cv2
from cv_bridge import CvBridge

class TurnCameraClass:
    """TurnCameraClass summary.
    class reads in image file names and determines
    from available_angles which the closest_angle is
    to distance_threshold returns message of closest_angle
    """
    def __init__(self):
        self.available_angles = [-30, -15, 0, 15, 30]
        self.ros_service = rospy.Service("turn_camera", TurnCamera, self.send_image)

    def read_in_image_by_file_name(self, file_name):
        """Short summary.
        Args:
            file_name (string): .
        Returns:
            type: image.
        """
        dir_name = os.path.dirname(__file__)
        file_location = dir_name + "/Images/" + file_name
        image = cv2.imread(file_location)
        return image

    def get_image(self, angle):
        """Short summary.
        Args:
            angle (type): Description of parameter `angle`.
        Returns:
            type: string of closest_angle .
        """
        closest_angle = min(self.available_angles, key=lambda x:abs(x-angle))
        return self.read_in_image_by_file_name(str(closest_angle) + ".png")

    def send_image(self, req):
        """Short summary.
        Args:
            req (type): Description of parameter `req`.
        Returns:
            type: Description of returned object.
        """
        image = self.get_image(req.turn_degrees)
        image_msg = CvBridge().cv2_to_imgmsg(image)
        return TurnCameraResponse(image_msg)


if __name__ == '__main__':
    try:
        rospy.init_node("turn_camera_service_node")
        TurnCameraClass()
        print("Turn Camera Service is Running")
        rospy.spin()

    except rospy.ROSInterruptException:
        pass
