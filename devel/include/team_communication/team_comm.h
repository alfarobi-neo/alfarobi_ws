// Generated by gencpp from file team_communication/team_comm.msg
// DO NOT EDIT!


#ifndef TEAM_COMMUNICATION_MESSAGE_TEAM_COMM_H
#define TEAM_COMMUNICATION_MESSAGE_TEAM_COMM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace team_communication
{
template <class ContainerAllocator>
struct team_comm_
{
  typedef team_comm_<ContainerAllocator> Type;

  team_comm_()
    : robot_pos()
    , ball_pos()  {
    }
  team_comm_(const ContainerAllocator& _alloc)
    : robot_pos(_alloc)
    , ball_pos(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _robot_pos_type;
  _robot_pos_type robot_pos;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _ball_pos_type;
  _ball_pos_type ball_pos;





  typedef boost::shared_ptr< ::team_communication::team_comm_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::team_communication::team_comm_<ContainerAllocator> const> ConstPtr;

}; // struct team_comm_

typedef ::team_communication::team_comm_<std::allocator<void> > team_comm;

typedef boost::shared_ptr< ::team_communication::team_comm > team_commPtr;
typedef boost::shared_ptr< ::team_communication::team_comm const> team_commConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::team_communication::team_comm_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::team_communication::team_comm_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace team_communication

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'team_communication': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::team_communication::team_comm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::team_communication::team_comm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::team_communication::team_comm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::team_communication::team_comm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::team_communication::team_comm_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::team_communication::team_comm_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::team_communication::team_comm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "08f386d4974695cf4ae0bd975a0b76db";
  }

  static const char* value(const ::team_communication::team_comm_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x08f386d4974695cfULL;
  static const uint64_t static_value2 = 0x4ae0bd975a0b76dbULL;
};

template<class ContainerAllocator>
struct DataType< ::team_communication::team_comm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "team_communication/team_comm";
  }

  static const char* value(const ::team_communication::team_comm_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::team_communication::team_comm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Vector3 robot_pos\n\
geometry_msgs/Vector3 ball_pos\n\
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

  static const char* value(const ::team_communication::team_comm_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::team_communication::team_comm_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_pos);
      stream.next(m.ball_pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct team_comm_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::team_communication::team_comm_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::team_communication::team_comm_<ContainerAllocator>& v)
  {
    s << indent << "robot_pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_pos);
    s << indent << "ball_pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.ball_pos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEAM_COMMUNICATION_MESSAGE_TEAM_COMM_H
