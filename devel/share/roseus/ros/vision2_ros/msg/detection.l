;; Auto-generated. Do not edit!


(when (boundp 'vision2_ros::detection)
  (if (not (find-package "VISION2_ROS"))
    (make-package "VISION2_ROS"))
  (shadow 'detection (find-package "VISION2_ROS")))
(unless (find-package "VISION2_ROS::DETECTION")
  (make-package "VISION2_ROS::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude detection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision2_ros::detection
  :super ros::object
  :slots (_header _child_frame_id _frame_h _frame_w _bbx _num_detection ))

(defmethod vision2_ros::detection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:child_frame_id __child_frame_id) "")
    ((:frame_h __frame_h) 0)
    ((:frame_w __frame_w) 0)
    ((:bbx __bbx) (make-array 4 :initial-element 0 :element-type :integer))
    ((:num_detection __num_detection) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _child_frame_id (string __child_frame_id))
   (setq _frame_h (round __frame_h))
   (setq _frame_w (round __frame_w))
   (setq _bbx __bbx)
   (setq _num_detection (round __num_detection))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:frame_h
   (&optional __frame_h)
   (if __frame_h (setq _frame_h __frame_h)) _frame_h)
  (:frame_w
   (&optional __frame_w)
   (if __frame_w (setq _frame_w __frame_w)) _frame_w)
  (:bbx
   (&optional __bbx)
   (if __bbx (setq _bbx __bbx)) _bbx)
  (:num_detection
   (&optional __num_detection)
   (if __num_detection (setq _num_detection __num_detection)) _num_detection)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; int64 _frame_h
    8
    ;; int64 _frame_w
    8
    ;; int64[4] _bbx
    (* 8    4)
    ;; int64 _num_detection
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; int64 _frame_h
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame_h (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame_h) (= (length (_frame_h . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame_h . bv) 0) 0) s)
              (write-long (ash (elt (_frame_h . bv) 1) -1) s))
             ((and (class _frame_h) (= (length (_frame_h . bv)) 1)) ;; big1
              (write-long (elt (_frame_h . bv) 0) s)
              (write-long (if (>= _frame_h 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame_h s)(write-long (if (>= _frame_h 0) 0 #xffffffff) s)))
     ;; int64 _frame_w
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame_w (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame_w) (= (length (_frame_w . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame_w . bv) 0) 0) s)
              (write-long (ash (elt (_frame_w . bv) 1) -1) s))
             ((and (class _frame_w) (= (length (_frame_w . bv)) 1)) ;; big1
              (write-long (elt (_frame_w . bv) 0) s)
              (write-long (if (>= _frame_w 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame_w s)(write-long (if (>= _frame_w 0) 0 #xffffffff) s)))
     ;; int64[4] _bbx
     (dotimes (i 4)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _bbx i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _bbx i)) (= (length ((elt _bbx i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _bbx i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _bbx i) . bv) 1) -1) s))
             ((and (class (elt _bbx i)) (= (length ((elt _bbx i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _bbx i) . bv) 0) s)
              (write-long (if (>= (elt _bbx i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _bbx i) s)(write-long (if (>= (elt _bbx i) 0) 0 #xffffffff) s)))
       )
     ;; int64 _num_detection
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num_detection (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num_detection) (= (length (_num_detection . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num_detection . bv) 0) 0) s)
              (write-long (ash (elt (_num_detection . bv) 1) -1) s))
             ((and (class _num_detection) (= (length (_num_detection . bv)) 1)) ;; big1
              (write-long (elt (_num_detection . bv) 0) s)
              (write-long (if (>= _num_detection 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num_detection s)(write-long (if (>= _num_detection 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _frame_h
#+(or :alpha :irix6 :x86_64)
      (setf _frame_h (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame_h (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _frame_w
#+(or :alpha :irix6 :x86_64)
      (setf _frame_w (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame_w (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64[4] _bbx
   (dotimes (i (length _bbx))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _bbx i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _bbx i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; int64 _num_detection
#+(or :alpha :irix6 :x86_64)
      (setf _num_detection (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num_detection (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get vision2_ros::detection :md5sum-) "e3657f46004902b9617cde844c0dc008")
(setf (get vision2_ros::detection :datatype-) "vision2_ros/detection")
(setf (get vision2_ros::detection :definition-)
      "Header header
string child_frame_id # child frame
int64 frame_h   # frame height
int64 frame_w  # frame width
int64[4] bbx   # outputs an array of upper and lower bounding box of the detection. bbx[lower_left_x,lower_left_y,upper_right_x, upper_right_y]
int64 num_detection # outputs the number of detections
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :vision2_ros/detection "e3657f46004902b9617cde844c0dc008")


