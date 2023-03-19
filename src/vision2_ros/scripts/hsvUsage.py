#!/usr/bin/env python

import roslib
import sys
import rospy
import cv2
import numpy as np
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image



#HSV variables

low_H = rospy.get_param("low_H")
low_S = rospy.get_param("low_S")
low_V = rospy.get_param("low_V")
high_H = rospy.get_param("high_H")
high_S = rospy.get_param("high_S")
high_V = rospy.get_param("high_V")


class UseHSVSettings:

	def __init__(self):
		self.bridge_object = CvBridge()
		self.image_sub = rospy.Subscriber("/camera/image/raw",Image,self.camera_callback)
		rospy.init_node("hsv_usage",anonymous=False)

	def camera_callback(self,data):
		global low_H
		global low_S
		global low_V
		global high_H
		global high_S
		global high_V
  
		try:
			cv_image = self.bridge_object.imgmsg_to_cv2(data, desired_encoding="passthrough")
			hsv = cv2.cvtColor(cv_image, cv2.COLOR_BGR2HSV)

			#uncomment to use HSV range
			mask = cv2.inRange(hsv, (low_H, low_S, low_V), (high_H, high_S, high_V))

			#show image
			cv2.imshow("BGR",cv_image)
			cv2.imshow("mask",mask)
   
			cv2.waitKey(30)

		except CvBridgeError as e:
			print(e)




def main():
    
	UseHSVSettings()

	try:
		rospy.spin()

	except KeyboardInterrupt:
		
		cv2.destroyAllWindows()


if __name__ == '__main__':
    main()
