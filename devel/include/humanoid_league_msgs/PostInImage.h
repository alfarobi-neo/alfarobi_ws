// Generated by gencpp from file humanoid_league_msgs/PostInImage.msg
// DO NOT EDIT!


#ifndef HUMANOID_LEAGUE_MSGS_MESSAGE_POSTINIMAGE_H
#define HUMANOID_LEAGUE_MSGS_MESSAGE_POSTINIMAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace humanoid_league_msgs
{
template <class ContainerAllocator>
struct PostInImage_
{
  typedef PostInImage_<ContainerAllocator> Type;

  PostInImage_()
    : foot_point()
    , top_point()
    , width(0.0)
    , confidence(0.0)  {
    }
  PostInImage_(const ContainerAllocator& _alloc)
    : foot_point(_alloc)
    , top_point(_alloc)
    , width(0.0)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _foot_point_type;
  _foot_point_type foot_point;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _top_point_type;
  _top_point_type top_point;

   typedef float _width_type;
  _width_type width;

   typedef float _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> const> ConstPtr;

}; // struct PostInImage_

typedef ::humanoid_league_msgs::PostInImage_<std::allocator<void> > PostInImage;

typedef boost::shared_ptr< ::humanoid_league_msgs::PostInImage > PostInImagePtr;
typedef boost::shared_ptr< ::humanoid_league_msgs::PostInImage const> PostInImageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::humanoid_league_msgs::PostInImage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "69845e64be888b8b5f14fec4a8bcc64e";
  }

  static const char* value(const ::humanoid_league_msgs::PostInImage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x69845e64be888b8bULL;
  static const uint64_t static_value2 = 0x5f14fec4a8bcc64eULL;
};

template<class ContainerAllocator>
struct DataType< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "humanoid_league_msgs/PostInImage";
  }

  static const char* value(const ::humanoid_league_msgs::PostInImage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A (possible) goal post in the image. It is defined by two end points and a width.\n\
\n\
# Two points defining the significant axis of the post\n\
geometry_msgs/Point foot_point\n\
geometry_msgs/Point top_point\n\
# Orthogonal to significant vector (in pixel)\n\
float32 width\n\
\n\
# A certainty rating between 0 and 1, where 1 is the surest.\n\
float32 confidence\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::humanoid_league_msgs::PostInImage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.foot_point);
      stream.next(m.top_point);
      stream.next(m.width);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PostInImage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::humanoid_league_msgs::PostInImage_<ContainerAllocator>& v)
  {
    s << indent << "foot_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.foot_point);
    s << indent << "top_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.top_point);
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUMANOID_LEAGUE_MSGS_MESSAGE_POSTINIMAGE_H
