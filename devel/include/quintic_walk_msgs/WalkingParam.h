// Generated by gencpp from file quintic_walk_msgs/WalkingParam.msg
// DO NOT EDIT!


#ifndef QUINTIC_WALK_MSGS_MESSAGE_WALKINGPARAM_H
#define QUINTIC_WALK_MSGS_MESSAGE_WALKINGPARAM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace quintic_walk_msgs
{
template <class ContainerAllocator>
struct WalkingParam_
{
  typedef WalkingParam_<ContainerAllocator> Type;

  WalkingParam_()
    : freq(0.0)
    , doubleSupportRatio(0.0)
    , footDistance(0.0)
    , footRise(0.0)
    , footPutDownZOffset(0.0)
    , footPutDownPhase(0.0)
    , footApexPhase(0.0)
    , footOvershootRatio(0.0)
    , footOvershootPhase(0.0)
    , trunkHeight(0.0)
    , trunkPitch(0.0)
    , trunkPhase(0.0)
    , trunkXOffset(0.0)
    , trunkYOffset(0.0)
    , trunkSwing(0.0)
    , trunkPause(0.0)
    , trunkXOffsetPCoefForward(0.0)
    , trunkXOffsetPCoefTurn(0.0)
    , trunkPitchPCoefForward(0.0)
    , trunkPitchPCoefTurn(0.0)
    , trunkYOnlyInDoubleSupport(false)
    , XMove(0.0)
    , YMove(0.0)
    , ZMove(0.0)
    , mode()
    , tuning(false)
    , D_ANKLE_P_qw(0.0)
    , D_KNEE_qw(0.0)
    , D_HIP_P_qw(0.0)
    , KP_P_qw(0.0)
    , KD_P_qw(0.0)
    , KI_P_qw(0.0)
    , ShoulderGain_qw(0.0)
    , setpointPitch(0.0)
    , pitch_error_tol(0.0)
    , KP_X_qw(0.0)
    , KD_X_qw(0.0)
    , KI_X_qw(0.0)
    , Angle_0(0.0)
    , Angle_1(0.0)
    , Angle_2(0.0)
    , Angle_3(0.0)
    , Angle_4(0.0)
    , KD_0(0.0)
    , KD_1(0.0)
    , KD_2(0.0)
    , KD_3(0.0)
    , KD_4(0.0)
    , Gyro_0(0.0)
    , Gyro_1(0.0)
    , Gyro_2(0.0)
    , Gyro_3(0.0)
    , Gyro_4(0.0)
    , KP_0(0.0)
    , KP_1(0.0)
    , KP_2(0.0)
    , KP_3(0.0)
    , KP_4(0.0)  {
    }
  WalkingParam_(const ContainerAllocator& _alloc)
    : freq(0.0)
    , doubleSupportRatio(0.0)
    , footDistance(0.0)
    , footRise(0.0)
    , footPutDownZOffset(0.0)
    , footPutDownPhase(0.0)
    , footApexPhase(0.0)
    , footOvershootRatio(0.0)
    , footOvershootPhase(0.0)
    , trunkHeight(0.0)
    , trunkPitch(0.0)
    , trunkPhase(0.0)
    , trunkXOffset(0.0)
    , trunkYOffset(0.0)
    , trunkSwing(0.0)
    , trunkPause(0.0)
    , trunkXOffsetPCoefForward(0.0)
    , trunkXOffsetPCoefTurn(0.0)
    , trunkPitchPCoefForward(0.0)
    , trunkPitchPCoefTurn(0.0)
    , trunkYOnlyInDoubleSupport(false)
    , XMove(0.0)
    , YMove(0.0)
    , ZMove(0.0)
    , mode(_alloc)
    , tuning(false)
    , D_ANKLE_P_qw(0.0)
    , D_KNEE_qw(0.0)
    , D_HIP_P_qw(0.0)
    , KP_P_qw(0.0)
    , KD_P_qw(0.0)
    , KI_P_qw(0.0)
    , ShoulderGain_qw(0.0)
    , setpointPitch(0.0)
    , pitch_error_tol(0.0)
    , KP_X_qw(0.0)
    , KD_X_qw(0.0)
    , KI_X_qw(0.0)
    , Angle_0(0.0)
    , Angle_1(0.0)
    , Angle_2(0.0)
    , Angle_3(0.0)
    , Angle_4(0.0)
    , KD_0(0.0)
    , KD_1(0.0)
    , KD_2(0.0)
    , KD_3(0.0)
    , KD_4(0.0)
    , Gyro_0(0.0)
    , Gyro_1(0.0)
    , Gyro_2(0.0)
    , Gyro_3(0.0)
    , Gyro_4(0.0)
    , KP_0(0.0)
    , KP_1(0.0)
    , KP_2(0.0)
    , KP_3(0.0)
    , KP_4(0.0)  {
  (void)_alloc;
    }



   typedef float _freq_type;
  _freq_type freq;

   typedef float _doubleSupportRatio_type;
  _doubleSupportRatio_type doubleSupportRatio;

   typedef float _footDistance_type;
  _footDistance_type footDistance;

   typedef float _footRise_type;
  _footRise_type footRise;

   typedef float _footPutDownZOffset_type;
  _footPutDownZOffset_type footPutDownZOffset;

   typedef float _footPutDownPhase_type;
  _footPutDownPhase_type footPutDownPhase;

   typedef float _footApexPhase_type;
  _footApexPhase_type footApexPhase;

   typedef float _footOvershootRatio_type;
  _footOvershootRatio_type footOvershootRatio;

   typedef float _footOvershootPhase_type;
  _footOvershootPhase_type footOvershootPhase;

   typedef float _trunkHeight_type;
  _trunkHeight_type trunkHeight;

   typedef float _trunkPitch_type;
  _trunkPitch_type trunkPitch;

   typedef float _trunkPhase_type;
  _trunkPhase_type trunkPhase;

   typedef float _trunkXOffset_type;
  _trunkXOffset_type trunkXOffset;

   typedef float _trunkYOffset_type;
  _trunkYOffset_type trunkYOffset;

   typedef float _trunkSwing_type;
  _trunkSwing_type trunkSwing;

   typedef float _trunkPause_type;
  _trunkPause_type trunkPause;

   typedef float _trunkXOffsetPCoefForward_type;
  _trunkXOffsetPCoefForward_type trunkXOffsetPCoefForward;

   typedef float _trunkXOffsetPCoefTurn_type;
  _trunkXOffsetPCoefTurn_type trunkXOffsetPCoefTurn;

   typedef float _trunkPitchPCoefForward_type;
  _trunkPitchPCoefForward_type trunkPitchPCoefForward;

   typedef float _trunkPitchPCoefTurn_type;
  _trunkPitchPCoefTurn_type trunkPitchPCoefTurn;

   typedef uint8_t _trunkYOnlyInDoubleSupport_type;
  _trunkYOnlyInDoubleSupport_type trunkYOnlyInDoubleSupport;

   typedef float _XMove_type;
  _XMove_type XMove;

   typedef float _YMove_type;
  _YMove_type YMove;

   typedef float _ZMove_type;
  _ZMove_type ZMove;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mode_type;
  _mode_type mode;

   typedef uint8_t _tuning_type;
  _tuning_type tuning;

   typedef float _D_ANKLE_P_qw_type;
  _D_ANKLE_P_qw_type D_ANKLE_P_qw;

   typedef float _D_KNEE_qw_type;
  _D_KNEE_qw_type D_KNEE_qw;

   typedef float _D_HIP_P_qw_type;
  _D_HIP_P_qw_type D_HIP_P_qw;

   typedef float _KP_P_qw_type;
  _KP_P_qw_type KP_P_qw;

   typedef float _KD_P_qw_type;
  _KD_P_qw_type KD_P_qw;

   typedef float _KI_P_qw_type;
  _KI_P_qw_type KI_P_qw;

   typedef float _ShoulderGain_qw_type;
  _ShoulderGain_qw_type ShoulderGain_qw;

   typedef float _setpointPitch_type;
  _setpointPitch_type setpointPitch;

   typedef float _pitch_error_tol_type;
  _pitch_error_tol_type pitch_error_tol;

   typedef float _KP_X_qw_type;
  _KP_X_qw_type KP_X_qw;

   typedef float _KD_X_qw_type;
  _KD_X_qw_type KD_X_qw;

   typedef float _KI_X_qw_type;
  _KI_X_qw_type KI_X_qw;

   typedef float _Angle_0_type;
  _Angle_0_type Angle_0;

   typedef float _Angle_1_type;
  _Angle_1_type Angle_1;

   typedef float _Angle_2_type;
  _Angle_2_type Angle_2;

   typedef float _Angle_3_type;
  _Angle_3_type Angle_3;

   typedef float _Angle_4_type;
  _Angle_4_type Angle_4;

   typedef float _KD_0_type;
  _KD_0_type KD_0;

   typedef float _KD_1_type;
  _KD_1_type KD_1;

   typedef float _KD_2_type;
  _KD_2_type KD_2;

   typedef float _KD_3_type;
  _KD_3_type KD_3;

   typedef float _KD_4_type;
  _KD_4_type KD_4;

   typedef float _Gyro_0_type;
  _Gyro_0_type Gyro_0;

   typedef float _Gyro_1_type;
  _Gyro_1_type Gyro_1;

   typedef float _Gyro_2_type;
  _Gyro_2_type Gyro_2;

   typedef float _Gyro_3_type;
  _Gyro_3_type Gyro_3;

   typedef float _Gyro_4_type;
  _Gyro_4_type Gyro_4;

   typedef float _KP_0_type;
  _KP_0_type KP_0;

   typedef float _KP_1_type;
  _KP_1_type KP_1;

   typedef float _KP_2_type;
  _KP_2_type KP_2;

   typedef float _KP_3_type;
  _KP_3_type KP_3;

   typedef float _KP_4_type;
  _KP_4_type KP_4;





  typedef boost::shared_ptr< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> const> ConstPtr;

}; // struct WalkingParam_

typedef ::quintic_walk_msgs::WalkingParam_<std::allocator<void> > WalkingParam;

typedef boost::shared_ptr< ::quintic_walk_msgs::WalkingParam > WalkingParamPtr;
typedef boost::shared_ptr< ::quintic_walk_msgs::WalkingParam const> WalkingParamConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace quintic_walk_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'quintic_walk_msgs': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Msgs/quintic_walk_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f884ae298d19a76dad330f2c4daca90";
  }

  static const char* value(const ::quintic_walk_msgs::WalkingParam_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f884ae298d19a76ULL;
  static const uint64_t static_value2 = 0xdad330f2c4daca90ULL;
};

template<class ContainerAllocator>
struct DataType< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quintic_walk_msgs/WalkingParam";
  }

  static const char* value(const ::quintic_walk_msgs::WalkingParam_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 freq\n\
float32 doubleSupportRatio\n\
float32 footDistance\n\
float32 footRise\n\
float32 footPutDownZOffset\n\
float32 footPutDownPhase\n\
float32 footApexPhase\n\
float32 footOvershootRatio\n\
float32 footOvershootPhase\n\
float32 trunkHeight\n\
float32 trunkPitch\n\
float32 trunkPhase\n\
float32 trunkXOffset\n\
float32 trunkYOffset\n\
float32 trunkSwing\n\
float32 trunkPause\n\
float32 trunkXOffsetPCoefForward\n\
float32 trunkXOffsetPCoefTurn\n\
float32 trunkPitchPCoefForward\n\
float32 trunkPitchPCoefTurn\n\
bool trunkYOnlyInDoubleSupport\n\
\n\
float32 XMove\n\
float32 YMove\n\
float32 ZMove\n\
string mode\n\
bool tuning\n\
\n\
float32 D_ANKLE_P_qw\n\
float32 D_KNEE_qw\n\
float32 D_HIP_P_qw\n\
\n\
\n\
float32 KP_P_qw\n\
float32 KD_P_qw\n\
float32 KI_P_qw\n\
\n\
\n\
\n\
float32 ShoulderGain_qw\n\
float32 setpointPitch\n\
float32 pitch_error_tol\n\
\n\
float32 KP_X_qw\n\
float32 KD_X_qw\n\
float32 KI_X_qw\n\
\n\
\n\
float32 Angle_0\n\
float32 Angle_1\n\
float32 Angle_2\n\
float32 Angle_3\n\
float32 Angle_4\n\
\n\
float32 KD_0\n\
float32 KD_1\n\
float32 KD_2\n\
float32 KD_3\n\
float32 KD_4\n\
\n\
float32 Gyro_0\n\
float32 Gyro_1\n\
float32 Gyro_2\n\
float32 Gyro_3\n\
float32 Gyro_4\n\
\n\
float32 KP_0\n\
float32 KP_1\n\
float32 KP_2\n\
float32 KP_3\n\
float32 KP_4\n\
\n\
\n\
";
  }

  static const char* value(const ::quintic_walk_msgs::WalkingParam_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.freq);
      stream.next(m.doubleSupportRatio);
      stream.next(m.footDistance);
      stream.next(m.footRise);
      stream.next(m.footPutDownZOffset);
      stream.next(m.footPutDownPhase);
      stream.next(m.footApexPhase);
      stream.next(m.footOvershootRatio);
      stream.next(m.footOvershootPhase);
      stream.next(m.trunkHeight);
      stream.next(m.trunkPitch);
      stream.next(m.trunkPhase);
      stream.next(m.trunkXOffset);
      stream.next(m.trunkYOffset);
      stream.next(m.trunkSwing);
      stream.next(m.trunkPause);
      stream.next(m.trunkXOffsetPCoefForward);
      stream.next(m.trunkXOffsetPCoefTurn);
      stream.next(m.trunkPitchPCoefForward);
      stream.next(m.trunkPitchPCoefTurn);
      stream.next(m.trunkYOnlyInDoubleSupport);
      stream.next(m.XMove);
      stream.next(m.YMove);
      stream.next(m.ZMove);
      stream.next(m.mode);
      stream.next(m.tuning);
      stream.next(m.D_ANKLE_P_qw);
      stream.next(m.D_KNEE_qw);
      stream.next(m.D_HIP_P_qw);
      stream.next(m.KP_P_qw);
      stream.next(m.KD_P_qw);
      stream.next(m.KI_P_qw);
      stream.next(m.ShoulderGain_qw);
      stream.next(m.setpointPitch);
      stream.next(m.pitch_error_tol);
      stream.next(m.KP_X_qw);
      stream.next(m.KD_X_qw);
      stream.next(m.KI_X_qw);
      stream.next(m.Angle_0);
      stream.next(m.Angle_1);
      stream.next(m.Angle_2);
      stream.next(m.Angle_3);
      stream.next(m.Angle_4);
      stream.next(m.KD_0);
      stream.next(m.KD_1);
      stream.next(m.KD_2);
      stream.next(m.KD_3);
      stream.next(m.KD_4);
      stream.next(m.Gyro_0);
      stream.next(m.Gyro_1);
      stream.next(m.Gyro_2);
      stream.next(m.Gyro_3);
      stream.next(m.Gyro_4);
      stream.next(m.KP_0);
      stream.next(m.KP_1);
      stream.next(m.KP_2);
      stream.next(m.KP_3);
      stream.next(m.KP_4);
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
struct Printer< ::quintic_walk_msgs::WalkingParam_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quintic_walk_msgs::WalkingParam_<ContainerAllocator>& v)
  {
    s << indent << "freq: ";
    Printer<float>::stream(s, indent + "  ", v.freq);
    s << indent << "doubleSupportRatio: ";
    Printer<float>::stream(s, indent + "  ", v.doubleSupportRatio);
    s << indent << "footDistance: ";
    Printer<float>::stream(s, indent + "  ", v.footDistance);
    s << indent << "footRise: ";
    Printer<float>::stream(s, indent + "  ", v.footRise);
    s << indent << "footPutDownZOffset: ";
    Printer<float>::stream(s, indent + "  ", v.footPutDownZOffset);
    s << indent << "footPutDownPhase: ";
    Printer<float>::stream(s, indent + "  ", v.footPutDownPhase);
    s << indent << "footApexPhase: ";
    Printer<float>::stream(s, indent + "  ", v.footApexPhase);
    s << indent << "footOvershootRatio: ";
    Printer<float>::stream(s, indent + "  ", v.footOvershootRatio);
    s << indent << "footOvershootPhase: ";
    Printer<float>::stream(s, indent + "  ", v.footOvershootPhase);
    s << indent << "trunkHeight: ";
    Printer<float>::stream(s, indent + "  ", v.trunkHeight);
    s << indent << "trunkPitch: ";
    Printer<float>::stream(s, indent + "  ", v.trunkPitch);
    s << indent << "trunkPhase: ";
    Printer<float>::stream(s, indent + "  ", v.trunkPhase);
    s << indent << "trunkXOffset: ";
    Printer<float>::stream(s, indent + "  ", v.trunkXOffset);
    s << indent << "trunkYOffset: ";
    Printer<float>::stream(s, indent + "  ", v.trunkYOffset);
    s << indent << "trunkSwing: ";
    Printer<float>::stream(s, indent + "  ", v.trunkSwing);
    s << indent << "trunkPause: ";
    Printer<float>::stream(s, indent + "  ", v.trunkPause);
    s << indent << "trunkXOffsetPCoefForward: ";
    Printer<float>::stream(s, indent + "  ", v.trunkXOffsetPCoefForward);
    s << indent << "trunkXOffsetPCoefTurn: ";
    Printer<float>::stream(s, indent + "  ", v.trunkXOffsetPCoefTurn);
    s << indent << "trunkPitchPCoefForward: ";
    Printer<float>::stream(s, indent + "  ", v.trunkPitchPCoefForward);
    s << indent << "trunkPitchPCoefTurn: ";
    Printer<float>::stream(s, indent + "  ", v.trunkPitchPCoefTurn);
    s << indent << "trunkYOnlyInDoubleSupport: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.trunkYOnlyInDoubleSupport);
    s << indent << "XMove: ";
    Printer<float>::stream(s, indent + "  ", v.XMove);
    s << indent << "YMove: ";
    Printer<float>::stream(s, indent + "  ", v.YMove);
    s << indent << "ZMove: ";
    Printer<float>::stream(s, indent + "  ", v.ZMove);
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mode);
    s << indent << "tuning: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.tuning);
    s << indent << "D_ANKLE_P_qw: ";
    Printer<float>::stream(s, indent + "  ", v.D_ANKLE_P_qw);
    s << indent << "D_KNEE_qw: ";
    Printer<float>::stream(s, indent + "  ", v.D_KNEE_qw);
    s << indent << "D_HIP_P_qw: ";
    Printer<float>::stream(s, indent + "  ", v.D_HIP_P_qw);
    s << indent << "KP_P_qw: ";
    Printer<float>::stream(s, indent + "  ", v.KP_P_qw);
    s << indent << "KD_P_qw: ";
    Printer<float>::stream(s, indent + "  ", v.KD_P_qw);
    s << indent << "KI_P_qw: ";
    Printer<float>::stream(s, indent + "  ", v.KI_P_qw);
    s << indent << "ShoulderGain_qw: ";
    Printer<float>::stream(s, indent + "  ", v.ShoulderGain_qw);
    s << indent << "setpointPitch: ";
    Printer<float>::stream(s, indent + "  ", v.setpointPitch);
    s << indent << "pitch_error_tol: ";
    Printer<float>::stream(s, indent + "  ", v.pitch_error_tol);
    s << indent << "KP_X_qw: ";
    Printer<float>::stream(s, indent + "  ", v.KP_X_qw);
    s << indent << "KD_X_qw: ";
    Printer<float>::stream(s, indent + "  ", v.KD_X_qw);
    s << indent << "KI_X_qw: ";
    Printer<float>::stream(s, indent + "  ", v.KI_X_qw);
    s << indent << "Angle_0: ";
    Printer<float>::stream(s, indent + "  ", v.Angle_0);
    s << indent << "Angle_1: ";
    Printer<float>::stream(s, indent + "  ", v.Angle_1);
    s << indent << "Angle_2: ";
    Printer<float>::stream(s, indent + "  ", v.Angle_2);
    s << indent << "Angle_3: ";
    Printer<float>::stream(s, indent + "  ", v.Angle_3);
    s << indent << "Angle_4: ";
    Printer<float>::stream(s, indent + "  ", v.Angle_4);
    s << indent << "KD_0: ";
    Printer<float>::stream(s, indent + "  ", v.KD_0);
    s << indent << "KD_1: ";
    Printer<float>::stream(s, indent + "  ", v.KD_1);
    s << indent << "KD_2: ";
    Printer<float>::stream(s, indent + "  ", v.KD_2);
    s << indent << "KD_3: ";
    Printer<float>::stream(s, indent + "  ", v.KD_3);
    s << indent << "KD_4: ";
    Printer<float>::stream(s, indent + "  ", v.KD_4);
    s << indent << "Gyro_0: ";
    Printer<float>::stream(s, indent + "  ", v.Gyro_0);
    s << indent << "Gyro_1: ";
    Printer<float>::stream(s, indent + "  ", v.Gyro_1);
    s << indent << "Gyro_2: ";
    Printer<float>::stream(s, indent + "  ", v.Gyro_2);
    s << indent << "Gyro_3: ";
    Printer<float>::stream(s, indent + "  ", v.Gyro_3);
    s << indent << "Gyro_4: ";
    Printer<float>::stream(s, indent + "  ", v.Gyro_4);
    s << indent << "KP_0: ";
    Printer<float>::stream(s, indent + "  ", v.KP_0);
    s << indent << "KP_1: ";
    Printer<float>::stream(s, indent + "  ", v.KP_1);
    s << indent << "KP_2: ";
    Printer<float>::stream(s, indent + "  ", v.KP_2);
    s << indent << "KP_3: ";
    Printer<float>::stream(s, indent + "  ", v.KP_3);
    s << indent << "KP_4: ";
    Printer<float>::stream(s, indent + "  ", v.KP_4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUINTIC_WALK_MSGS_MESSAGE_WALKINGPARAM_H
