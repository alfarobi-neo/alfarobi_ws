// Generated by gencpp from file humanoid_league_msgs/GoalInImage.msg
// DO NOT EDIT!


#ifndef HUMANOID_LEAGUE_MSGS_MESSAGE_GOALINIMAGE_H
#define HUMANOID_LEAGUE_MSGS_MESSAGE_GOALINIMAGE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <humanoid_league_msgs/PostInImage.h>
#include <humanoid_league_msgs/PostInImage.h>
#include <geometry_msgs/Point.h>

namespace humanoid_league_msgs
{
template <class ContainerAllocator>
struct GoalInImage_
{
  typedef GoalInImage_<ContainerAllocator> Type;

  GoalInImage_()
    : header()
    , left_post()
    , right_post()
    , center_direction()
    , confidence(0.0)  {
    }
  GoalInImage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , left_post(_alloc)
    , right_post(_alloc)
    , center_direction(_alloc)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::humanoid_league_msgs::PostInImage_<ContainerAllocator>  _left_post_type;
  _left_post_type left_post;

   typedef  ::humanoid_league_msgs::PostInImage_<ContainerAllocator>  _right_post_type;
  _right_post_type right_post;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _center_direction_type;
  _center_direction_type center_direction;

   typedef float _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> const> ConstPtr;

}; // struct GoalInImage_

typedef ::humanoid_league_msgs::GoalInImage_<std::allocator<void> > GoalInImage;

typedef boost::shared_ptr< ::humanoid_league_msgs::GoalInImage > GoalInImagePtr;
typedef boost::shared_ptr< ::humanoid_league_msgs::GoalInImage const> GoalInImageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator1> & lhs, const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.left_post == rhs.left_post &&
    lhs.right_post == rhs.right_post &&
    lhs.center_direction == rhs.center_direction &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator1> & lhs, const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace humanoid_league_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8496af08ca739a530ae0e0b017a0ba88";
  }

  static const char* value(const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8496af08ca739a53ULL;
  static const uint64_t static_value2 = 0x0ae0e0b017a0ba88ULL;
};

template<class ContainerAllocator>
struct DataType< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "humanoid_league_msgs/GoalInImage";
  }

  static const char* value(const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A goal on the image. Should be extracted from the seen posts and bars\n"
"\n"
"# The header is included to get the time stamp for later use in tf\n"
"std_msgs/Header header\n"
"\n"
"# Left post (or the only seen one)\n"
"humanoid_league_msgs/PostInImage left_post\n"
"# Right post, or null if only one post of the goal is seen\n"
"humanoid_league_msgs/PostInImage right_post\n"
"\n"
"# Vector pointing to the (probable) center of the goal.\n"
"# Should only be used if only one goal post is visible. If both are visible this should be none.\n"
"# This is normally an educated guess, using the goal bar or the position of the post on the image\n"
"# The point can also be outside of the image\n"
"geometry_msgs/Point center_direction\n"
"\n"
"# A certainty rating between 0 and 1, where 1 is the surest.\n"
"# 0 means no goal was found.\n"
"float32 confidence\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: humanoid_league_msgs/PostInImage\n"
"# A (possible) goal post in the image. It is defined by two end points and a width.\n"
"\n"
"# Two points defining the significant axis of the post\n"
"geometry_msgs/Point foot_point\n"
"geometry_msgs/Point top_point\n"
"# Orthogonal to significant vector (in pixel)\n"
"float32 width\n"
"\n"
"# A certainty rating between 0 and 1, where 1 is the surest.\n"
"float32 confidence\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.left_post);
      stream.next(m.right_post);
      stream.next(m.center_direction);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GoalInImage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::humanoid_league_msgs::GoalInImage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::humanoid_league_msgs::GoalInImage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "left_post: ";
    s << std::endl;
    Printer< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >::stream(s, indent + "  ", v.left_post);
    s << indent << "right_post: ";
    s << std::endl;
    Printer< ::humanoid_league_msgs::PostInImage_<ContainerAllocator> >::stream(s, indent + "  ", v.right_post);
    s << indent << "center_direction: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.center_direction);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUMANOID_LEAGUE_MSGS_MESSAGE_GOALINIMAGE_H
