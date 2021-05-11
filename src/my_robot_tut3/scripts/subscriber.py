import rospy
from std_msgs.msg import String

def process_hello_world_msg(data):
    """rocess_hello_world_msg summary.
    Args:
        data (float): Takes in data to be transformed and printed in string.
    """
    print("message received: " + str(data))

def create_subscriber():
    """create_subscriber summary.
    initialise hello_world_sub_node Subscriber
    return message
    """
    rospy.init_node("hello_world_sub_node")
    rospy.Subscriber("hello_world", String, process_hello_world_msg)


if __name__ == '__main__':
    create_subscriber()
    rospy.spin()
