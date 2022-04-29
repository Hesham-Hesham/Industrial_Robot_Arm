from __future__ import print_function
import sys
import rospy
from moveit_commander import *
from moveit_msgs.msg import *
import geometry_msgs.msg
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
from math import pi, tau, dist, fabs, cos