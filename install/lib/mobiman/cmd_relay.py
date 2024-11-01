#!/usr/bin/python3
import rospy
from hdas_msg.msg import motor_control
from rm_msgs.msg import JointPos

class RelayNode():
    def __init__(self) -> None:
        rospy.loginfo("setting up pub...")
        self.pub_ = rospy.Publisher("/rm_driver/JointPos", JointPos, queue_size=1)

        rospy.loginfo("setting up sub...")
        self.sub_ = rospy.Subscriber("/arm_joint_command", motor_control, self.cmd_callback)
        

    def cmd_callback(self, msg: motor_control):
        jpos = msg.p_des
        out_msg = JointPos()
        out_msg.joint = [*jpos]
        # rospy.loginfo(f"relaying msg.. {out_msg}")
        self.pub_.publish(out_msg)

def main():
    rospy.init_node("jpos_test")    
    node = RelayNode()
    rospy.spin()

if __name__=="__main__":
    main()
    
