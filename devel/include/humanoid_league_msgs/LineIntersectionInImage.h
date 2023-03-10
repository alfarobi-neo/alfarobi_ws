// Generated by gencpp from file humanoid_league_msgs/LineIntersectionInImage.msg
// DO NOT EDIT!


#ifndef HUMANOID_LEAGUE_MSGS_MESSAGE_LINEINTERSECTIONINIMAGE_H
#define HUMANOID_LEAGUE_MSGS_MESSAGE_LINEINTERSECTIONINIMAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <humanoid_league_msgs/LineSegmentInImage.h>

namespace humanoid_league_msgs
{
template <class ContainerAllocator>
struct LineIntersectionInImage_
{
  typedef LineIntersectionInImage_<ContainerAllocator> Type;

  LineIntersectionInImage_()
    : type(0)
    , segments()
    , confidence(0.0)  {
    }
  LineIntersectionInImage_(const ContainerAllocator& _alloc)
    : type(0)
    , segments(_alloc)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;

   typedef  ::humanoid_league_msgs::LineSegmentInImage_<ContainerAllocator>  _segments_type;
  _segments_type segments;

   typedef float _confidence_type;
  _confidence_type confidence;



  enum {
    UNDEFINED = 0u,
    L = 1u,
    T = 2u,
    X = 3u,
  };


  typedef boost::shared_ptr< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> const> ConstPtr;

}; // struct LineIntersectionInImage_

typedef ::humanoid_league_msgs::LineIntersectionInImage_<std::allocator<void> > LineIntersectionInImage;

typedef boost::shared_ptr< ::humanoid_league_msgs::LineIntersectionInImage > LineIntersectionInImagePtr;
typedef boost::shared_ptr< ::humanoid_league_msgs::LineIntersectionInImage const> LineIntersectionInImageConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "980e372a707e53581170ae6e03b7c340";
  }

  static const char* value(const ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x980e372a707e5358ULL;
  static const uint64_t static_value2 = 0x1170ae6e03b7c340ULL;
};

template<class ContainerAllocator>
struct DataType< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "humanoid_league_msgs/LineIntersectionInImage";
  }

  static const char* value(const ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A line intersection feature in the image\n\
\n\
# The type defines which kind of intersection is present\n\
uint8 UNDEFINED=0\n\
uint8 L=1\n\
uint8 T=2\n\
uint8 X=3\n\
uint8 type\n\
\n\
# The line segments related to this crossing\n\
humanoid_league_msgs/LineSegmentInImage segments\n\
\n\
# A certainty rating between 0 and 1, where 1 is the surest.\n\
float32 confidence\n\
\n\
================================================================================\n\
MSG: humanoid_league_msgs/LineSegmentInImage\n\
# A normal line segment in the image\n\
\n\
# Two points defining the vector of the line. The center is orthogonally in the middle of the line\n\
geometry_msgs/Point start\n\
geometry_msgs/Point end\n\
\n\
# Orthogonal to the significant vector\n\
float32 start_width\n\
float32 end_with\n\
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

  static const char* value(const ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.segments);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LineIntersectionInImage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::humanoid_league_msgs::LineIntersectionInImage_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "segments: ";
    s << std::endl;
    Printer< ::humanoid_league_msgs::LineSegmentInImage_<ContainerAllocator> >::stream(s, indent + "  ", v.segments);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUMANOID_LEAGUE_MSGS_MESSAGE_LINEINTERSECTIONINIMAGE_H
