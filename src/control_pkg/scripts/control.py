#!/usr/bin/env python3
from re import A
from modulesdir.modules import *

tau=2*pi

rospy.init_node("abb_moveit") #init the node
roscpp_initialize(sys.argv) #init moveit group

#define the robot object
ABB_INFO=RobotCommander() #object that Provides information such as the robot’s kinematic model and the robot’s current joint states
ABB_planning=planning_scene_interface #object This provides a remote interface for getting, setting, and updating the robot’s internal understanding of the surrounding world:\
ABB_move=MoveGroupCommander("joint_group")
display_trajectory_publisher = rospy.Publisher("/move_group/display_planned_path",moveit_msgs.msg.DisplayTrajectory,queue_size=20)

#go by specify joint angle 
def go_by_angle():
    ABB_joint_controller=ABB_move.get_current_joint_values()
    ABB_joint_controller[0] += (float(input("enter the angle ""degree"" of joint[1] ="))/180)*pi
    ABB_joint_controller[1] += (float(input("enter the angle ""degree"" of joint[2] ="))/180)*pi
    ABB_joint_controller[2] += (float(input("enter the angle ""degree"" of joint[3] ="))/180)*pi
    ABB_joint_controller[3] += (float(input("enter the angle ""degree"" of joint[4] ="))/180)*pi
    ABB_joint_controller[4] += (float(input("enter the angle ""degree"" of joint[5] ="))/180)*pi
    ABB_joint_controller[5] += (float(input("enter the angle ""degree"" of joint[6] ="))/180)*pi
    ABB_move.go(ABB_joint_controller,wait=True)
    ABB_move.stop()
#end

def go_by_pos():
    pose_goal = geometry_msgs.msg.Pose()
    pose_goal.orientation.w = 0.03
    pose_goal.orientation.x = 0.36
    pose_goal.orientation.y = -0.2109
    pose_goal.orientation.z = 0.
    pose_goal.position.x = 0.754
    pose_goal.position.y =-0.48
    pose_goal.position.z = 1.8
    ABB_move.set_pose_target(pose_goal)
    ABB_move.go(wait=True)
    ABB_move.stop()
    ABB_move.clear_pose_targets()
go_by_pos()
    