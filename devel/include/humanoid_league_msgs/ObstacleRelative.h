// Generated by gencpp from file humanoid_league_msgs/ObstacleRelative.msg
// DO NOT EDIT!


#ifndef HUMANOID_LEAGUE_MSGS_MESSAGE_OBSTACLERELATIVE_H
#define HUMANOID_LEAGUE_MSGS_MESSAGE_OBSTACLERELATIVE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace humanoid_league_msgs
{
template <class ContainerAllocator>
struct ObstacleRelative_
{
  typedef ObstacleRelative_<ContainerAllocator> Type;

  ObstacleRelative_()
    : color(0)
    , playerNumber(0)
    , position()
    , width(0.0)
    , height(0.0)
    , confidence(0.0)  {
    }
  ObstacleRelative_(const ContainerAllocator& _alloc)
    : color(0)
    , playerNumber(0)
    , position(_alloc)
    , width(0.0)
    , height(0.0)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _color_type;
  _color_type color;

   typedef uint8_t _playerNumber_type;
  _playerNumber_type playerNumber;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef float _width_type;
  _width_type width;

   typedef float _height_type;
  _height_type height;

   typedef float _confidence_type;
  _confidence_type confidence;



  enum {
    UNDEFINED = 0u,
    ROBOT_UNDEFINED = 1u,
    ROBOT_MAGENTA = 2u,
    ROBOT_CYAN = 3u,
    HUMAN = 4u,
    POLE = 5u,
  };


  typedef boost::shared_ptr< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleRelative_

typedef ::humanoid_league_msgs::ObstacleRelative_<std::allocator<void> > ObstacleRelative;

typedef boost::shared_ptr< ::humanoid_league_msgs::ObstacleRelative > ObstacleRelativePtr;
typedef boost::shared_ptr< ::humanoid_league_msgs::ObstacleRelative const> ObstacleRelativeConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace humanoid_league_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'humanoid_league_msgs': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Communication/humanoid_league_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "96164c833f5cfca473add6b66611366a";
  }

  static const char* value(const ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x96164c833f5cfca4ULL;
  static const uint64_t static_value2 = 0x73add6b66611366aULL;
};

template<class ContainerAllocator>
struct DataType< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "humanoid_league_msgs/ObstacleRelative";
  }

  static const char* value(const ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# An obstacle relative to the robot\n\
\n\
# Main color of the obstacle, to differentiate between robots and other things like human legs\n\
# Something we cant classify\n\
uint8 UNDEFINED = 0\n\
# robot without known color\n\
uint8 ROBOT_UNDEFINED = 1\n\
uint8 ROBOT_MAGENTA = 2\n\
uint8 ROBOT_CYAN = 3\n\
# A human legs, e.g. from the referee\n\
uint8 HUMAN = 4\n\
# Black poles which are normally used for technical challenges\n\
uint8 POLE = 5\n\
uint8 color\n\
\n\
# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known\n\
uint8 playerNumber\n\
\n\
# Position (in meters)\n\
geometry_msgs/Point position\n\
\n\
# Educated guess of the width and height (in meters)\n\
float32 width\n\
float32 height\n\
\n\
# A certainty rating between 0 and 1, where 1 is the surest.\n\
float32 confidence\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.color);
      stream.next(m.playerNumber);
      stream.next(m.position);
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleRelative_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::humanoid_league_msgs::ObstacleRelative_<ContainerAllocator>& v)
  {
    s << indent << "color: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.color);
    s << indent << "playerNumber: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.playerNumber);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<float>::stream(s, indent + "  ", v.height);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUMANOID_LEAGUE_MSGS_MESSAGE_OBSTACLERELATIVE_H
