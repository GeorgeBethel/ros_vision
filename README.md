# ros_vision

This package is created to make detection easy with openCV through ROS. it enables you to do face detection using openCV and publishes the detection results to a ROS topic. It also enables you to easily attach your camera frame on whichever parent frame you want through a convinient yaml file.

In addition to detection, it also alows you to adjust HSV values and save the settings on the fly.

This package works pretty well in ROS 1 melodic and Noetic 

## Directories
```
src/
└── vision2_ros
    ├── config
    ├── include
    │   └── vision2_ros
    ├── launch
    ├── msg
    ├── scripts
    ├── src
    └── utils

```

## Installing dependencies

Install openCV python
```
pip install opencv-python
```
Install cv-bridge
```
sudo apt-get install ros-<ros1-distro>-cv-bridge
```

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

the **/camera/image/detections** is the detection result topic while the **/camera/image/raw** is the raw image topic. **/camera/image/faces** is the image topic to get the face detection displayed. **/camera/image/hsv** displays the hsv values realtime
```
- /camera/image/detections
- /camera/image/faces
- /camera/image/hsv
- /camera/image/raw
```

# config file

the camera.yaml file contains the image source which is basically the webcam you want to use. change this paremeter depending on whether you are using a webcam or USB camnera
```
image_source: 0  # source of the image 0 for webcam, 2 for USB camera
Detection_type: "face"  # what you want to detect. this is mostly used for cascade classifier
model_type: cascade_classifier # change to yolo if using yolo
path_to_weights: ""
path_to_harcascade: "/home/george/ros_vision/src/vision2_ros/utils/haarcascade_frontalface_default.xml" # change this path to match your path
child_frame: camera_link
parent_frame: base_link
```
## launching the camera node

Launch the camera.launch file so that the parameter will be loaded to the server
```
roslaunch vision2_ros camera.launch
```
Launch the camera node
```
rosrun cam_node.py
```
Once the camera node is ready change the fixed frame to base_link. Add the image in Rviz and set he image topic to /camera/image/raw

## launching the detection node

Launch the camera.launch file so that the parameter will be loaded to the server
```
roslaunch vision2_ros camera.launch
```
Launch the detection.py node to bring up the camera
```
rosrun vision2_ros detection.py
```

## HSV value setting

To launch the HSV setting node, you have to start the camera node first
```
roslaunch vision2_ros camera.launch

rosrun vision2_ros lowerUpper_HSVcolorSetting.py
```
## Saving the HSV settings and writting it to a config file
Install the yaml module using the command
```
pip install pyyaml
```
Open another terminal and run the node to save the settings
```
python3 save_config.py
```
## HSV message file

variables to hold HSV settings
```
int64[6] hsv_values 
```
HSV yaml file **hsv_settings.yaml**
```
low_H: 0
low_S: 243
low_V: 118
high_H: 180
high_S: 255
high_V: 255

```
## HSV value usage

The package includes an example code to use the HSV values gotten. To run this, run the launch file below
```
roslaunch vision2_ros hsv.launch

# tf tree

![alt tf tree](https://github.com/GeorgeBethel/ros_vision/blob/main/src/vision2_ros/tf.png)

# rviz camera view

![alt rviz camera view](https://github.com/GeorgeBethel/ros_vision/blob/main/src/vision2_ros/face_detected.png)
