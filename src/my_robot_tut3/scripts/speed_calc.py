#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float32

# wheel_radius = 12.5 /100 # wheel radius of our bot in metre
wheel_radius = rospy.get_param("/wheel_radius")


def calc_speed(rpm, publisher):
    """calc_speed summary.
    Args:
        rpm (float): Takes in rpm or revolutions per minute.
        publisher (type): .
    Returns:
        float: Calculation of speed to publisher
    """
    wheel_radius = rospy.get_param("/wheel_radius")
    speed = rpm.data * 2 * 3.1459 / 60 * wheel_radius # speed in m/s
    publisher.publish(speed)

def create_subscriber(pub):
    """create_subscriber summary.
    Args:
        pub (object): sets Subscriber parameters.
    """
    rospy.Subscriber("rpm", Float32, calc_speed, (pub))

def speed_pub():
    """speed_pub summary.
    Returns:
        object: Publisher object containing label, value and size.
    """
    pub = rospy.Publisher("rspeed", Float32, queue_size=10)
    return pub

if __name__ == '__main__':
    rospy.init_node("speed_calc_sub_node")
    pub = speed_pub()
    # pub = rospy.Publisher("speed", Float32 ,queue_size=10) # different way of doing def speed_pub
    create_subscriber(pub)
    rospy.spin()
