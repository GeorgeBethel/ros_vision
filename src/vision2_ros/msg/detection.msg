Header header
string child_frame_id # child frame
int64 frame_h   # frame height
int64 frame_w  # frame width
int64[4] bbx   # outputs an array of upper and lower bounding box of the detection. bbx[lower_left_x,lower_left_y,upper_right_x, upper_right_y]
int64 num_detection # outputs the number of detections