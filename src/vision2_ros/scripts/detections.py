#!/usr/bin/env python

import rospy
import numpy as np
import cv2
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
from vision2_ros.msg import detection

# get all params needed from the parameter server

source = rospy.get_param("camera_source")
child_frame = rospy.get_param("child_frame")
parent_frame = rospy.get_param("parent_frame")
cascade_path = rospy.get_param("path_to_harcascade")

# Start camera capture
cap = cv2.VideoCapture(source)
bridge = CvBridge()

_detections = detection()

# Read the cascade
face_cascade = cv2.CascadeClassifier(cascade_path)

def CamPublisher():
    
    CamPub = rospy.Publisher("/camera/image/faces", Image, queue_size = 10)
    detection_pub = rospy.Publisher("/camera/image/detections", detection, queue_size = 10)
    rospy.init_node("detection_node", anonymous = False)
    rate = rospy.Rate(1)
    
    if not cap.isOpened():
        
        rospy.loginfo("cannot open camera")
    
    while not rospy.is_shutdown():
        
        ret, frame = cap.read()
        
        if not ret:
            
            break
        
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        faces = face_cascade.detectMultiScale(gray, 1.1, 4)
        
        # Variable to hold number of faces detected
        detection_counts = 0
        
        for (x,y,w,h) in faces:
            detection_counts += 1            
            cv2.rectangle(frame,(x,y),(x+w,y+h),(0,225,0),4)
            roi_colored = frame[y:y+h,x:x+w]
            
            
            #Populate the detection massage with the position of the detection
            
            _detections.num_detection = detection_counts
            _detections.header.stamp = rospy.Time.now()
            _detections.header.frame_id = parent_frame
            _detections.child_frame_id = child_frame
            _detections.frame_h = frame.shape[0]
            _detections.frame_w = frame.shape[1]
            _detections.bbx[0] = x
            _detections.bbx[1] = y
            _detections.bbx[2] = x+w
            _detections.bbx[3] = y+h
            
        cv2.imshow("frame", frame)
        msg = bridge.cv2_to_imgmsg(frame, "bgr8")
        
        #Publish the image to ROS
        CamPub.publish(msg)
        
        #Publish detection result to ROS message 
        detection_pub.publish(_detections)
        
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
