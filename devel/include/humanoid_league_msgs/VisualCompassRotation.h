// Generated by gencpp from file humanoid_league_msgs/VisualCompassRotation.msg
// DO NOT EDIT!


#ifndef HUMANOID_LEAGUE_MSGS_MESSAGE_VISUALCOMPASSROTATION_H
#define HUMANOID_LEAGUE_MSGS_MESSAGE_VISUALCOMPASSROTATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace humanoid_league_msgs
{
template <class ContainerAllocator>
struct VisualCompassRotation_
{
  typedef VisualCompassRotation_<ContainerAllocator> Type;

  VisualCompassRotation_()
    : orientation(0.0)
    , confidence(0.0)  {
    }
  VisualCompassRotation_(const ContainerAllocator& _alloc)
    : orientation(0.0)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef float _orientation_type;
  _orientation_type orientation;

   typedef float _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> const> ConstPtr;

}; // struct VisualCompassRotation_

typedef ::humanoid_league_msgs::VisualCompassRotation_<std::allocator<void> > VisualCompassRotation;

typedef boost::shared_ptr< ::humanoid_league_msgs::VisualCompassRotation > VisualCompassRotationPtr;
typedef boost::shared_ptr< ::humanoid_league_msgs::VisualCompassRotation const> VisualCompassRotationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "44fdc5544cc3e3cee8f82caccfdf780d";
  }

  static const char* value(const ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x44fdc5544cc3e3ceULL;
  static const uint64_t static_value2 = 0xe8f82caccfdf780dULL;
};

template<class ContainerAllocator>
struct DataType< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "humanoid_league_msgs/VisualCompassRotation";
  }

  static const char* value(const ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message is used to specify the orientation of the visual compass in relation to a RoboCup Soccer field\n\
\n\
# 0 points to the opponent goal line, 3.14 to the own goal line\n\
float32 orientation\n\
\n\
# A certainty rating between 0 and 1, where 1 is the surest.\n\
float32 confidence\n\
";
  }

  static const char* value(const ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.orientation);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VisualCompassRotation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::humanoid_league_msgs::VisualCompassRotation_<ContainerAllocator>& v)
  {
    s << indent << "orientation: ";
    Printer<float>::stream(s, indent + "  ", v.orientation);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUMANOID_LEAGUE_MSGS_MESSAGE_VISUALCOMPASSROTATION_H
