#!/usr/bin/env python


import roslib; 
import rospy;
import math;

roslib.load_manifest('gps_box')

from std_msgs.msg import Float64
from gps_box.msg import GPSBox

pub = rospy.Publisher('box',GPSBox)



def main():
	rospy.init_node('box_pub')
	box_pos = GPSBox();
	box_pos.Top_Left_Latitude = 51.499207
	box_pos.Top_Left_Longitude = -0.180717
	box_pos.Bot_Right_Latitude = 51.497952
	box_pos.Bot_Right_Longitude = -0.172713
	pub.publish(box_pos)	
	rospy.spin()

if __name__ == '__main__':
	main()
