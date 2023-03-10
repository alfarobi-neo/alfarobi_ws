// Generated by gencpp from file team_communication/team_data.msg
// DO NOT EDIT!


#ifndef TEAM_COMMUNICATION_MESSAGE_TEAM_DATA_H
#define TEAM_COMMUNICATION_MESSAGE_TEAM_DATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <team_communication/robot_data.h>

namespace team_communication
{
template <class ContainerAllocator>
struct team_data_
{
  typedef team_data_<ContainerAllocator> Type;

  team_data_()
    : robots_data()  {
    }
  team_data_(const ContainerAllocator& _alloc)
    : robots_data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::team_communication::robot_data_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::team_communication::robot_data_<ContainerAllocator> >::other >  _robots_data_type;
  _robots_data_type robots_data;





  typedef boost::shared_ptr< ::team_communication::team_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::team_communication::team_data_<ContainerAllocator> const> ConstPtr;

}; // struct team_data_

typedef ::team_communication::team_data_<std::allocator<void> > team_data;

typedef boost::shared_ptr< ::team_communication::team_data > team_dataPtr;
typedef boost::shared_ptr< ::team_communication::team_data const> team_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::team_communication::team_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::team_communication::team_data_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace team_communication

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'team_communication': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/team_communication/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::team_communication::team_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::team_communication::team_data_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::team_communication::team_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::team_communication::team_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::team_communication::team_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::team_communication::team_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::team_communication::team_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1735ac3c77a7ac8b0eef367c0b7ec6e5";
  }

  static const char* value(const ::team_communication::team_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1735ac3c77a7ac8bULL;
  static const uint64_t static_value2 = 0x0eef367c0b7ec6e5ULL;
};

template<class ContainerAllocator>
struct DataType< ::team_communication::team_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "team_communication/team_data";
  }

  static const char* value(const ::team_communication::team_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::team_communication::team_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_data[] robots_data\n\
\n\
================================================================================\n\
MSG: team_communication/robot_data\n\
Header header\n\
string robot_name\n\
int8 robot_id\n\
geometry_msgs/Pose2D robot_pos\n\
geometry_msgs/Point ball_local\n\
uint8 robot_status\n\
uint8 ball_status\n\
uint8 is_moving\n\
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
MSG: geometry_msgs/Pose2D\n\
# Deprecated\n\
# Please use the full 3D pose.\n\
\n\
# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n\
\n\
# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n\
\n\
\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::team_communication::team_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::team_communication::team_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robots_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct team_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::team_communication::team_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::team_communication::team_data_<ContainerAllocator>& v)
  {
    s << indent << "robots_data[]" << std::endl;
    for (size_t i = 0; i < v.robots_data.size(); ++i)
    {
      s << indent << "  robots_data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::team_communication::robot_data_<ContainerAllocator> >::stream(s, indent + "    ", v.robots_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEAM_COMMUNICATION_MESSAGE_TEAM_DATA_H
