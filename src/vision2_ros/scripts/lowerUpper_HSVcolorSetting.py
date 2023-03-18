#!/usr/bin/env python

import roslib
import sys
import rospy
import cv2
import numpy as np
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
from vision2_ros.msg import HSV


#HSV variables

max_value = 255
max_value_H = 360//2
low_H = 0
low_S = 0
low_V = 0
high_H = max_value_H
high_S = max_value
high_V = max_value
window_capture_name = 'Video Capture'
window_detection_name = 'Object Detection'
low_H_name = 'Low H'
low_S_name = 'Low S'
low_V_name = 'Low V'
high_H_name = 'High H'
high_S_name = 'High S'
high_V_name = 'High V'


#HSV finder functions

def on_low_H_thresh_trackbar(val):
	global low_H
	global high_H
	low_H = val
	low_H = min(high_H-1, low_H)
	cv2.setTrackbarPos(low_H_name, window_detection_name, low_H)
def on_high_H_thresh_trackbar(val):
	global low_H
	global high_H
	high_H = val
	high_H = max(high_H, low_H+1)
	cv2.setTrackbarPos(high_H_name, window_detection_name, high_H)
def on_low_S_thresh_trackbar(val):
	global low_S
	global high_S
	low_S = val
	low_S = min(high_S-1, low_S)
	cv2.setTrackbarPos(low_S_name, window_detection_name, low_S)
def on_high_S_thresh_trackbar(val):
	global low_S
	global high_S
	high_S = val
	high_S = max(high_S, low_S+1)
	cv2.setTrackbarPos(high_S_name, window_detection_name, high_S)
def on_low_V_thresh_trackbar(val):
	global low_V
	global high_V
	low_V = val
	low_V = min(high_V-1, low_V)
	cv2.setTrackbarPos(low_V_name, window_detection_name, low_V)
def on_high_V_thresh_trackbar(val):
	global low_V
	global high_V
	high_V = val
	high_V = max(high_V, low_V+1)
	cv2.setTrackbarPos(high_V_name, window_detection_name, high_V)


class HSVSSetting:

	def __init__(self):
		self.bridge_object = CvBridge()
		self.hsv_settings = HSV()
		self.image_sub = rospy.Subscriber("/camera/image/raw",Image,self.camera_callback)
		self.hsv_pub = rospy.Publisher("camera/image/hsv", HSV, queue_size = 10)
		rospy.init_node("hsv_settings",anonymous=False)


	#uncomment to find HSV range

	cv2.namedWindow(window_capture_name)
	cv2.namedWindow(window_detection_name)
	cv2.createTrackbar(low_H_name, window_detection_name , low_H, max_value_H, on_low_H_thresh_trackbar)
	cv2.createTrackbar(high_H_name, window_detection_name , high_H, max_value_H, on_high_H_thresh_trackbar)
	cv2.createTrackbar(low_S_name, window_detection_name , low_S, max_value, on_low_S_thresh_trackbar)
	cv2.createTrackbar(high_S_name, window_detection_name , high_S, max_value, on_high_S_thresh_trackbar)
	cv2.createTrackbar(low_V_name, window_detection_name , low_V, max_value, on_low_V_thresh_trackbar)
	cv2.createTrackbar(high_V_name, window_detection_name , high_V, max_value, on_high_V_thresh_trackbar)



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

			#coment out to set HSV range
			mask = cv2.inRange(hsv, (low_H, low_S, low_V), (high_H, high_S, high_V))

			#uncomment to use HSV range
			#mask = cv2.inRange(hsv, (0, 0, 119), (0, 0, 132))

			#show image
			cv2.imshow("BGR",cv_image)
			cv2.imshow("mask",mask)
			self.hsv_settings.hsv_values[0] = low_H
			self.hsv_settings.hsv_values[1] = low_S
			self.hsv_settings.hsv_values[2] = low_V
			self.hsv_settings.hsv_values[3] = high_H
			self.hsv_settings.hsv_values[4] = high_S
			self.hsv_settings.hsv_values[5] = high_V
			self.hsv_pub.publish(self.hsv_settings)
			print("low_H", low_H)
   			print("low_S", low_S)
			print("low_V", low_V)
			print("High_H", high_H)
			print("High_S", high_S)
			print("High_V", high_V)
   
			cv2.waitKey(30)

		except CvBridgeError as e:
			print(e)




def main():
	HSVSSetting()

	try:
		rospy.spin()

	except KeyboardInterrupt:
		
		cv2.destroyAllWindows()


if __name__ == '__main__':
    main()
