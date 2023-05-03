// Generated by gencpp from file feedback_msgs/GetFeedbackParamResponse.msg
// DO NOT EDIT!


#ifndef FEEDBACK_MSGS_MESSAGE_GETFEEDBACKPARAMRESPONSE_H
#define FEEDBACK_MSGS_MESSAGE_GETFEEDBACKPARAMRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <feedback_msgs/FeedbackParam.h>

namespace feedback_msgs
{
template <class ContainerAllocator>
struct GetFeedbackParamResponse_
{
  typedef GetFeedbackParamResponse_<ContainerAllocator> Type;

  GetFeedbackParamResponse_()
    : parameters()  {
    }
  GetFeedbackParamResponse_(const ContainerAllocator& _alloc)
    : parameters(_alloc)  {
  (void)_alloc;
    }



   typedef  ::feedback_msgs::FeedbackParam_<ContainerAllocator>  _parameters_type;
  _parameters_type parameters;





  typedef boost::shared_ptr< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetFeedbackParamResponse_

typedef ::feedback_msgs::GetFeedbackParamResponse_<std::allocator<void> > GetFeedbackParamResponse;

typedef boost::shared_ptr< ::feedback_msgs::GetFeedbackParamResponse > GetFeedbackParamResponsePtr;
typedef boost::shared_ptr< ::feedback_msgs::GetFeedbackParamResponse const> GetFeedbackParamResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator1> & lhs, const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator2> & rhs)
{
  return lhs.parameters == rhs.parameters;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator1> & lhs, const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace feedback_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "58c64ecffe4d4e4baef347d4ff31af16";
  }

  static const char* value(const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x58c64ecffe4d4e4bULL;
  static const uint64_t static_value2 = 0xaef347d4ff31af16ULL;
};

template<class ContainerAllocator>
struct DataType< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "feedback_msgs/GetFeedbackParamResponse";
  }

  static const char* value(const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "FeedbackParam    parameters\n"
"\n"
"\n"
"================================================================================\n"
"MSG: feedback_msgs/FeedbackParam\n"
"float32 Body_Height\n"
"float32 Body_Tilt\n"
"float32 Leg_X\n"
"float32 Leg_Y\n"
"float32 Leg_Z\n"
"\n"
"float32 Leg_R_Z\n"
"float32 Leg_L_Z\n"
"float32 R_Roll\n"
"float32 L_Roll\n"
"\n"
"float32 Setpoint_Pitch\n"
"float32 Setpoint_Roll\n"
"\n"
"float32 Gain_Angle_Pitch\n"
"float32 Gain_Angle_Roll\n"
"\n"
"float32 Gain_Velocity_Pitch\n"
"float32 Gain_Velocity_Roll\n"
"\n"
"float32 Gain_Integral_Pitch\n"
"float32 Gain_Integral_Roll\n"
;
  }

  static const char* value(const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.parameters);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetFeedbackParamResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::feedback_msgs::GetFeedbackParamResponse_<ContainerAllocator>& v)
  {
    s << indent << "parameters: ";
    s << std::endl;
    Printer< ::feedback_msgs::FeedbackParam_<ContainerAllocator> >::stream(s, indent + "  ", v.parameters);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FEEDBACK_MSGS_MESSAGE_GETFEEDBACKPARAMRESPONSE_H
