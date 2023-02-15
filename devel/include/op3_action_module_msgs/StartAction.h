// Generated by gencpp from file op3_action_module_msgs/StartAction.msg
// DO NOT EDIT!


#ifndef OP3_ACTION_MODULE_MSGS_MESSAGE_STARTACTION_H
#define OP3_ACTION_MODULE_MSGS_MESSAGE_STARTACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace op3_action_module_msgs
{
template <class ContainerAllocator>
struct StartAction_
{
  typedef StartAction_<ContainerAllocator> Type;

  StartAction_()
    : page_num(0)
    , joint_name_array()  {
    }
  StartAction_(const ContainerAllocator& _alloc)
    : page_num(0)
    , joint_name_array(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _page_num_type;
  _page_num_type page_num;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _joint_name_array_type;
  _joint_name_array_type joint_name_array;





  typedef boost::shared_ptr< ::op3_action_module_msgs::StartAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::op3_action_module_msgs::StartAction_<ContainerAllocator> const> ConstPtr;

}; // struct StartAction_

typedef ::op3_action_module_msgs::StartAction_<std::allocator<void> > StartAction;

typedef boost::shared_ptr< ::op3_action_module_msgs::StartAction > StartActionPtr;
typedef boost::shared_ptr< ::op3_action_module_msgs::StartAction const> StartActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::op3_action_module_msgs::StartAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace op3_action_module_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'op3_action_module_msgs': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/op3_action_module_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::op3_action_module_msgs::StartAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::op3_action_module_msgs::StartAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::op3_action_module_msgs::StartAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "089f02f04489a5eddf9886b2ae161539";
  }

  static const char* value(const ::op3_action_module_msgs::StartAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x089f02f04489a5edULL;
  static const uint64_t static_value2 = 0xdf9886b2ae161539ULL;
};

template<class ContainerAllocator>
struct DataType< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "op3_action_module_msgs/StartAction";
  }

  static const char* value(const ::op3_action_module_msgs::StartAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32     page_num\n\
string[]  joint_name_array\n\
";
  }

  static const char* value(const ::op3_action_module_msgs::StartAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.page_num);
      stream.next(m.joint_name_array);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::op3_action_module_msgs::StartAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::op3_action_module_msgs::StartAction_<ContainerAllocator>& v)
  {
    s << indent << "page_num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.page_num);
    s << indent << "joint_name_array[]" << std::endl;
    for (size_t i = 0; i < v.joint_name_array.size(); ++i)
    {
      s << indent << "  joint_name_array[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_name_array[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OP3_ACTION_MODULE_MSGS_MESSAGE_STARTACTION_H
