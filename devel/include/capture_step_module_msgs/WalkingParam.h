// Generated by gencpp from file capture_step_module_msgs/WalkingParam.msg
// DO NOT EDIT!


#ifndef CAPTURE_STEP_MODULE_MSGS_MESSAGE_WALKINGPARAM_H
#define CAPTURE_STEP_MODULE_MSGS_MESSAGE_WALKINGPARAM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace capture_step_module_msgs
{
template <class ContainerAllocator>
struct WalkingParam_
{
  typedef WalkingParam_<ContainerAllocator> Type;

  WalkingParam_()
    : halt_pos_leg_ext(0.0)
    , halt_pos_leg_roll_ext(0.0)
    , halt_pos_leg_pitch_ext(0.0)
    , halt_pos_foot_roll_ext(0.0)
    , halt_pos_foot_pitch_ext(0.0)
    , const_ground_push(0.0)
    , propt_ground_push(0.0)
    , const_step_height(0.0)
    , propt_step_height(0.0)
    , swing_start(0.0)
    , swing_stop(0.0)
    , sagittal_swg_fwd(0.0)
    , sagittal_swg_bwd(0.0)
    , lateral_swg(0.0)
    , lateral_swg_offset(0.0)
    , trng_lateral_swg_offset(0.0)
    , rotational_swg(0.0)
    , rotational_swg_offset(0.0)
    , lateral_hip_swg(0.0)
    , fwd_lean(0.0)
    , bwd_lean(0.0)
    , fwd_trng_lean(0.0)
    , gait_vel_limit(0.0)
    , sagittal_acc(0.0)
    , lateral_acc(0.0)
    , rotational_acc(0.0)
    , const_step_freq(0.0)
    , sagittal_prop_step_freq(0.0)
    , lateral_prop_step_freq(0.0)
    , x_move_amplitude(0.0)
    , y_move_amplitude(0.0)
    , angle_move_amplitude(0.0)
    , halt_position(false)
    , leg_lifting(false)
    , leg_swing(false)
    , lateral_swing(false)
    , leaning(false)  {
    }
  WalkingParam_(const ContainerAllocator& _alloc)
    : halt_pos_leg_ext(0.0)
    , halt_pos_leg_roll_ext(0.0)
    , halt_pos_leg_pitch_ext(0.0)
    , halt_pos_foot_roll_ext(0.0)
    , halt_pos_foot_pitch_ext(0.0)
    , const_ground_push(0.0)
    , propt_ground_push(0.0)
    , const_step_height(0.0)
    , propt_step_height(0.0)
    , swing_start(0.0)
    , swing_stop(0.0)
    , sagittal_swg_fwd(0.0)
    , sagittal_swg_bwd(0.0)
    , lateral_swg(0.0)
    , lateral_swg_offset(0.0)
    , trng_lateral_swg_offset(0.0)
    , rotational_swg(0.0)
    , rotational_swg_offset(0.0)
    , lateral_hip_swg(0.0)
    , fwd_lean(0.0)
    , bwd_lean(0.0)
    , fwd_trng_lean(0.0)
    , gait_vel_limit(0.0)
    , sagittal_acc(0.0)
    , lateral_acc(0.0)
    , rotational_acc(0.0)
    , const_step_freq(0.0)
    , sagittal_prop_step_freq(0.0)
    , lateral_prop_step_freq(0.0)
    , x_move_amplitude(0.0)
    , y_move_amplitude(0.0)
    , angle_move_amplitude(0.0)
    , halt_position(false)
    , leg_lifting(false)
    , leg_swing(false)
    , lateral_swing(false)
    , leaning(false)  {
  (void)_alloc;
    }



   typedef float _halt_pos_leg_ext_type;
  _halt_pos_leg_ext_type halt_pos_leg_ext;

   typedef float _halt_pos_leg_roll_ext_type;
  _halt_pos_leg_roll_ext_type halt_pos_leg_roll_ext;

   typedef float _halt_pos_leg_pitch_ext_type;
  _halt_pos_leg_pitch_ext_type halt_pos_leg_pitch_ext;

   typedef float _halt_pos_foot_roll_ext_type;
  _halt_pos_foot_roll_ext_type halt_pos_foot_roll_ext;

   typedef float _halt_pos_foot_pitch_ext_type;
  _halt_pos_foot_pitch_ext_type halt_pos_foot_pitch_ext;

   typedef float _const_ground_push_type;
  _const_ground_push_type const_ground_push;

   typedef float _propt_ground_push_type;
  _propt_ground_push_type propt_ground_push;

   typedef float _const_step_height_type;
  _const_step_height_type const_step_height;

   typedef float _propt_step_height_type;
  _propt_step_height_type propt_step_height;

   typedef float _swing_start_type;
  _swing_start_type swing_start;

   typedef float _swing_stop_type;
  _swing_stop_type swing_stop;

   typedef float _sagittal_swg_fwd_type;
  _sagittal_swg_fwd_type sagittal_swg_fwd;

   typedef float _sagittal_swg_bwd_type;
  _sagittal_swg_bwd_type sagittal_swg_bwd;

   typedef float _lateral_swg_type;
  _lateral_swg_type lateral_swg;

   typedef float _lateral_swg_offset_type;
  _lateral_swg_offset_type lateral_swg_offset;

   typedef float _trng_lateral_swg_offset_type;
  _trng_lateral_swg_offset_type trng_lateral_swg_offset;

   typedef float _rotational_swg_type;
  _rotational_swg_type rotational_swg;

   typedef float _rotational_swg_offset_type;
  _rotational_swg_offset_type rotational_swg_offset;

   typedef float _lateral_hip_swg_type;
  _lateral_hip_swg_type lateral_hip_swg;

   typedef float _fwd_lean_type;
  _fwd_lean_type fwd_lean;

   typedef float _bwd_lean_type;
  _bwd_lean_type bwd_lean;

   typedef float _fwd_trng_lean_type;
  _fwd_trng_lean_type fwd_trng_lean;

   typedef float _gait_vel_limit_type;
  _gait_vel_limit_type gait_vel_limit;

   typedef float _sagittal_acc_type;
  _sagittal_acc_type sagittal_acc;

   typedef float _lateral_acc_type;
  _lateral_acc_type lateral_acc;

   typedef float _rotational_acc_type;
  _rotational_acc_type rotational_acc;

   typedef float _const_step_freq_type;
  _const_step_freq_type const_step_freq;

   typedef float _sagittal_prop_step_freq_type;
  _sagittal_prop_step_freq_type sagittal_prop_step_freq;

   typedef float _lateral_prop_step_freq_type;
  _lateral_prop_step_freq_type lateral_prop_step_freq;

   typedef float _x_move_amplitude_type;
  _x_move_amplitude_type x_move_amplitude;

   typedef float _y_move_amplitude_type;
  _y_move_amplitude_type y_move_amplitude;

   typedef float _angle_move_amplitude_type;
  _angle_move_amplitude_type angle_move_amplitude;

   typedef uint8_t _halt_position_type;
  _halt_position_type halt_position;

   typedef uint8_t _leg_lifting_type;
  _leg_lifting_type leg_lifting;

   typedef uint8_t _leg_swing_type;
  _leg_swing_type leg_swing;

   typedef uint8_t _lateral_swing_type;
  _lateral_swing_type lateral_swing;

   typedef uint8_t _leaning_type;
  _leaning_type leaning;





  typedef boost::shared_ptr< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> const> ConstPtr;

}; // struct WalkingParam_

typedef ::capture_step_module_msgs::WalkingParam_<std::allocator<void> > WalkingParam;

typedef boost::shared_ptr< ::capture_step_module_msgs::WalkingParam > WalkingParamPtr;
typedef boost::shared_ptr< ::capture_step_module_msgs::WalkingParam const> WalkingParamConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace capture_step_module_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'capture_step_module_msgs': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/capture_step_module_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a551969adc87659403547b3d4bb643f5";
  }

  static const char* value(const ::capture_step_module_msgs::WalkingParam_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa551969adc876594ULL;
  static const uint64_t static_value2 = 0x03547b3d4bb643f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "capture_step_module_msgs/WalkingParam";
  }

  static const char* value(const ::capture_step_module_msgs::WalkingParam_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "####### Halt Position #######\n\
float32 halt_pos_leg_ext\n\
float32 halt_pos_leg_roll_ext\n\
float32 halt_pos_leg_pitch_ext\n\
float32 halt_pos_foot_roll_ext\n\
float32 halt_pos_foot_pitch_ext\n\
\n\
####### Leg Lifting #####\n\
float32 const_ground_push\n\
float32 propt_ground_push\n\
float32 const_step_height\n\
float32 propt_step_height\n\
\n\
########## Leg Swing ########\n\
float32 swing_start\n\
float32 swing_stop\n\
float32 sagittal_swg_fwd\n\
float32 sagittal_swg_bwd\n\
float32 lateral_swg\n\
float32 lateral_swg_offset\n\
float32 trng_lateral_swg_offset\n\
float32 rotational_swg\n\
float32 rotational_swg_offset\n\
\n\
########## Lateral Hip Swing ##########\n\
float32 lateral_hip_swg\n\
\n\
########## Leaning ##########\n\
float32 fwd_lean\n\
float32 bwd_lean\n\
float32 fwd_trng_lean\n\
\n\
########## Step ##########\n\
float32 gait_vel_limit\n\
float32 sagittal_acc\n\
float32 lateral_acc\n\
float32 rotational_acc\n\
float32 const_step_freq\n\
float32 sagittal_prop_step_freq\n\
float32 lateral_prop_step_freq\n\
\n\
########## walking parameter ########\n\
float32 x_move_amplitude\n\
float32 y_move_amplitude\n\
float32 angle_move_amplitude\n\
bool halt_position\n\
bool leg_lifting\n\
bool leg_swing\n\
bool lateral_swing\n\
bool leaning\n\
\n\
";
  }

  static const char* value(const ::capture_step_module_msgs::WalkingParam_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.halt_pos_leg_ext);
      stream.next(m.halt_pos_leg_roll_ext);
      stream.next(m.halt_pos_leg_pitch_ext);
      stream.next(m.halt_pos_foot_roll_ext);
      stream.next(m.halt_pos_foot_pitch_ext);
      stream.next(m.const_ground_push);
      stream.next(m.propt_ground_push);
      stream.next(m.const_step_height);
      stream.next(m.propt_step_height);
      stream.next(m.swing_start);
      stream.next(m.swing_stop);
      stream.next(m.sagittal_swg_fwd);
      stream.next(m.sagittal_swg_bwd);
      stream.next(m.lateral_swg);
      stream.next(m.lateral_swg_offset);
      stream.next(m.trng_lateral_swg_offset);
      stream.next(m.rotational_swg);
      stream.next(m.rotational_swg_offset);
      stream.next(m.lateral_hip_swg);
      stream.next(m.fwd_lean);
      stream.next(m.bwd_lean);
      stream.next(m.fwd_trng_lean);
      stream.next(m.gait_vel_limit);
      stream.next(m.sagittal_acc);
      stream.next(m.lateral_acc);
      stream.next(m.rotational_acc);
      stream.next(m.const_step_freq);
      stream.next(m.sagittal_prop_step_freq);
      stream.next(m.lateral_prop_step_freq);
      stream.next(m.x_move_amplitude);
      stream.next(m.y_move_amplitude);
      stream.next(m.angle_move_amplitude);
      stream.next(m.halt_position);
      stream.next(m.leg_lifting);
      stream.next(m.leg_swing);
      stream.next(m.lateral_swing);
      stream.next(m.leaning);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WalkingParam_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::capture_step_module_msgs::WalkingParam_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::capture_step_module_msgs::WalkingParam_<ContainerAllocator>& v)
  {
    s << indent << "halt_pos_leg_ext: ";
    Printer<float>::stream(s, indent + "  ", v.halt_pos_leg_ext);
    s << indent << "halt_pos_leg_roll_ext: ";
    Printer<float>::stream(s, indent + "  ", v.halt_pos_leg_roll_ext);
    s << indent << "halt_pos_leg_pitch_ext: ";
    Printer<float>::stream(s, indent + "  ", v.halt_pos_leg_pitch_ext);
    s << indent << "halt_pos_foot_roll_ext: ";
    Printer<float>::stream(s, indent + "  ", v.halt_pos_foot_roll_ext);
    s << indent << "halt_pos_foot_pitch_ext: ";
    Printer<float>::stream(s, indent + "  ", v.halt_pos_foot_pitch_ext);
    s << indent << "const_ground_push: ";
    Printer<float>::stream(s, indent + "  ", v.const_ground_push);
    s << indent << "propt_ground_push: ";
    Printer<float>::stream(s, indent + "  ", v.propt_ground_push);
    s << indent << "const_step_height: ";
    Printer<float>::stream(s, indent + "  ", v.const_step_height);
    s << indent << "propt_step_height: ";
    Printer<float>::stream(s, indent + "  ", v.propt_step_height);
    s << indent << "swing_start: ";
    Printer<float>::stream(s, indent + "  ", v.swing_start);
    s << indent << "swing_stop: ";
    Printer<float>::stream(s, indent + "  ", v.swing_stop);
    s << indent << "sagittal_swg_fwd: ";
    Printer<float>::stream(s, indent + "  ", v.sagittal_swg_fwd);
    s << indent << "sagittal_swg_bwd: ";
    Printer<float>::stream(s, indent + "  ", v.sagittal_swg_bwd);
    s << indent << "lateral_swg: ";
    Printer<float>::stream(s, indent + "  ", v.lateral_swg);
    s << indent << "lateral_swg_offset: ";
    Printer<float>::stream(s, indent + "  ", v.lateral_swg_offset);
    s << indent << "trng_lateral_swg_offset: ";
    Printer<float>::stream(s, indent + "  ", v.trng_lateral_swg_offset);
    s << indent << "rotational_swg: ";
    Printer<float>::stream(s, indent + "  ", v.rotational_swg);
    s << indent << "rotational_swg_offset: ";
    Printer<float>::stream(s, indent + "  ", v.rotational_swg_offset);
    s << indent << "lateral_hip_swg: ";
    Printer<float>::stream(s, indent + "  ", v.lateral_hip_swg);
    s << indent << "fwd_lean: ";
    Printer<float>::stream(s, indent + "  ", v.fwd_lean);
    s << indent << "bwd_lean: ";
    Printer<float>::stream(s, indent + "  ", v.bwd_lean);
    s << indent << "fwd_trng_lean: ";
    Printer<float>::stream(s, indent + "  ", v.fwd_trng_lean);
    s << indent << "gait_vel_limit: ";
    Printer<float>::stream(s, indent + "  ", v.gait_vel_limit);
    s << indent << "sagittal_acc: ";
    Printer<float>::stream(s, indent + "  ", v.sagittal_acc);
    s << indent << "lateral_acc: ";
    Printer<float>::stream(s, indent + "  ", v.lateral_acc);
    s << indent << "rotational_acc: ";
    Printer<float>::stream(s, indent + "  ", v.rotational_acc);
    s << indent << "const_step_freq: ";
    Printer<float>::stream(s, indent + "  ", v.const_step_freq);
    s << indent << "sagittal_prop_step_freq: ";
    Printer<float>::stream(s, indent + "  ", v.sagittal_prop_step_freq);
    s << indent << "lateral_prop_step_freq: ";
    Printer<float>::stream(s, indent + "  ", v.lateral_prop_step_freq);
    s << indent << "x_move_amplitude: ";
    Printer<float>::stream(s, indent + "  ", v.x_move_amplitude);
    s << indent << "y_move_amplitude: ";
    Printer<float>::stream(s, indent + "  ", v.y_move_amplitude);
    s << indent << "angle_move_amplitude: ";
    Printer<float>::stream(s, indent + "  ", v.angle_move_amplitude);
    s << indent << "halt_position: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.halt_position);
    s << indent << "leg_lifting: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.leg_lifting);
    s << indent << "leg_swing: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.leg_swing);
    s << indent << "lateral_swing: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lateral_swing);
    s << indent << "leaning: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.leaning);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAPTURE_STEP_MODULE_MSGS_MESSAGE_WALKINGPARAM_H
