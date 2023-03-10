// Generated by gencpp from file vision_utils/LUT.msg
// DO NOT EDIT!


#ifndef VISION_UTILS_MESSAGE_LUT_H
#define VISION_UTILS_MESSAGE_LUT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <std_msgs/UInt8.h>

namespace vision_utils
{
template <class ContainerAllocator>
struct LUT_
{
  typedef LUT_<ContainerAllocator> Type;

  LUT_()
    : color()
    , color_class()  {
    }
  LUT_(const ContainerAllocator& _alloc)
    : color(_alloc)
    , color_class(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _color_type;
  _color_type color;

   typedef  ::std_msgs::UInt8_<ContainerAllocator>  _color_class_type;
  _color_class_type color_class;





  typedef boost::shared_ptr< ::vision_utils::LUT_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_utils::LUT_<ContainerAllocator> const> ConstPtr;

}; // struct LUT_

typedef ::vision_utils::LUT_<std::allocator<void> > LUT;

typedef boost::shared_ptr< ::vision_utils::LUT > LUTPtr;
typedef boost::shared_ptr< ::vision_utils::LUT const> LUTConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_utils::LUT_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_utils::LUT_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vision_utils

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'vision_utils': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vision_utils::LUT_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_utils::LUT_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_utils::LUT_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_utils::LUT_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_utils::LUT_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_utils::LUT_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_utils::LUT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09c8474bb4193e600be4dc7c15b023c1";
  }

  static const char* value(const ::vision_utils::LUT_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09c8474bb4193e60ULL;
  static const uint64_t static_value2 = 0x0be4dc7c15b023c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_utils::LUT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_utils/LUT";
  }

  static const char* value(const ::vision_utils::LUT_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_utils::LUT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point[] color\n\
std_msgs/UInt8 color_class\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: std_msgs/UInt8\n\
uint8 data\n\
";
  }

  static const char* value(const ::vision_utils::LUT_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_utils::LUT_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.color);
      stream.next(m.color_class);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LUT_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_utils::LUT_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_utils::LUT_<ContainerAllocator>& v)
  {
    s << indent << "color[]" << std::endl;
    for (size_t i = 0; i < v.color.size(); ++i)
    {
      s << indent << "  color[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.color[i]);
    }
    s << indent << "color_class: ";
    s << std::endl;
    Printer< ::std_msgs::UInt8_<ContainerAllocator> >::stream(s, indent + "  ", v.color_class);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_UTILS_MESSAGE_LUT_H
