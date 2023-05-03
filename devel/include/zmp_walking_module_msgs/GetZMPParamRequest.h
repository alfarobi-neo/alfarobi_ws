// Generated by gencpp from file zmp_walking_module_msgs/GetZMPParamRequest.msg
// DO NOT EDIT!


#ifndef ZMP_WALKING_MODULE_MSGS_MESSAGE_GETZMPPARAMREQUEST_H
#define ZMP_WALKING_MODULE_MSGS_MESSAGE_GETZMPPARAMREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace zmp_walking_module_msgs
{
template <class ContainerAllocator>
struct GetZMPParamRequest_
{
  typedef GetZMPParamRequest_<ContainerAllocator> Type;

  GetZMPParamRequest_()
    : get_param(false)  {
    }
  GetZMPParamRequest_(const ContainerAllocator& _alloc)
    : get_param(false)  {
  (void)_alloc;
    }



   typedef uint8_t _get_param_type;
  _get_param_type get_param;





  typedef boost::shared_ptr< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetZMPParamRequest_

typedef ::zmp_walking_module_msgs::GetZMPParamRequest_<std::allocator<void> > GetZMPParamRequest;

typedef boost::shared_ptr< ::zmp_walking_module_msgs::GetZMPParamRequest > GetZMPParamRequestPtr;
typedef boost::shared_ptr< ::zmp_walking_module_msgs::GetZMPParamRequest const> GetZMPParamRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator1> & lhs, const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator2> & rhs)
{
  return lhs.get_param == rhs.get_param;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator1> & lhs, const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zmp_walking_module_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d964a0520d7b14bf821ec75afc464385";
  }

  static const char* value(const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd964a0520d7b14bfULL;
  static const uint64_t static_value2 = 0x821ec75afc464385ULL;
};

template<class ContainerAllocator>
struct DataType< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zmp_walking_module_msgs/GetZMPParamRequest";
  }

  static const char* value(const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool            get_param\n"
;
  }

  static const char* value(const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.get_param);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetZMPParamRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zmp_walking_module_msgs::GetZMPParamRequest_<ContainerAllocator>& v)
  {
    s << indent << "get_param: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.get_param);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZMP_WALKING_MODULE_MSGS_MESSAGE_GETZMPPARAMREQUEST_H
