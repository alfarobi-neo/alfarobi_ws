// Generated by gencpp from file kicking_module_msgs/KickingParam.msg
// DO NOT EDIT!


#ifndef KICKING_MODULE_MSGS_MESSAGE_KICKINGPARAM_H
#define KICKING_MODULE_MSGS_MESSAGE_KICKINGPARAM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kicking_module_msgs
{
template <class ContainerAllocator>
struct KickingParam_
{
  typedef KickingParam_<ContainerAllocator> Type;

  KickingParam_()
    : Torso_X(0.0)
    , Torso_Y(0.0)
    , Torso_Z(0.0)
    , L_Shift_X(0.0)
    , L_Shift_Y(0.0)
    , L_Shift_Z(0.0)
    , R_Shift_X(0.0)
    , R_Shift_Y(0.0)
    , R_Shift_Z(0.0)
    , L_Lift_X(0.0)
    , L_Lift_Y(0.0)
    , L_Lift_Z(0.0)
    , R_Lift_X(0.0)
    , R_Lift_Y(0.0)
    , R_Lift_Z(0.0)
    , L_Swing_X(0.0)
    , L_Swing_Y(0.0)
    , L_Swing_Z(0.0)
    , R_Swing_X(0.0)
    , R_Swing_Y(0.0)
    , R_Swing_Z(0.0)
    , L_Retract_X(0.0)
    , L_Retract_Y(0.0)
    , L_Retract_Z(0.0)
    , R_Retract_X(0.0)
    , R_Retract_Y(0.0)
    , R_Retract_Z(0.0)
    , Torso_Pitch(0.0)
    , Shift_Roll(0.0)
    , Lift_Roll(0.0)
    , Lift_Pitch(0.0)
    , Swing_Roll(0.0)
    , Swing_Pitch(0.0)
    , Retract_Roll(0.0)
    , Retract_Pitch(0.0)
    , SHIFT_TIME(0.0)
    , LIFT_TIME(0.0)
    , SWING_TIME(0.0)
    , RETRACT_TIME(0.0)
    , LANDING_TIME(0.0)
    , FINISHED_TIME(0.0)  {
    }
  KickingParam_(const ContainerAllocator& _alloc)
    : Torso_X(0.0)
    , Torso_Y(0.0)
    , Torso_Z(0.0)
    , L_Shift_X(0.0)
    , L_Shift_Y(0.0)
    , L_Shift_Z(0.0)
    , R_Shift_X(0.0)
    , R_Shift_Y(0.0)
    , R_Shift_Z(0.0)
    , L_Lift_X(0.0)
    , L_Lift_Y(0.0)
    , L_Lift_Z(0.0)
    , R_Lift_X(0.0)
    , R_Lift_Y(0.0)
    , R_Lift_Z(0.0)
    , L_Swing_X(0.0)
    , L_Swing_Y(0.0)
    , L_Swing_Z(0.0)
    , R_Swing_X(0.0)
    , R_Swing_Y(0.0)
    , R_Swing_Z(0.0)
    , L_Retract_X(0.0)
    , L_Retract_Y(0.0)
    , L_Retract_Z(0.0)
    , R_Retract_X(0.0)
    , R_Retract_Y(0.0)
    , R_Retract_Z(0.0)
    , Torso_Pitch(0.0)
    , Shift_Roll(0.0)
    , Lift_Roll(0.0)
    , Lift_Pitch(0.0)
    , Swing_Roll(0.0)
    , Swing_Pitch(0.0)
    , Retract_Roll(0.0)
    , Retract_Pitch(0.0)
    , SHIFT_TIME(0.0)
    , LIFT_TIME(0.0)
    , SWING_TIME(0.0)
    , RETRACT_TIME(0.0)
    , LANDING_TIME(0.0)
    , FINISHED_TIME(0.0)  {
  (void)_alloc;
    }



   typedef float _Torso_X_type;
  _Torso_X_type Torso_X;

   typedef float _Torso_Y_type;
  _Torso_Y_type Torso_Y;

   typedef float _Torso_Z_type;
  _Torso_Z_type Torso_Z;

   typedef float _L_Shift_X_type;
  _L_Shift_X_type L_Shift_X;

   typedef float _L_Shift_Y_type;
  _L_Shift_Y_type L_Shift_Y;

   typedef float _L_Shift_Z_type;
  _L_Shift_Z_type L_Shift_Z;

   typedef float _R_Shift_X_type;
  _R_Shift_X_type R_Shift_X;

   typedef float _R_Shift_Y_type;
  _R_Shift_Y_type R_Shift_Y;

   typedef float _R_Shift_Z_type;
  _R_Shift_Z_type R_Shift_Z;

   typedef float _L_Lift_X_type;
  _L_Lift_X_type L_Lift_X;

   typedef float _L_Lift_Y_type;
  _L_Lift_Y_type L_Lift_Y;

   typedef float _L_Lift_Z_type;
  _L_Lift_Z_type L_Lift_Z;

   typedef float _R_Lift_X_type;
  _R_Lift_X_type R_Lift_X;

   typedef float _R_Lift_Y_type;
  _R_Lift_Y_type R_Lift_Y;

   typedef float _R_Lift_Z_type;
  _R_Lift_Z_type R_Lift_Z;

   typedef float _L_Swing_X_type;
  _L_Swing_X_type L_Swing_X;

   typedef float _L_Swing_Y_type;
  _L_Swing_Y_type L_Swing_Y;

   typedef float _L_Swing_Z_type;
  _L_Swing_Z_type L_Swing_Z;

   typedef float _R_Swing_X_type;
  _R_Swing_X_type R_Swing_X;

   typedef float _R_Swing_Y_type;
  _R_Swing_Y_type R_Swing_Y;

   typedef float _R_Swing_Z_type;
  _R_Swing_Z_type R_Swing_Z;

   typedef float _L_Retract_X_type;
  _L_Retract_X_type L_Retract_X;

   typedef float _L_Retract_Y_type;
  _L_Retract_Y_type L_Retract_Y;

   typedef float _L_Retract_Z_type;
  _L_Retract_Z_type L_Retract_Z;

   typedef float _R_Retract_X_type;
  _R_Retract_X_type R_Retract_X;

   typedef float _R_Retract_Y_type;
  _R_Retract_Y_type R_Retract_Y;

   typedef float _R_Retract_Z_type;
  _R_Retract_Z_type R_Retract_Z;

   typedef float _Torso_Pitch_type;
  _Torso_Pitch_type Torso_Pitch;

   typedef float _Shift_Roll_type;
  _Shift_Roll_type Shift_Roll;

   typedef float _Lift_Roll_type;
  _Lift_Roll_type Lift_Roll;

   typedef float _Lift_Pitch_type;
  _Lift_Pitch_type Lift_Pitch;

   typedef float _Swing_Roll_type;
  _Swing_Roll_type Swing_Roll;

   typedef float _Swing_Pitch_type;
  _Swing_Pitch_type Swing_Pitch;

   typedef float _Retract_Roll_type;
  _Retract_Roll_type Retract_Roll;

   typedef float _Retract_Pitch_type;
  _Retract_Pitch_type Retract_Pitch;

   typedef float _SHIFT_TIME_type;
  _SHIFT_TIME_type SHIFT_TIME;

   typedef float _LIFT_TIME_type;
  _LIFT_TIME_type LIFT_TIME;

   typedef float _SWING_TIME_type;
  _SWING_TIME_type SWING_TIME;

   typedef float _RETRACT_TIME_type;
  _RETRACT_TIME_type RETRACT_TIME;

   typedef float _LANDING_TIME_type;
  _LANDING_TIME_type LANDING_TIME;

   typedef float _FINISHED_TIME_type;
  _FINISHED_TIME_type FINISHED_TIME;





  typedef boost::shared_ptr< ::kicking_module_msgs::KickingParam_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kicking_module_msgs::KickingParam_<ContainerAllocator> const> ConstPtr;

}; // struct KickingParam_

typedef ::kicking_module_msgs::KickingParam_<std::allocator<void> > KickingParam;

typedef boost::shared_ptr< ::kicking_module_msgs::KickingParam > KickingParamPtr;
typedef boost::shared_ptr< ::kicking_module_msgs::KickingParam const> KickingParamConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kicking_module_msgs::KickingParam_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kicking_module_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'kicking_module_msgs': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/kicking_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kicking_module_msgs::KickingParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kicking_module_msgs::KickingParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kicking_module_msgs::KickingParam_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1544ae05e02ea9fbdc689d7fea677df9";
  }

  static const char* value(const ::kicking_module_msgs::KickingParam_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1544ae05e02ea9fbULL;
  static const uint64_t static_value2 = 0xdc689d7fea677df9ULL;
};

template<class ContainerAllocator>
struct DataType< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kicking_module_msgs/KickingParam";
  }

  static const char* value(const ::kicking_module_msgs::KickingParam_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 Torso_X\n\
float32 Torso_Y\n\
float32 Torso_Z\n\
float32 L_Shift_X\n\
float32 L_Shift_Y\n\
float32 L_Shift_Z\n\
float32 R_Shift_X\n\
float32 R_Shift_Y\n\
float32 R_Shift_Z\n\
float32 L_Lift_X\n\
float32 L_Lift_Y\n\
float32 L_Lift_Z\n\
float32 R_Lift_X\n\
float32 R_Lift_Y\n\
float32 R_Lift_Z\n\
float32 L_Swing_X\n\
float32 L_Swing_Y\n\
float32 L_Swing_Z\n\
float32 R_Swing_X\n\
float32 R_Swing_Y\n\
float32 R_Swing_Z\n\
float32 L_Retract_X\n\
float32 L_Retract_Y\n\
float32 L_Retract_Z\n\
float32 R_Retract_X\n\
float32 R_Retract_Y\n\
float32 R_Retract_Z\n\
float32 Torso_Pitch\n\
float32 Shift_Roll\n\
float32 Lift_Roll\n\
float32 Lift_Pitch\n\
float32 Swing_Roll\n\
float32 Swing_Pitch\n\
float32 Retract_Roll\n\
float32 Retract_Pitch\n\
float32 SHIFT_TIME\n\
float32 LIFT_TIME\n\
float32 SWING_TIME\n\
float32 RETRACT_TIME\n\
float32 LANDING_TIME\n\
float32 FINISHED_TIME\n\
";
  }

  static const char* value(const ::kicking_module_msgs::KickingParam_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Torso_X);
      stream.next(m.Torso_Y);
      stream.next(m.Torso_Z);
      stream.next(m.L_Shift_X);
      stream.next(m.L_Shift_Y);
      stream.next(m.L_Shift_Z);
      stream.next(m.R_Shift_X);
      stream.next(m.R_Shift_Y);
      stream.next(m.R_Shift_Z);
      stream.next(m.L_Lift_X);
      stream.next(m.L_Lift_Y);
      stream.next(m.L_Lift_Z);
      stream.next(m.R_Lift_X);
      stream.next(m.R_Lift_Y);
      stream.next(m.R_Lift_Z);
      stream.next(m.L_Swing_X);
      stream.next(m.L_Swing_Y);
      stream.next(m.L_Swing_Z);
      stream.next(m.R_Swing_X);
      stream.next(m.R_Swing_Y);
      stream.next(m.R_Swing_Z);
      stream.next(m.L_Retract_X);
      stream.next(m.L_Retract_Y);
      stream.next(m.L_Retract_Z);
      stream.next(m.R_Retract_X);
      stream.next(m.R_Retract_Y);
      stream.next(m.R_Retract_Z);
      stream.next(m.Torso_Pitch);
      stream.next(m.Shift_Roll);
      stream.next(m.Lift_Roll);
      stream.next(m.Lift_Pitch);
      stream.next(m.Swing_Roll);
      stream.next(m.Swing_Pitch);
      stream.next(m.Retract_Roll);
      stream.next(m.Retract_Pitch);
      stream.next(m.SHIFT_TIME);
      stream.next(m.LIFT_TIME);
      stream.next(m.SWING_TIME);
      stream.next(m.RETRACT_TIME);
      stream.next(m.LANDING_TIME);
      stream.next(m.FINISHED_TIME);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct KickingParam_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kicking_module_msgs::KickingParam_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kicking_module_msgs::KickingParam_<ContainerAllocator>& v)
  {
    s << indent << "Torso_X: ";
    Printer<float>::stream(s, indent + "  ", v.Torso_X);
    s << indent << "Torso_Y: ";
    Printer<float>::stream(s, indent + "  ", v.Torso_Y);
    s << indent << "Torso_Z: ";
    Printer<float>::stream(s, indent + "  ", v.Torso_Z);
    s << indent << "L_Shift_X: ";
    Printer<float>::stream(s, indent + "  ", v.L_Shift_X);
    s << indent << "L_Shift_Y: ";
    Printer<float>::stream(s, indent + "  ", v.L_Shift_Y);
    s << indent << "L_Shift_Z: ";
    Printer<float>::stream(s, indent + "  ", v.L_Shift_Z);
    s << indent << "R_Shift_X: ";
    Printer<float>::stream(s, indent + "  ", v.R_Shift_X);
    s << indent << "R_Shift_Y: ";
    Printer<float>::stream(s, indent + "  ", v.R_Shift_Y);
    s << indent << "R_Shift_Z: ";
    Printer<float>::stream(s, indent + "  ", v.R_Shift_Z);
    s << indent << "L_Lift_X: ";
    Printer<float>::stream(s, indent + "  ", v.L_Lift_X);
    s << indent << "L_Lift_Y: ";
    Printer<float>::stream(s, indent + "  ", v.L_Lift_Y);
    s << indent << "L_Lift_Z: ";
    Printer<float>::stream(s, indent + "  ", v.L_Lift_Z);
    s << indent << "R_Lift_X: ";
    Printer<float>::stream(s, indent + "  ", v.R_Lift_X);
    s << indent << "R_Lift_Y: ";
    Printer<float>::stream(s, indent + "  ", v.R_Lift_Y);
    s << indent << "R_Lift_Z: ";
    Printer<float>::stream(s, indent + "  ", v.R_Lift_Z);
    s << indent << "L_Swing_X: ";
    Printer<float>::stream(s, indent + "  ", v.L_Swing_X);
    s << indent << "L_Swing_Y: ";
    Printer<float>::stream(s, indent + "  ", v.L_Swing_Y);
    s << indent << "L_Swing_Z: ";
    Printer<float>::stream(s, indent + "  ", v.L_Swing_Z);
    s << indent << "R_Swing_X: ";
    Printer<float>::stream(s, indent + "  ", v.R_Swing_X);
    s << indent << "R_Swing_Y: ";
    Printer<float>::stream(s, indent + "  ", v.R_Swing_Y);
    s << indent << "R_Swing_Z: ";
    Printer<float>::stream(s, indent + "  ", v.R_Swing_Z);
    s << indent << "L_Retract_X: ";
    Printer<float>::stream(s, indent + "  ", v.L_Retract_X);
    s << indent << "L_Retract_Y: ";
    Printer<float>::stream(s, indent + "  ", v.L_Retract_Y);
    s << indent << "L_Retract_Z: ";
    Printer<float>::stream(s, indent + "  ", v.L_Retract_Z);
    s << indent << "R_Retract_X: ";
    Printer<float>::stream(s, indent + "  ", v.R_Retract_X);
    s << indent << "R_Retract_Y: ";
    Printer<float>::stream(s, indent + "  ", v.R_Retract_Y);
    s << indent << "R_Retract_Z: ";
    Printer<float>::stream(s, indent + "  ", v.R_Retract_Z);
    s << indent << "Torso_Pitch: ";
    Printer<float>::stream(s, indent + "  ", v.Torso_Pitch);
    s << indent << "Shift_Roll: ";
    Printer<float>::stream(s, indent + "  ", v.Shift_Roll);
    s << indent << "Lift_Roll: ";
    Printer<float>::stream(s, indent + "  ", v.Lift_Roll);
    s << indent << "Lift_Pitch: ";
    Printer<float>::stream(s, indent + "  ", v.Lift_Pitch);
    s << indent << "Swing_Roll: ";
    Printer<float>::stream(s, indent + "  ", v.Swing_Roll);
    s << indent << "Swing_Pitch: ";
    Printer<float>::stream(s, indent + "  ", v.Swing_Pitch);
    s << indent << "Retract_Roll: ";
    Printer<float>::stream(s, indent + "  ", v.Retract_Roll);
    s << indent << "Retract_Pitch: ";
    Printer<float>::stream(s, indent + "  ", v.Retract_Pitch);
    s << indent << "SHIFT_TIME: ";
    Printer<float>::stream(s, indent + "  ", v.SHIFT_TIME);
    s << indent << "LIFT_TIME: ";
    Printer<float>::stream(s, indent + "  ", v.LIFT_TIME);
    s << indent << "SWING_TIME: ";
    Printer<float>::stream(s, indent + "  ", v.SWING_TIME);
    s << indent << "RETRACT_TIME: ";
    Printer<float>::stream(s, indent + "  ", v.RETRACT_TIME);
    s << indent << "LANDING_TIME: ";
    Printer<float>::stream(s, indent + "  ", v.LANDING_TIME);
    s << indent << "FINISHED_TIME: ";
    Printer<float>::stream(s, indent + "  ", v.FINISHED_TIME);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KICKING_MODULE_MSGS_MESSAGE_KICKINGPARAM_H