// Generated by gencpp from file op3_camera_setting_tool/V4lParameters.msg
// DO NOT EDIT!


#ifndef OP3_CAMERA_SETTING_TOOL_MESSAGE_V4LPARAMETERS_H
#define OP3_CAMERA_SETTING_TOOL_MESSAGE_V4LPARAMETERS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <op3_camera_setting_tool/V4lParameter.h>

namespace op3_camera_setting_tool
{
template <class ContainerAllocator>
struct V4lParameters_
{
  typedef V4lParameters_<ContainerAllocator> Type;

  V4lParameters_()
    : video_parameter()  {
    }
  V4lParameters_(const ContainerAllocator& _alloc)
    : video_parameter(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::op3_camera_setting_tool::V4lParameter_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::op3_camera_setting_tool::V4lParameter_<ContainerAllocator> >::other >  _video_parameter_type;
  _video_parameter_type video_parameter;





  typedef boost::shared_ptr< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> const> ConstPtr;

}; // struct V4lParameters_

typedef ::op3_camera_setting_tool::V4lParameters_<std::allocator<void> > V4lParameters;

typedef boost::shared_ptr< ::op3_camera_setting_tool::V4lParameters > V4lParametersPtr;
typedef boost::shared_ptr< ::op3_camera_setting_tool::V4lParameters const> V4lParametersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace op3_camera_setting_tool

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'op3_camera_setting_tool': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "becf7b1c441fba0b43309667fa8477b4";
  }

  static const char* value(const ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbecf7b1c441fba0bULL;
  static const uint64_t static_value2 = 0x43309667fa8477b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "op3_camera_setting_tool/V4lParameters";
  }

  static const char* value(const ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "V4lParameter[]    video_parameter\n\
================================================================================\n\
MSG: op3_camera_setting_tool/V4lParameter\n\
string  name\n\
int32   value\n\
";
  }

  static const char* value(const ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.video_parameter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct V4lParameters_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::op3_camera_setting_tool::V4lParameters_<ContainerAllocator>& v)
  {
    s << indent << "video_parameter[]" << std::endl;
    for (size_t i = 0; i < v.video_parameter.size(); ++i)
    {
      s << indent << "  video_parameter[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::op3_camera_setting_tool::V4lParameter_<ContainerAllocator> >::stream(s, indent + "    ", v.video_parameter[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OP3_CAMERA_SETTING_TOOL_MESSAGE_V4LPARAMETERS_H