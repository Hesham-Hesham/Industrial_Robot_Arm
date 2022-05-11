#!/usr/bin/env python3
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

def go_by_pos(orinetation_l=list(),position_l=list()):
    pose_goal = geometry_msgs.msg.Pose()
    pose_goal.orientation.w = orinetation_l[3]
    pose_goal.orientation.x = orinetation_l[0]
    pose_goal.orientation.y = orinetation_l[1]
    pose_goal.orientation.z = orinetation_l[2]
    pose_goal.position.x = position_l[0]
    pose_goal.position.y = position_l[1]
    pose_goal.position.z = position_l[2]
    ABB_move.set_pose_target(pose_goal)
    ABB_move.go(wait=True)
    ABB_move.stop()
    ABB_move.clear_pose_targets()
if __name__ == "__main__":
    while not rospy.is_shutdown():
        position_list=[]
        orinetation_list=[]
        position_list.append(float(input("enter the position in x-cordinate: ")))
        position_list.append(float(input("enter the position in y-cordinate: ")))
        position_list.append(float(input("enter the position in z-cordinate: ")))
        orinetation_list.append(float(input("enter the orinetation in dx : ")))
        orinetation_list.append(float(input("enter the orientation in dy: ")))
        orinetation_list.append(float(input("enter the orientation in dz: ")))
        orinetation_list.append(float(input("enter the orientation in dw: ")))
        go_by_pos(orinetation_list,position_list)


        
    
