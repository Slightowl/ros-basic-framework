#!/usr/bin/env python3

import rospy
from my_robot_tut3.srv import TurnCamera, TurnCameraResponse
import numpy as np
import os
import cv2
from cv_bridge import CvBridge

def configure_request(angle):
    """configure_request summary.
    Args:
        angle (float)
    """
    rospy.wait_for_service("turn_camera")
    try:
        Service_proxy = rospy.ServiceProxy("turn_camera", TurnCamera)
        resp_msg = Service_proxy(angle)

        image_msg = resp_msg.image

        image = CvBridge().imgmsg_to_cv2(image_msg, desired_encoding="passthrough")

        # load in haar classifier for face detection
        # may need to replace CascadeClassifier path to your own absolute path
        # (found in scripts/res/)
        face_cascade = cv2.CascadeClassifier("/home/sam-robotics/Desktop/catkin_ws/src/my_robot_tut3/scripts/res/haarcascade_frontalface_default.xml")
        faces = face_cascade.detectMultiScale(image,
                                              scaleFactor=1.05,
                                              minNeighbors=5)
        # if no faces detected, carry on with usual processes
        if len(faces) == 0:
            cv2.imshow("Turn Camera Image", image)
            cv2.waitKey(0)
            cv2.destroyAllWindows()

        # if face detected send warning that human is in work area
        else:
            for x, y, w, h in faces:
                image = cv2.rectangle(image, (x, y), (x + w, y + h), (255, 255, 255), 1)
                cv2.putText(image, 'Warning human detected in work area!', (x, y - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 1)
            # opens window to view webcam
            cv2.imshow("warning! human agent in work area", image)
            cv2.waitKey(0)
            cv2.destroyAllWindows()

    except rospy.ServiceException as e:
        print("Service Request Failed \n")
        print(e)

if __name__ == '__main__':
    try:
        rospy.init_node("turn_camera_client_node")
        user_input = input("\n Enter an angle in degrees to move the robot Camera: ")

        while user_input != "q":
            try:
                configure_request(float(user_input))
                user_input = input("\n Enter an angle in degrees to move the robot Camera: ")

            except:
                print("Error trying to process request")


    except rospy.ROSInterruptException:
        pass
