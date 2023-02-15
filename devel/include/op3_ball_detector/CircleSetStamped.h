// Generated by gencpp from file op3_ball_detector/CircleSetStamped.msg
// DO NOT EDIT!


#ifndef OP3_BALL_DETECTOR_MESSAGE_CIRCLESETSTAMPED_H
#define OP3_BALL_DETECTOR_MESSAGE_CIRCLESETSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>

namespace op3_ball_detector
{
template <class ContainerAllocator>
struct CircleSetStamped_
{
  typedef CircleSetStamped_<ContainerAllocator> Type;

  CircleSetStamped_()
    : header()
    , circles()  {
    }
  CircleSetStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , circles(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _circles_type;
  _circles_type circles;





  typedef boost::shared_ptr< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> const> ConstPtr;

}; // struct CircleSetStamped_

typedef ::op3_ball_detector::CircleSetStamped_<std::allocator<void> > CircleSetStamped;

typedef boost::shared_ptr< ::op3_ball_detector::CircleSetStamped > CircleSetStampedPtr;
typedef boost::shared_ptr< ::op3_ball_detector::CircleSetStamped const> CircleSetStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace op3_ball_detector

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'op3_ball_detector': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/op3_ball_detector/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a9ed251dbca477265ff458e1e16f7437";
  }

  static const char* value(const ::op3_ball_detector::CircleSetStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa9ed251dbca47726ULL;
  static const uint64_t static_value2 = 0x5ff458e1e16f7437ULL;
};

template<class ContainerAllocator>
struct DataType< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "op3_ball_detector/CircleSetStamped";
  }

  static const char* value(const ::op3_ball_detector::CircleSetStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This represents the set of detected circles\n\
\n\
#timestamp and frame id of the image frame\n\
std_msgs/Header header\n\
\n\
#set of detected circles: \n\
#      (circles[i].x, circles[i].y) is the center point in image coordinates\n\
#      circles[i].z is the circle radius\n\
geometry_msgs/Point[] circles\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::op3_ball_detector::CircleSetStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.circles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CircleSetStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::op3_ball_detector::CircleSetStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::op3_ball_detector::CircleSetStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "circles[]" << std::endl;
    for (size_t i = 0; i < v.circles.size(); ++i)
    {
      s << indent << "  circles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.circles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OP3_BALL_DETECTOR_MESSAGE_CIRCLESETSTAMPED_H