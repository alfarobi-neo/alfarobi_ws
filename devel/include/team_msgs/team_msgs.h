// Generated by gencpp from file team_msgs/team_msgs.msg
// DO NOT EDIT!


#ifndef TEAM_MSGS_MESSAGE_TEAM_MSGS_H
#define TEAM_MSGS_MESSAGE_TEAM_MSGS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>

namespace team_msgs
{
template <class ContainerAllocator>
struct team_msgs_
{
  typedef team_msgs_<ContainerAllocator> Type;

  team_msgs_()
    : status(false)
    , robot_pos()  {
    }
  team_msgs_(const ContainerAllocator& _alloc)
    : status(false)
    , robot_pos(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _robot_pos_type;
  _robot_pos_type robot_pos;





  typedef boost::shared_ptr< ::team_msgs::team_msgs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::team_msgs::team_msgs_<ContainerAllocator> const> ConstPtr;

}; // struct team_msgs_

typedef ::team_msgs::team_msgs_<std::allocator<void> > team_msgs;

typedef boost::shared_ptr< ::team_msgs::team_msgs > team_msgsPtr;
typedef boost::shared_ptr< ::team_msgs::team_msgs const> team_msgsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::team_msgs::team_msgs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::team_msgs::team_msgs_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace team_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'team_msgs': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/team_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::team_msgs::team_msgs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::team_msgs::team_msgs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::team_msgs::team_msgs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::team_msgs::team_msgs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::team_msgs::team_msgs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::team_msgs::team_msgs_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::team_msgs::team_msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4fee2648876f683c1a0041a1b09c9775";
  }

  static const char* value(const ::team_msgs::team_msgs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4fee2648876f683cULL;
  static const uint64_t static_value2 = 0x1a0041a1b09c9775ULL;
};

template<class ContainerAllocator>
struct DataType< ::team_msgs::team_msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "team_msgs/team_msgs";
  }

  static const char* value(const ::team_msgs::team_msgs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::team_msgs::team_msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool status\n\
geometry_msgs/Vector3 robot_pos\n\
\n\
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

  static const char* value(const ::team_msgs::team_msgs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::team_msgs::team_msgs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.robot_pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct team_msgs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::team_msgs::team_msgs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::team_msgs::team_msgs_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "robot_pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_pos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEAM_MSGS_MESSAGE_TEAM_MSGS_H
