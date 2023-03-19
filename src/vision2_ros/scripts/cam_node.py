#!/usr/bin/env python

import rospy
import numpy as np
import cv2
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image

source = rospy.get_param("camera_source")

cap = cv2.VideoCapture(source)

bridge = CvBridge()

def CamPublisher():
    
    CamPub = rospy.Publisher("/camera/image/raw", Image, queue_size = 10)
    rospy.init_node("cam_node", anonymous = False)
    rate = rospy.Rate(1)
    
    if not cap.isOpened():
        
        rospy.loginfo("cannot open camera")
    
    elif cap.isOpened():
        
        rospy.loginfo("camera publishing....")
    
    while not rospy.is_shutdown():
        
        ret, frame = cap.read()
        
        if not ret:
            
            break
        
        cv2.imshow("frame", frame)
        msg = bridge.cv2_to_imgmsg(frame, "bgr8")
        CamPub.publish(msg)
        
        if cv2.waitKey(1) & 0xFF == ord('q'):
            
            break
        
        if rospy.is_shutdown():
            cap.release()
            cv2.destroyAllWindows()
        

if __name__ == "__main__":
    
    try:
        
        CamPublisher()
    except rospy.ROSInterruptException:
        pass
