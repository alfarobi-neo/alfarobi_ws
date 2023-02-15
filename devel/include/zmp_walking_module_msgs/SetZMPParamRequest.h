// Generated by gencpp from file zmp_walking_module_msgs/SetZMPParamRequest.msg
// DO NOT EDIT!


#ifndef ZMP_WALKING_MODULE_MSGS_MESSAGE_SETZMPPARAMREQUEST_H
#define ZMP_WALKING_MODULE_MSGS_MESSAGE_SETZMPPARAMREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <zmp_walking_module_msgs/ZMPWalkingParam.h>

namespace zmp_walking_module_msgs
{
template <class ContainerAllocator>
struct SetZMPParamRequest_
{
  typedef SetZMPParamRequest_<ContainerAllocator> Type;

  SetZMPParamRequest_()
    : parameters()  {
    }
  SetZMPParamRequest_(const ContainerAllocator& _alloc)
    : parameters(_alloc)  {
  (void)_alloc;
    }



   typedef  ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator>  _parameters_type;
  _parameters_type parameters;





  typedef boost::shared_ptr< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetZMPParamRequest_

typedef ::zmp_walking_module_msgs::SetZMPParamRequest_<std::allocator<void> > SetZMPParamRequest;

typedef boost::shared_ptr< ::zmp_walking_module_msgs::SetZMPParamRequest > SetZMPParamRequestPtr;
typedef boost::shared_ptr< ::zmp_walking_module_msgs::SetZMPParamRequest const> SetZMPParamRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "82609c663b0736a4c9a2a59399fba32d";
  }

  static const char* value(const ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x82609c663b0736a4ULL;
  static const uint64_t static_value2 = 0xc9a2a59399fba32dULL;
};

template<class ContainerAllocator>
struct DataType< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zmp_walking_module_msgs/SetZMPParamRequest";
  }

  static const char* value(const ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ZMPWalkingParam    parameters\n\
\n\
================================================================================\n\
MSG: zmp_walking_module_msgs/ZMPWalkingParam\n\
########## ZMP WALKING BIT-BOTS ###########\n\
\n\
bool feedback_\n\
\n\
float32 L_Shift\n\
float32 L_Lift\n\
float32 L_P_Kick\n\
float32 L_P_Cool\n\
\n\
float32 R_Shift\n\
float32 R_Lift\n\
float32 R_P_Kick\n\
float32 R_P_Cool\n\
\n\
float32 Kp\n\
float32 Kd\n\
float32 TH1\n\
float32 TH2\n\
float32 Acc\n\
\n\
float32 KpP\n\
float32 KpR\n\
float32 KdP\n\
float32 KdR\n\
float32 Ki\n\
\n\
float32 zmp_vx\n\
float32 zmp_vy\n\
float32 zmp_vphi\n\
float32 m_zmp_vx\n\
float32 m_zmp_vy\n\
float32 m_zmp_vphi\n\
float32 zmp_vx_man\n\
\n\
bool zmp_useGyro\n\
float32 arm_pitch\n\
float32 arm_roll\n\
float32 arm_elbow\n\
\n\
float32 supp_front\n\
float32 supp_front2\n\
float32 supp_turn\n\
float32 supp_side_x\n\
float32 supp_side_y\n\
float32 supp_x\n\
float32 supp_y\n\
\n\
float32 suppmod_y_init\n\
float32 turncomp_thrs\n\
float32 turn_comp\n\
float32 accel_comp\n\
float32 front_comp\n\
float32 hiproll_comp\n\
float32 tstep\n\
float32 tzmp\n\
float32 velfast_forward\n\
float32 velfast_turn\n\
float32 angkle_supp_factor\n\
\n\
float32 foot_y\n\
float32 foot_x\n\
float32 stand_offset\n\
float32 body_height\n\
float32 step_height\n\
float32 belly_roll\n\
float32 belly_hip\n\
float32 bodytilt\n\
\n\
float32 ankleX_fact\n\
float32 ankleX_deadband\n\
float32 ankleX_maxVal\n\
\n\
float32 ankleY_fact\n\
float32 ankleY_deadband\n\
float32 ankleY_maxVal\n\
\n\
float32 kneeX_fact\n\
float32 kneeX_deadband\n\
float32 kneeX_maxVal\n\
\n\
float32 hipY_fact\n\
float32 hipY_deadband\n\
float32 hipY_maxVal\n\
\n\
float32 armY_fact\n\
float32 armY_deadband\n\
float32 armY_maxVal\n\
\n\
float32 armX_fact\n\
float32 armX_deadband\n\
float32 armX_maxVal\n\
\n\
float32 ballPosX\n\
float32 ballPosY\n\
float32 ballPosZ\n\
\n\
float32 goalPosX\n\
float32 goalPosY\n\
float32 goalPosZ\n\
\n\
float32 power\n\
float32 TRetract\n\
float32 TKick\n\
float32 TRising\n\
float32 TDown\n\
";
  }

  static const char* value(const ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.parameters);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetZMPParamRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zmp_walking_module_msgs::SetZMPParamRequest_<ContainerAllocator>& v)
  {
    s << indent << "parameters: ";
    s << std::endl;
    Printer< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >::stream(s, indent + "  ", v.parameters);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZMP_WALKING_MODULE_MSGS_MESSAGE_SETZMPPARAMREQUEST_H
