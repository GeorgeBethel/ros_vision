# ros_vision

This package is created to make detection easy with openCV through ROS. it enables you to do face detection using openCV and publishes the detection results to a ROS topic. It also enables you to easily attach your camera frame on whichever parent frame you want through a convinient yaml file.

In addition to detection, it also alows you to adjust HSV values and save the settings on the fly

## messages 

detection.msg

```
Header header
string child_frame_id # child frame
int64 frame_h   # frame height
int64 frame_w  # frame width
int64[4] bbx   # outputs an array of upper and lower bounding box of the detection. bbx[lower_left_x,lower_left_y,upper_right_x, upper_right_y]
int64 num_detection # outputs the number of detections
```
## message output
```
header: 
  seq: 700
  stamp: 
    secs: 1679090099
    nsecs: 442188024
  frame_id: "base_link"
child_frame_id: "camera_link"
frame_h: 480
frame_w: 640
bbx: [359, 186, 487, 314]
num_detection: 1
```
## Topics

the /camera/image/detections is the detection result topic while the /camera/image/faces is the raw image topic
```
/camera/image/detections
/camera/image/faces
```

# config file
camera.yaml
the camera.yaml file contains the image source which is basically the webcam you want to use. change this paremeter depending on whether you are using a webcam or USB camnera

```
image_source: 0  # source of the image 0 for webcam, 2 for USB camera
Detection_type: "face"  # what you want to detect. this is mostly used for cascade classifier
model_type: cascade_classifier # change to yolo if using yolo
child_frame: camera_link
parent_frame: base_link
```
# launching the detection node

launch the camera.launch file so that the parameter will be loaded to the server
```
roslaunch vision2_ros camera.launch
```
launch the detection.py node to bring up the camera
```
rosrun vision2_ros detection.py
```
# tf tree

![alt tf tree](https://github.com/GeorgeBethel/ros_vision/blob/main/src/vision2_ros/tf.png)

# rviz camera view

![alt rviz camera view](https://github.com/GeorgeBethel/ros_vision/blob/main/src/vision2_ros/rviz_cam_view.png)