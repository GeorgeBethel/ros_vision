;; Auto-generated. Do not edit!


(when (boundp 'vision2_ros::HSV)
  (if (not (find-package "VISION2_ROS"))
    (make-package "VISION2_ROS"))
  (shadow 'HSV (find-package "VISION2_ROS")))
(unless (find-package "VISION2_ROS::HSV")
  (make-package "VISION2_ROS::HSV"))

(in-package "ROS")
;;//! \htmlinclude HSV.msg.html


(defclass vision2_ros::HSV
  :super ros::object
  :slots (_hsv_values ))

(defmethod vision2_ros::HSV
  (:init
   (&key
    ((:hsv_values __hsv_values) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _hsv_values __hsv_values)
   self)
  (:hsv_values
   (&optional __hsv_values)
   (if __hsv_values (setq _hsv_values __hsv_values)) _hsv_values)
  (:serialization-length
   ()
   (+
    ;; int64[6] _hsv_values
    (* 8    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[6] _hsv_values
     (dotimes (i 6)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _hsv_values i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _hsv_values i)) (= (length ((elt _hsv_values i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _hsv_values i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _hsv_values i) . bv) 1) -1) s))
             ((and (class (elt _hsv_values i)) (= (length ((elt _hsv_values i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _hsv_values i) . bv) 0) s)
              (write-long (if (>= (elt _hsv_values i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _hsv_values i) s)(write-long (if (>= (elt _hsv_values i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[6] _hsv_values
   (dotimes (i (length _hsv_values))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _hsv_values i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _hsv_values i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;;
   self)
  )

(setf (get vision2_ros::HSV :md5sum-) "1fbdf4b8124056a7224543e418dc9dfe")
(setf (get vision2_ros::HSV :datatype-) "vision2_ros/HSV")
(setf (get vision2_ros::HSV :definition-)
      "# variables to hold HSV settings

int64[6] hsv_values 
")



(provide :vision2_ros/HSV "1fbdf4b8124056a7224543e418dc9dfe")


