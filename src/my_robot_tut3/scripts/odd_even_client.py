#!/usr/bin/env python3

import rospy
from my_robot_tut3.srv import OddEvenCheck, OddEvenCheckResponse

# simple node which takes user inputted value and returns
# whether it is odd or even

if __name__ == '__main__':
        rospy.init_node("odd_even_client_node")
        srv_proxy = rospy.ServiceProxy("odd_even_check", OddEvenCheck)
        user_input = input("\nEnter a whole number: ")
        resp_obj = srv_proxy(int(user_input))
        answer = resp_obj.answer
        print(answer)
