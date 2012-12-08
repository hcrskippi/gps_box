#!/usr/bin/env python


import roslib; 
import rospy;

roslib.load_manifest('gps_box')

from std_msgs.msg import Int32
from gps_box.msg import GPSBox
from gps_box.msg import GPSFix

max_lat  = 0;
min_lat  = 0;

max_long = 0;
min_long = 0;

pub = rospy.Publisher('GPSenable',Int32)

def boxcheck(gps_coor):
	global pub
	if gps_coor.latitude > max_lat or gps_coor.latitude < min_lat :
		pub.publish(Int32(0))
	elif gps_coor.longitude > max_long or gps_coor.longitude < min_long :
		pub.publish(Int32(0))
	else :
		pub.publish(Int32(1))

def boxdefine(box_coor):
	global max_lat
	global min_long

	global min_lat
	global min_long

	max_lat  = box_coor.Top_Left_Latitude
	min_long = box_coor.Top_Left_Longitude
	
	min_lat  = box_coor.Bot_Right_Latitude
	max_long = box_coor.Bot_Right_Longitude

def main():
	rospy.init_node('gpsbox', anonymous=True)
	rospy.Subscriber("fix",GPSFix,boxcheck)
	rospy.Subscriber("box",GPSBox,boxdefine)
	rospy.spin()

if __name__ == '__main__':
	main()
