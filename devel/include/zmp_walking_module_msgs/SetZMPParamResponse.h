// Generated by gencpp from file zmp_walking_module_msgs/SetZMPParamResponse.msg
// DO NOT EDIT!


#ifndef ZMP_WALKING_MODULE_MSGS_MESSAGE_SETZMPPARAMRESPONSE_H
#define ZMP_WALKING_MODULE_MSGS_MESSAGE_SETZMPPARAMRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace zmp_walking_module_msgs
{
template <class ContainerAllocator>
struct SetZMPParamResponse_
{
  typedef SetZMPParamResponse_<ContainerAllocator> Type;

  SetZMPParamResponse_()
    : result(false)  {
    }
  SetZMPParamResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetZMPParamResponse_

typedef ::zmp_walking_module_msgs::SetZMPParamResponse_<std::allocator<void> > SetZMPParamResponse;

typedef boost::shared_ptr< ::zmp_walking_module_msgs::SetZMPParamResponse > SetZMPParamResponsePtr;
typedef boost::shared_ptr< ::zmp_walking_module_msgs::SetZMPParamResponse const> SetZMPParamResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace zmp_walking_module_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'zmp_walking_module_msgs': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/zmp_walking_module_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zmp_walking_module_msgs/SetZMPParamResponse";
  }

  static const char* value(const ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool            result\n\
\n\
";
  }

  static const char* value(const ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetZMPParamResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zmp_walking_module_msgs::SetZMPParamResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZMP_WALKING_MODULE_MSGS_MESSAGE_SETZMPPARAMRESPONSE_H
