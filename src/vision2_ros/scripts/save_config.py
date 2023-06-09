#!/usr/bin/env python

import rospy
from vision2_ros.msg import HSV
import yaml

low_H = 0
low_S = 0
low_v = 0

high_H = 0
high_S = 0
high_V = 0

def HSVCallback(data):
    global low_H
    global low_S
    global low_v

    global high_H
    global high_S
    global high_V
        
    low_H = data.hsv_values[0]
    low_S = data.hsv_values[1] 
    low_V = data.hsv_values[2]
    high_H = data.hsv_values[3]
    high_S = data.hsv_values[4]
    high_V = data.hsv_values[5]
    
    # hsv_values = {"low_H": low_H, "low_S":low_S, "low_V":low_V, "high_H":high_H, "high_S": high_S, "high_V":high_V}
    
    hsv_config = [low_H,low_S,low_V,high_H,high_S,high_V]
    hsv_name = ["low_H","low_S","low_V","high_H","high_S","high_V"]
    
    # hsv_values = {"source": 0}
    
    with open(r'/home/george/ros_vision/src/vision2_ros/config/hsv_setting.yaml', 'w') as file:
        for index, value in enumerate(hsv_config):
            documents = yaml.dump({hsv_name[index]:hsv_config[index]}, file)

def saveConfig():
    rospy.Subscriber("/camera/image/hsv", HSV, HSVCallback)
    rospy.init_node("hsv_config", anonymous = False)
    # rospy.spin()
    

if __name__ == "__main__":
    
    try:
        saveConfig()
        rospy.loginfo("Config saved! ")
        
        
    except rospy.ROSInterruptException:
        pass