#!/usr/bin/env python3

import math
import rospy
import actionlib

from my_robot_tut3.msg import Navigate2DAction, Navigate2DFeedback, Navigate2DResult
from geometry_msgs.msg import Point

class Navigate2DClass:
    """Navigate2DClass summary.
    class sets robot coordinates and takes user inputted goal coordinate
    """
    def __init__(self):
        self.action_server = actionlib.SimpleActionServer("navigate_2D_action",
         Navigate2DAction, self.navigate_cb)

        self.robot_point_sub = rospy.Subscriber("robot/point", Point, self.update_robot_position)
        self.robot_current_point = None
        self.robot_goal_point = None
        self.distance_threshold = 0.35
        self.feedback_rate = rospy.Rate(1)

    def navigate_cb(self, goal):
        """Short summary.
        Args:
            goal (float): User inputted value determines the robots 'goal'.
        """
        navigate_start_time = rospy.get_time()
        self.robot_goal_point = [goal.point.x, goal.point.y, goal.point.z]

        while self.robot_current_point == None:
            print("Robot Point Not Detected")
            rospy.sleep(5)

        print("Robot Point Detected")

        distance_to_goal = math.dist(self.robot_current_point, self.robot_goal_point)

        while distance_to_goal > self.distance_threshold:
            self.action_server.publish_feedback(Navigate2DFeedback(distance_to_point = distance_to_goal))
            self.feedback_rate.sleep()
            distance_to_goal = math.dist(self.robot_current_point, self.robot_goal_point)

        navigate_end_time = rospy.get_time()
        elasped_time = navigate_end_time - navigate_start_time
        rospy.loginfo("Navigation Successful, Elapsed Time: " + str(elasped_time) + "secs")
        self.action_server.set_succeeded(Navigate2DResult(elasped_time))

    def update_robot_position(self, point):
        """Short summary.
        Args:
            point (float): Sets current point.
        """
        self.robot_current_point = [point.x, point.y, point.z]


if __name__ == '__main__':
    rospy.init_node("navigate_2D_action_server_node")
    server = Navigate2DClass()
    rospy.spin()
