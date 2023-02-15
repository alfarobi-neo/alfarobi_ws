// Generated by gencpp from file vision_utils/FieldBoundary.msg
// DO NOT EDIT!


#ifndef VISION_UTILS_MESSAGE_FIELDBOUNDARY_H
#define VISION_UTILS_MESSAGE_FIELDBOUNDARY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace vision_utils
{
template <class ContainerAllocator>
struct FieldBoundary_
{
  typedef FieldBoundary_<ContainerAllocator> Type;

  FieldBoundary_()
    : header()
    , bound1()
    , bound2()  {
    }
  FieldBoundary_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , bound1(_alloc)
    , bound2(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::geometry_msgs::Vector3_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Vector3_<ContainerAllocator> >::other >  _bound1_type;
  _bound1_type bound1;

   typedef std::vector< ::geometry_msgs::Vector3_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Vector3_<ContainerAllocator> >::other >  _bound2_type;
  _bound2_type bound2;





  typedef boost::shared_ptr< ::vision_utils::FieldBoundary_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_utils::FieldBoundary_<ContainerAllocator> const> ConstPtr;

}; // struct FieldBoundary_

typedef ::vision_utils::FieldBoundary_<std::allocator<void> > FieldBoundary;

typedef boost::shared_ptr< ::vision_utils::FieldBoundary > FieldBoundaryPtr;
typedef boost::shared_ptr< ::vision_utils::FieldBoundary const> FieldBoundaryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_utils::FieldBoundary_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_utils::FieldBoundary_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vision_utils

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'vision_utils': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/vision_utils/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vision_utils::FieldBoundary_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_utils::FieldBoundary_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_utils::FieldBoundary_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_utils::FieldBoundary_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_utils::FieldBoundary_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_utils::FieldBoundary_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_utils::FieldBoundary_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6fbaae514a52711da5011ab63728a939";
  }

  static const char* value(const ::vision_utils::FieldBoundary_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6fbaae514a52711dULL;
  static const uint64_t static_value2 = 0xa5011ab63728a939ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_utils::FieldBoundary_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_utils/FieldBoundary";
  }

  static const char* value(const ::vision_utils::FieldBoundary_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_utils::FieldBoundary_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
geometry_msgs/Vector3[] bound1\n\
geometry_msgs/Vector3[] bound2\n\
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
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::vision_utils::FieldBoundary_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_utils::FieldBoundary_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.bound1);
      stream.next(m.bound2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FieldBoundary_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_utils::FieldBoundary_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_utils::FieldBoundary_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "bound1[]" << std::endl;
    for (size_t i = 0; i < v.bound1.size(); ++i)
    {
      s << indent << "  bound1[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "    ", v.bound1[i]);
    }
    s << indent << "bound2[]" << std::endl;
    for (size_t i = 0; i < v.bound2.size(); ++i)
    {
      s << indent << "  bound2[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "    ", v.bound2[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_UTILS_MESSAGE_FIELDBOUNDARY_H