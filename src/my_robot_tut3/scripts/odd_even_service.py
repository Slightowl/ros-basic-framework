#!/usr/bin/env python3

import rospy
from my_robot_tut3.srv import OddEvenCheck, OddEvenCheckResponse

def check_number(req):
    """check_number summary.
    Args:
        req (int): Takes request from odd_even_client_node.
    Returns:
        type: Peforms calculation and returns string as "odd" or "even".
    """
    if (req.number % 2) == 0:
        check = "even"
    else:
        check = "odd"
    return OddEvenCheckResponse(check)

if __name__ == '__main__':
    try:
        rospy.init_node("odd_even_service_node")
        rospy.Service("odd_even_check", OddEvenCheck, check_number)
        rospy.spin()

    except rospy.ROSInterruptException:
        pass
