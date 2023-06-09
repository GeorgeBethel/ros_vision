// Generated by gencpp from file vision2_ros/detection.msg
// DO NOT EDIT!


#ifndef VISION2_ROS_MESSAGE_DETECTION_H
#define VISION2_ROS_MESSAGE_DETECTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace vision2_ros
{
template <class ContainerAllocator>
struct detection_
{
  typedef detection_<ContainerAllocator> Type;

  detection_()
    : header()
    , child_frame_id()
    , frame_h(0)
    , frame_w(0)
    , bbx()
    , num_detection(0)  {
      bbx.assign(0);
  }
  detection_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , child_frame_id(_alloc)
    , frame_h(0)
    , frame_w(0)
    , bbx()
    , num_detection(0)  {
  (void)_alloc;
      bbx.assign(0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _child_frame_id_type;
  _child_frame_id_type child_frame_id;

   typedef int64_t _frame_h_type;
  _frame_h_type frame_h;

   typedef int64_t _frame_w_type;
  _frame_w_type frame_w;

   typedef boost::array<int64_t, 4>  _bbx_type;
  _bbx_type bbx;

   typedef int64_t _num_detection_type;
  _num_detection_type num_detection;





  typedef boost::shared_ptr< ::vision2_ros::detection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision2_ros::detection_<ContainerAllocator> const> ConstPtr;

}; // struct detection_

typedef ::vision2_ros::detection_<std::allocator<void> > detection;

typedef boost::shared_ptr< ::vision2_ros::detection > detectionPtr;
typedef boost::shared_ptr< ::vision2_ros::detection const> detectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision2_ros::detection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision2_ros::detection_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vision2_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'vision2_ros': ['/home/george/ros_vision/src/vision2_ros/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vision2_ros::detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision2_ros::detection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision2_ros::detection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision2_ros::detection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision2_ros::detection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision2_ros::detection_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision2_ros::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e3657f46004902b9617cde844c0dc008";
  }

  static const char* value(const ::vision2_ros::detection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe3657f46004902b9ULL;
  static const uint64_t static_value2 = 0x617cde844c0dc008ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision2_ros::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision2_ros/detection";
  }

  static const char* value(const ::vision2_ros::detection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision2_ros::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string child_frame_id # child frame\n"
"int64 frame_h   # frame height\n"
"int64 frame_w  # frame width\n"
"int64[4] bbx   # outputs an array of upper and lower bounding box of the detection. bbx[lower_left_x,lower_left_y,upper_right_x, upper_right_y]\n"
"int64 num_detection # outputs the number of detections\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::vision2_ros::detection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision2_ros::detection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.child_frame_id);
      stream.next(m.frame_h);
      stream.next(m.frame_w);
      stream.next(m.bbx);
      stream.next(m.num_detection);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct detection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision2_ros::detection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision2_ros::detection_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "child_frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.child_frame_id);
    s << indent << "frame_h: ";
    Printer<int64_t>::stream(s, indent + "  ", v.frame_h);
    s << indent << "frame_w: ";
    Printer<int64_t>::stream(s, indent + "  ", v.frame_w);
    s << indent << "bbx[]" << std::endl;
    for (size_t i = 0; i < v.bbx.size(); ++i)
    {
      s << indent << "  bbx[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.bbx[i]);
    }
    s << indent << "num_detection: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num_detection);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION2_ROS_MESSAGE_DETECTION_H
