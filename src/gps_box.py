#!/usr/bin/env python


import roslib; 
import rospy;
import math;

roslib.load_manifest('gps_box')

from std_msgs.msg import Float64
from gps_box.msg import GPSBox
from gps_box.msg import GPSFix

max_lat  = 51.499207;
min_lat  = 51.497952;

min_long = -0.180717;
max_long = -0.172713;

pub = rospy.Publisher('GPSDistance',Float64)

def boxcheck(fix):
	global pub
	if fix.latitude > max_lat or fix.latitude < min_lat :
		pub.publish(Float64(0))
	elif fix.longitude > max_long or fix.longitude < min_long :
		pub.publish(Float64(0))
	else :

		latitude_distance1 = (6371009)*math.sin(math.pi*abs(fix.latitude - min_lat)/180);
		latitude_distance2 = (6371009)*math.sin(math.pi*abs(fix.latitude - max_lat)/180);


		longitude_distance3 = (6371009)*math.sin(math.pi*abs(fix.longitude - min_long)/180);

		longitude_distance4 = (6371009)*math.sin(math.pi*abs(fix.longitude - max_long)/180);
        
		
		distance = min(latitude_distance1, latitude_distance2,longitude_distance3,longitude_distance4)

	
        
		pub.publish(Float64(distance))

		

def boxdefine(box):
	global max_lat
	global min_long

	global min_lat
	global max_long

	max_lat  = box.Top_Left_Latitude
	min_long = box.Top_Left_Longitude
	
	min_lat  = box.Bot_Right_Latitude
	max_long = box.Bot_Right_Longitude

def main():
	rospy.init_node('gpsbox')
	rospy.Subscriber("box",GPSBox,boxdefine)
	rospy.Subscriber("fix",GPSFix,boxcheck)	
	rospy.spin()

if __name__ == '__main__':
	main()
