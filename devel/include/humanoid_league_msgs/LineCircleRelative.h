// Generated by gencpp from file humanoid_league_msgs/LineCircleRelative.msg
// DO NOT EDIT!


#ifndef HUMANOID_LEAGUE_MSGS_MESSAGE_LINECIRCLERELATIVE_H
#define HUMANOID_LEAGUE_MSGS_MESSAGE_LINECIRCLERELATIVE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace humanoid_league_msgs
{
template <class ContainerAllocator>
struct LineCircleRelative_
{
  typedef LineCircleRelative_<ContainerAllocator> Type;

  LineCircleRelative_()
    : left()
    , middle()
    , right()  {
    }
  LineCircleRelative_(const ContainerAllocator& _alloc)
    : left(_alloc)
    , middle(_alloc)
    , right(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _left_type;
  _left_type left;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _middle_type;
  _middle_type middle;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _right_type;
  _right_type right;





  typedef boost::shared_ptr< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> const> ConstPtr;

}; // struct LineCircleRelative_

typedef ::humanoid_league_msgs::LineCircleRelative_<std::allocator<void> > LineCircleRelative;

typedef boost::shared_ptr< ::humanoid_league_msgs::LineCircleRelative > LineCircleRelativePtr;
typedef boost::shared_ptr< ::humanoid_league_msgs::LineCircleRelative const> LineCircleRelativeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator1> & lhs, const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator2> & rhs)
{
  return lhs.left == rhs.left &&
    lhs.middle == rhs.middle &&
    lhs.right == rhs.right;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator1> & lhs, const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace humanoid_league_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a308f4836d6e1ddc7fdb4aef3d3e8a62";
  }

  static const char* value(const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa308f4836d6e1ddcULL;
  static const uint64_t static_value2 = 0x7fdb4aef3d3e8a62ULL;
};

template<class ContainerAllocator>
struct DataType< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "humanoid_league_msgs/LineCircleRelative";
  }

  static const char* value(const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Defines a line circle in relative space, i.e. the center circle\n"
"\n"
"# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius\n"
"geometry_msgs/Point left\n"
"geometry_msgs/Point middle\n"
"geometry_msgs/Point right\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left);
      stream.next(m.middle);
      stream.next(m.right);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LineCircleRelative_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::humanoid_league_msgs::LineCircleRelative_<ContainerAllocator>& v)
  {
    s << indent << "left: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.left);
    s << indent << "middle: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.middle);
    s << indent << "right: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.right);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUMANOID_LEAGUE_MSGS_MESSAGE_LINECIRCLERELATIVE_H
