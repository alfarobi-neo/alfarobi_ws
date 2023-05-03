// Generated by gencpp from file zmp_walking_module_msgs/ZMPWalkingParam.msg
// DO NOT EDIT!


#ifndef ZMP_WALKING_MODULE_MSGS_MESSAGE_ZMPWALKINGPARAM_H
#define ZMP_WALKING_MODULE_MSGS_MESSAGE_ZMPWALKINGPARAM_H


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
struct ZMPWalkingParam_
{
  typedef ZMPWalkingParam_<ContainerAllocator> Type;

  ZMPWalkingParam_()
    : feedback_(false)
    , L_Shift(0.0)
    , L_Lift(0.0)
    , L_P_Kick(0.0)
    , L_P_Cool(0.0)
    , R_Shift(0.0)
    , R_Lift(0.0)
    , R_P_Kick(0.0)
    , R_P_Cool(0.0)
    , Kp(0.0)
    , Kd(0.0)
    , TH1(0.0)
    , TH2(0.0)
    , Acc(0.0)
    , KpP(0.0)
    , KpR(0.0)
    , KdP(0.0)
    , KdR(0.0)
    , Ki(0.0)
    , zmp_vx(0.0)
    , zmp_vy(0.0)
    , zmp_vphi(0.0)
    , m_zmp_vx(0.0)
    , m_zmp_vy(0.0)
    , m_zmp_vphi(0.0)
    , zmp_vx_man(0.0)
    , zmp_useGyro(false)
    , arm_pitch(0.0)
    , arm_roll(0.0)
    , arm_elbow(0.0)
    , supp_front(0.0)
    , supp_front2(0.0)
    , supp_turn(0.0)
    , supp_side_x(0.0)
    , supp_side_y(0.0)
    , supp_x(0.0)
    , supp_y(0.0)
    , suppmod_y_init(0.0)
    , turncomp_thrs(0.0)
    , turn_comp(0.0)
    , accel_comp(0.0)
    , front_comp(0.0)
    , hiproll_comp(0.0)
    , tstep(0.0)
    , tzmp(0.0)
    , velfast_forward(0.0)
    , velfast_turn(0.0)
    , angkle_supp_factor(0.0)
    , foot_y(0.0)
    , foot_x(0.0)
    , stand_offset(0.0)
    , body_height(0.0)
    , step_height(0.0)
    , belly_roll(0.0)
    , belly_hip(0.0)
    , bodytilt(0.0)
    , ankleX_fact(0.0)
    , ankleX_deadband(0.0)
    , ankleX_maxVal(0.0)
    , ankleY_fact(0.0)
    , ankleY_deadband(0.0)
    , ankleY_maxVal(0.0)
    , kneeX_fact(0.0)
    , kneeX_deadband(0.0)
    , kneeX_maxVal(0.0)
    , hipY_fact(0.0)
    , hipY_deadband(0.0)
    , hipY_maxVal(0.0)
    , armY_fact(0.0)
    , armY_deadband(0.0)
    , armY_maxVal(0.0)
    , armX_fact(0.0)
    , armX_deadband(0.0)
    , armX_maxVal(0.0)
    , ballPosX(0.0)
    , ballPosY(0.0)
    , ballPosZ(0.0)
    , goalPosX(0.0)
    , goalPosY(0.0)
    , goalPosZ(0.0)
    , power(0.0)
    , TRetract(0.0)
    , TKick(0.0)
    , TRising(0.0)
    , TDown(0.0)  {
    }
  ZMPWalkingParam_(const ContainerAllocator& _alloc)
    : feedback_(false)
    , L_Shift(0.0)
    , L_Lift(0.0)
    , L_P_Kick(0.0)
    , L_P_Cool(0.0)
    , R_Shift(0.0)
    , R_Lift(0.0)
    , R_P_Kick(0.0)
    , R_P_Cool(0.0)
    , Kp(0.0)
    , Kd(0.0)
    , TH1(0.0)
    , TH2(0.0)
    , Acc(0.0)
    , KpP(0.0)
    , KpR(0.0)
    , KdP(0.0)
    , KdR(0.0)
    , Ki(0.0)
    , zmp_vx(0.0)
    , zmp_vy(0.0)
    , zmp_vphi(0.0)
    , m_zmp_vx(0.0)
    , m_zmp_vy(0.0)
    , m_zmp_vphi(0.0)
    , zmp_vx_man(0.0)
    , zmp_useGyro(false)
    , arm_pitch(0.0)
    , arm_roll(0.0)
    , arm_elbow(0.0)
    , supp_front(0.0)
    , supp_front2(0.0)
    , supp_turn(0.0)
    , supp_side_x(0.0)
    , supp_side_y(0.0)
    , supp_x(0.0)
    , supp_y(0.0)
    , suppmod_y_init(0.0)
    , turncomp_thrs(0.0)
    , turn_comp(0.0)
    , accel_comp(0.0)
    , front_comp(0.0)
    , hiproll_comp(0.0)
    , tstep(0.0)
    , tzmp(0.0)
    , velfast_forward(0.0)
    , velfast_turn(0.0)
    , angkle_supp_factor(0.0)
    , foot_y(0.0)
    , foot_x(0.0)
    , stand_offset(0.0)
    , body_height(0.0)
    , step_height(0.0)
    , belly_roll(0.0)
    , belly_hip(0.0)
    , bodytilt(0.0)
    , ankleX_fact(0.0)
    , ankleX_deadband(0.0)
    , ankleX_maxVal(0.0)
    , ankleY_fact(0.0)
    , ankleY_deadband(0.0)
    , ankleY_maxVal(0.0)
    , kneeX_fact(0.0)
    , kneeX_deadband(0.0)
    , kneeX_maxVal(0.0)
    , hipY_fact(0.0)
    , hipY_deadband(0.0)
    , hipY_maxVal(0.0)
    , armY_fact(0.0)
    , armY_deadband(0.0)
    , armY_maxVal(0.0)
    , armX_fact(0.0)
    , armX_deadband(0.0)
    , armX_maxVal(0.0)
    , ballPosX(0.0)
    , ballPosY(0.0)
    , ballPosZ(0.0)
    , goalPosX(0.0)
    , goalPosY(0.0)
    , goalPosZ(0.0)
    , power(0.0)
    , TRetract(0.0)
    , TKick(0.0)
    , TRising(0.0)
    , TDown(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _feedback__type;
  _feedback__type feedback_;

   typedef float _L_Shift_type;
  _L_Shift_type L_Shift;

   typedef float _L_Lift_type;
  _L_Lift_type L_Lift;

   typedef float _L_P_Kick_type;
  _L_P_Kick_type L_P_Kick;

   typedef float _L_P_Cool_type;
  _L_P_Cool_type L_P_Cool;

   typedef float _R_Shift_type;
  _R_Shift_type R_Shift;

   typedef float _R_Lift_type;
  _R_Lift_type R_Lift;

   typedef float _R_P_Kick_type;
  _R_P_Kick_type R_P_Kick;

   typedef float _R_P_Cool_type;
  _R_P_Cool_type R_P_Cool;

   typedef float _Kp_type;
  _Kp_type Kp;

   typedef float _Kd_type;
  _Kd_type Kd;

   typedef float _TH1_type;
  _TH1_type TH1;

   typedef float _TH2_type;
  _TH2_type TH2;

   typedef float _Acc_type;
  _Acc_type Acc;

   typedef float _KpP_type;
  _KpP_type KpP;

   typedef float _KpR_type;
  _KpR_type KpR;

   typedef float _KdP_type;
  _KdP_type KdP;

   typedef float _KdR_type;
  _KdR_type KdR;

   typedef float _Ki_type;
  _Ki_type Ki;

   typedef float _zmp_vx_type;
  _zmp_vx_type zmp_vx;

   typedef float _zmp_vy_type;
  _zmp_vy_type zmp_vy;

   typedef float _zmp_vphi_type;
  _zmp_vphi_type zmp_vphi;

   typedef float _m_zmp_vx_type;
  _m_zmp_vx_type m_zmp_vx;

   typedef float _m_zmp_vy_type;
  _m_zmp_vy_type m_zmp_vy;

   typedef float _m_zmp_vphi_type;
  _m_zmp_vphi_type m_zmp_vphi;

   typedef float _zmp_vx_man_type;
  _zmp_vx_man_type zmp_vx_man;

   typedef uint8_t _zmp_useGyro_type;
  _zmp_useGyro_type zmp_useGyro;

   typedef float _arm_pitch_type;
  _arm_pitch_type arm_pitch;

   typedef float _arm_roll_type;
  _arm_roll_type arm_roll;

   typedef float _arm_elbow_type;
  _arm_elbow_type arm_elbow;

   typedef float _supp_front_type;
  _supp_front_type supp_front;

   typedef float _supp_front2_type;
  _supp_front2_type supp_front2;

   typedef float _supp_turn_type;
  _supp_turn_type supp_turn;

   typedef float _supp_side_x_type;
  _supp_side_x_type supp_side_x;

   typedef float _supp_side_y_type;
  _supp_side_y_type supp_side_y;

   typedef float _supp_x_type;
  _supp_x_type supp_x;

   typedef float _supp_y_type;
  _supp_y_type supp_y;

   typedef float _suppmod_y_init_type;
  _suppmod_y_init_type suppmod_y_init;

   typedef float _turncomp_thrs_type;
  _turncomp_thrs_type turncomp_thrs;

   typedef float _turn_comp_type;
  _turn_comp_type turn_comp;

   typedef float _accel_comp_type;
  _accel_comp_type accel_comp;

   typedef float _front_comp_type;
  _front_comp_type front_comp;

   typedef float _hiproll_comp_type;
  _hiproll_comp_type hiproll_comp;

   typedef float _tstep_type;
  _tstep_type tstep;

   typedef float _tzmp_type;
  _tzmp_type tzmp;

   typedef float _velfast_forward_type;
  _velfast_forward_type velfast_forward;

   typedef float _velfast_turn_type;
  _velfast_turn_type velfast_turn;

   typedef float _angkle_supp_factor_type;
  _angkle_supp_factor_type angkle_supp_factor;

   typedef float _foot_y_type;
  _foot_y_type foot_y;

   typedef float _foot_x_type;
  _foot_x_type foot_x;

   typedef float _stand_offset_type;
  _stand_offset_type stand_offset;

   typedef float _body_height_type;
  _body_height_type body_height;

   typedef float _step_height_type;
  _step_height_type step_height;

   typedef float _belly_roll_type;
  _belly_roll_type belly_roll;

   typedef float _belly_hip_type;
  _belly_hip_type belly_hip;

   typedef float _bodytilt_type;
  _bodytilt_type bodytilt;

   typedef float _ankleX_fact_type;
  _ankleX_fact_type ankleX_fact;

   typedef float _ankleX_deadband_type;
  _ankleX_deadband_type ankleX_deadband;

   typedef float _ankleX_maxVal_type;
  _ankleX_maxVal_type ankleX_maxVal;

   typedef float _ankleY_fact_type;
  _ankleY_fact_type ankleY_fact;

   typedef float _ankleY_deadband_type;
  _ankleY_deadband_type ankleY_deadband;

   typedef float _ankleY_maxVal_type;
  _ankleY_maxVal_type ankleY_maxVal;

   typedef float _kneeX_fact_type;
  _kneeX_fact_type kneeX_fact;

   typedef float _kneeX_deadband_type;
  _kneeX_deadband_type kneeX_deadband;

   typedef float _kneeX_maxVal_type;
  _kneeX_maxVal_type kneeX_maxVal;

   typedef float _hipY_fact_type;
  _hipY_fact_type hipY_fact;

   typedef float _hipY_deadband_type;
  _hipY_deadband_type hipY_deadband;

   typedef float _hipY_maxVal_type;
  _hipY_maxVal_type hipY_maxVal;

   typedef float _armY_fact_type;
  _armY_fact_type armY_fact;

   typedef float _armY_deadband_type;
  _armY_deadband_type armY_deadband;

   typedef float _armY_maxVal_type;
  _armY_maxVal_type armY_maxVal;

   typedef float _armX_fact_type;
  _armX_fact_type armX_fact;

   typedef float _armX_deadband_type;
  _armX_deadband_type armX_deadband;

   typedef float _armX_maxVal_type;
  _armX_maxVal_type armX_maxVal;

   typedef float _ballPosX_type;
  _ballPosX_type ballPosX;

   typedef float _ballPosY_type;
  _ballPosY_type ballPosY;

   typedef float _ballPosZ_type;
  _ballPosZ_type ballPosZ;

   typedef float _goalPosX_type;
  _goalPosX_type goalPosX;

   typedef float _goalPosY_type;
  _goalPosY_type goalPosY;

   typedef float _goalPosZ_type;
  _goalPosZ_type goalPosZ;

   typedef float _power_type;
  _power_type power;

   typedef float _TRetract_type;
  _TRetract_type TRetract;

   typedef float _TKick_type;
  _TKick_type TKick;

   typedef float _TRising_type;
  _TRising_type TRising;

   typedef float _TDown_type;
  _TDown_type TDown;





  typedef boost::shared_ptr< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> const> ConstPtr;

}; // struct ZMPWalkingParam_

typedef ::zmp_walking_module_msgs::ZMPWalkingParam_<std::allocator<void> > ZMPWalkingParam;

typedef boost::shared_ptr< ::zmp_walking_module_msgs::ZMPWalkingParam > ZMPWalkingParamPtr;
typedef boost::shared_ptr< ::zmp_walking_module_msgs::ZMPWalkingParam const> ZMPWalkingParamConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator1> & lhs, const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator2> & rhs)
{
  return lhs.feedback_ == rhs.feedback_ &&
    lhs.L_Shift == rhs.L_Shift &&
    lhs.L_Lift == rhs.L_Lift &&
    lhs.L_P_Kick == rhs.L_P_Kick &&
    lhs.L_P_Cool == rhs.L_P_Cool &&
    lhs.R_Shift == rhs.R_Shift &&
    lhs.R_Lift == rhs.R_Lift &&
    lhs.R_P_Kick == rhs.R_P_Kick &&
    lhs.R_P_Cool == rhs.R_P_Cool &&
    lhs.Kp == rhs.Kp &&
    lhs.Kd == rhs.Kd &&
    lhs.TH1 == rhs.TH1 &&
    lhs.TH2 == rhs.TH2 &&
    lhs.Acc == rhs.Acc &&
    lhs.KpP == rhs.KpP &&
    lhs.KpR == rhs.KpR &&
    lhs.KdP == rhs.KdP &&
    lhs.KdR == rhs.KdR &&
    lhs.Ki == rhs.Ki &&
    lhs.zmp_vx == rhs.zmp_vx &&
    lhs.zmp_vy == rhs.zmp_vy &&
    lhs.zmp_vphi == rhs.zmp_vphi &&
    lhs.m_zmp_vx == rhs.m_zmp_vx &&
    lhs.m_zmp_vy == rhs.m_zmp_vy &&
    lhs.m_zmp_vphi == rhs.m_zmp_vphi &&
    lhs.zmp_vx_man == rhs.zmp_vx_man &&
    lhs.zmp_useGyro == rhs.zmp_useGyro &&
    lhs.arm_pitch == rhs.arm_pitch &&
    lhs.arm_roll == rhs.arm_roll &&
    lhs.arm_elbow == rhs.arm_elbow &&
    lhs.supp_front == rhs.supp_front &&
    lhs.supp_front2 == rhs.supp_front2 &&
    lhs.supp_turn == rhs.supp_turn &&
    lhs.supp_side_x == rhs.supp_side_x &&
    lhs.supp_side_y == rhs.supp_side_y &&
    lhs.supp_x == rhs.supp_x &&
    lhs.supp_y == rhs.supp_y &&
    lhs.suppmod_y_init == rhs.suppmod_y_init &&
    lhs.turncomp_thrs == rhs.turncomp_thrs &&
    lhs.turn_comp == rhs.turn_comp &&
    lhs.accel_comp == rhs.accel_comp &&
    lhs.front_comp == rhs.front_comp &&
    lhs.hiproll_comp == rhs.hiproll_comp &&
    lhs.tstep == rhs.tstep &&
    lhs.tzmp == rhs.tzmp &&
    lhs.velfast_forward == rhs.velfast_forward &&
    lhs.velfast_turn == rhs.velfast_turn &&
    lhs.angkle_supp_factor == rhs.angkle_supp_factor &&
    lhs.foot_y == rhs.foot_y &&
    lhs.foot_x == rhs.foot_x &&
    lhs.stand_offset == rhs.stand_offset &&
    lhs.body_height == rhs.body_height &&
    lhs.step_height == rhs.step_height &&
    lhs.belly_roll == rhs.belly_roll &&
    lhs.belly_hip == rhs.belly_hip &&
    lhs.bodytilt == rhs.bodytilt &&
    lhs.ankleX_fact == rhs.ankleX_fact &&
    lhs.ankleX_deadband == rhs.ankleX_deadband &&
    lhs.ankleX_maxVal == rhs.ankleX_maxVal &&
    lhs.ankleY_fact == rhs.ankleY_fact &&
    lhs.ankleY_deadband == rhs.ankleY_deadband &&
    lhs.ankleY_maxVal == rhs.ankleY_maxVal &&
    lhs.kneeX_fact == rhs.kneeX_fact &&
    lhs.kneeX_deadband == rhs.kneeX_deadband &&
    lhs.kneeX_maxVal == rhs.kneeX_maxVal &&
    lhs.hipY_fact == rhs.hipY_fact &&
    lhs.hipY_deadband == rhs.hipY_deadband &&
    lhs.hipY_maxVal == rhs.hipY_maxVal &&
    lhs.armY_fact == rhs.armY_fact &&
    lhs.armY_deadband == rhs.armY_deadband &&
    lhs.armY_maxVal == rhs.armY_maxVal &&
    lhs.armX_fact == rhs.armX_fact &&
    lhs.armX_deadband == rhs.armX_deadband &&
    lhs.armX_maxVal == rhs.armX_maxVal &&
    lhs.ballPosX == rhs.ballPosX &&
    lhs.ballPosY == rhs.ballPosY &&
    lhs.ballPosZ == rhs.ballPosZ &&
    lhs.goalPosX == rhs.goalPosX &&
    lhs.goalPosY == rhs.goalPosY &&
    lhs.goalPosZ == rhs.goalPosZ &&
    lhs.power == rhs.power &&
    lhs.TRetract == rhs.TRetract &&
    lhs.TKick == rhs.TKick &&
    lhs.TRising == rhs.TRising &&
    lhs.TDown == rhs.TDown;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator1> & lhs, const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zmp_walking_module_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18fd4f4232f23b551ffb99639a489507";
  }

  static const char* value(const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18fd4f4232f23b55ULL;
  static const uint64_t static_value2 = 0x1ffb99639a489507ULL;
};

template<class ContainerAllocator>
struct DataType< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zmp_walking_module_msgs/ZMPWalkingParam";
  }

  static const char* value(const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "########## ZMP WALKING BIT-BOTS ###########\n"
"\n"
"bool feedback_\n"
"\n"
"float32 L_Shift\n"
"float32 L_Lift\n"
"float32 L_P_Kick\n"
"float32 L_P_Cool\n"
"\n"
"float32 R_Shift\n"
"float32 R_Lift\n"
"float32 R_P_Kick\n"
"float32 R_P_Cool\n"
"\n"
"float32 Kp\n"
"float32 Kd\n"
"float32 TH1\n"
"float32 TH2\n"
"float32 Acc\n"
"\n"
"float32 KpP\n"
"float32 KpR\n"
"float32 KdP\n"
"float32 KdR\n"
"float32 Ki\n"
"\n"
"float32 zmp_vx\n"
"float32 zmp_vy\n"
"float32 zmp_vphi\n"
"float32 m_zmp_vx\n"
"float32 m_zmp_vy\n"
"float32 m_zmp_vphi\n"
"float32 zmp_vx_man\n"
"\n"
"bool zmp_useGyro\n"
"float32 arm_pitch\n"
"float32 arm_roll\n"
"float32 arm_elbow\n"
"\n"
"float32 supp_front\n"
"float32 supp_front2\n"
"float32 supp_turn\n"
"float32 supp_side_x\n"
"float32 supp_side_y\n"
"float32 supp_x\n"
"float32 supp_y\n"
"\n"
"float32 suppmod_y_init\n"
"float32 turncomp_thrs\n"
"float32 turn_comp\n"
"float32 accel_comp\n"
"float32 front_comp\n"
"float32 hiproll_comp\n"
"float32 tstep\n"
"float32 tzmp\n"
"float32 velfast_forward\n"
"float32 velfast_turn\n"
"float32 angkle_supp_factor\n"
"\n"
"float32 foot_y\n"
"float32 foot_x\n"
"float32 stand_offset\n"
"float32 body_height\n"
"float32 step_height\n"
"float32 belly_roll\n"
"float32 belly_hip\n"
"float32 bodytilt\n"
"\n"
"float32 ankleX_fact\n"
"float32 ankleX_deadband\n"
"float32 ankleX_maxVal\n"
"\n"
"float32 ankleY_fact\n"
"float32 ankleY_deadband\n"
"float32 ankleY_maxVal\n"
"\n"
"float32 kneeX_fact\n"
"float32 kneeX_deadband\n"
"float32 kneeX_maxVal\n"
"\n"
"float32 hipY_fact\n"
"float32 hipY_deadband\n"
"float32 hipY_maxVal\n"
"\n"
"float32 armY_fact\n"
"float32 armY_deadband\n"
"float32 armY_maxVal\n"
"\n"
"float32 armX_fact\n"
"float32 armX_deadband\n"
"float32 armX_maxVal\n"
"\n"
"float32 ballPosX\n"
"float32 ballPosY\n"
"float32 ballPosZ\n"
"\n"
"float32 goalPosX\n"
"float32 goalPosY\n"
"float32 goalPosZ\n"
"\n"
"float32 power\n"
"float32 TRetract\n"
"float32 TKick\n"
"float32 TRising\n"
"float32 TDown\n"
;
  }

  static const char* value(const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.feedback_);
      stream.next(m.L_Shift);
      stream.next(m.L_Lift);
      stream.next(m.L_P_Kick);
      stream.next(m.L_P_Cool);
      stream.next(m.R_Shift);
      stream.next(m.R_Lift);
      stream.next(m.R_P_Kick);
      stream.next(m.R_P_Cool);
      stream.next(m.Kp);
      stream.next(m.Kd);
      stream.next(m.TH1);
      stream.next(m.TH2);
      stream.next(m.Acc);
      stream.next(m.KpP);
      stream.next(m.KpR);
      stream.next(m.KdP);
      stream.next(m.KdR);
      stream.next(m.Ki);
      stream.next(m.zmp_vx);
      stream.next(m.zmp_vy);
      stream.next(m.zmp_vphi);
      stream.next(m.m_zmp_vx);
      stream.next(m.m_zmp_vy);
      stream.next(m.m_zmp_vphi);
      stream.next(m.zmp_vx_man);
      stream.next(m.zmp_useGyro);
      stream.next(m.arm_pitch);
      stream.next(m.arm_roll);
      stream.next(m.arm_elbow);
      stream.next(m.supp_front);
      stream.next(m.supp_front2);
      stream.next(m.supp_turn);
      stream.next(m.supp_side_x);
      stream.next(m.supp_side_y);
      stream.next(m.supp_x);
      stream.next(m.supp_y);
      stream.next(m.suppmod_y_init);
      stream.next(m.turncomp_thrs);
      stream.next(m.turn_comp);
      stream.next(m.accel_comp);
      stream.next(m.front_comp);
      stream.next(m.hiproll_comp);
      stream.next(m.tstep);
      stream.next(m.tzmp);
      stream.next(m.velfast_forward);
      stream.next(m.velfast_turn);
      stream.next(m.angkle_supp_factor);
      stream.next(m.foot_y);
      stream.next(m.foot_x);
      stream.next(m.stand_offset);
      stream.next(m.body_height);
      stream.next(m.step_height);
      stream.next(m.belly_roll);
      stream.next(m.belly_hip);
      stream.next(m.bodytilt);
      stream.next(m.ankleX_fact);
      stream.next(m.ankleX_deadband);
      stream.next(m.ankleX_maxVal);
      stream.next(m.ankleY_fact);
      stream.next(m.ankleY_deadband);
      stream.next(m.ankleY_maxVal);
      stream.next(m.kneeX_fact);
      stream.next(m.kneeX_deadband);
      stream.next(m.kneeX_maxVal);
      stream.next(m.hipY_fact);
      stream.next(m.hipY_deadband);
      stream.next(m.hipY_maxVal);
      stream.next(m.armY_fact);
      stream.next(m.armY_deadband);
      stream.next(m.armY_maxVal);
      stream.next(m.armX_fact);
      stream.next(m.armX_deadband);
      stream.next(m.armX_maxVal);
      stream.next(m.ballPosX);
      stream.next(m.ballPosY);
      stream.next(m.ballPosZ);
      stream.next(m.goalPosX);
      stream.next(m.goalPosY);
      stream.next(m.goalPosZ);
      stream.next(m.power);
      stream.next(m.TRetract);
      stream.next(m.TKick);
      stream.next(m.TRising);
      stream.next(m.TDown);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ZMPWalkingParam_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zmp_walking_module_msgs::ZMPWalkingParam_<ContainerAllocator>& v)
  {
    s << indent << "feedback_: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.feedback_);
    s << indent << "L_Shift: ";
    Printer<float>::stream(s, indent + "  ", v.L_Shift);
    s << indent << "L_Lift: ";
    Printer<float>::stream(s, indent + "  ", v.L_Lift);
    s << indent << "L_P_Kick: ";
    Printer<float>::stream(s, indent + "  ", v.L_P_Kick);
    s << indent << "L_P_Cool: ";
    Printer<float>::stream(s, indent + "  ", v.L_P_Cool);
    s << indent << "R_Shift: ";
    Printer<float>::stream(s, indent + "  ", v.R_Shift);
    s << indent << "R_Lift: ";
    Printer<float>::stream(s, indent + "  ", v.R_Lift);
    s << indent << "R_P_Kick: ";
    Printer<float>::stream(s, indent + "  ", v.R_P_Kick);
    s << indent << "R_P_Cool: ";
    Printer<float>::stream(s, indent + "  ", v.R_P_Cool);
    s << indent << "Kp: ";
    Printer<float>::stream(s, indent + "  ", v.Kp);
    s << indent << "Kd: ";
    Printer<float>::stream(s, indent + "  ", v.Kd);
    s << indent << "TH1: ";
    Printer<float>::stream(s, indent + "  ", v.TH1);
    s << indent << "TH2: ";
    Printer<float>::stream(s, indent + "  ", v.TH2);
    s << indent << "Acc: ";
    Printer<float>::stream(s, indent + "  ", v.Acc);
    s << indent << "KpP: ";
    Printer<float>::stream(s, indent + "  ", v.KpP);
    s << indent << "KpR: ";
    Printer<float>::stream(s, indent + "  ", v.KpR);
    s << indent << "KdP: ";
    Printer<float>::stream(s, indent + "  ", v.KdP);
    s << indent << "KdR: ";
    Printer<float>::stream(s, indent + "  ", v.KdR);
    s << indent << "Ki: ";
    Printer<float>::stream(s, indent + "  ", v.Ki);
    s << indent << "zmp_vx: ";
    Printer<float>::stream(s, indent + "  ", v.zmp_vx);
    s << indent << "zmp_vy: ";
    Printer<float>::stream(s, indent + "  ", v.zmp_vy);
    s << indent << "zmp_vphi: ";
    Printer<float>::stream(s, indent + "  ", v.zmp_vphi);
    s << indent << "m_zmp_vx: ";
    Printer<float>::stream(s, indent + "  ", v.m_zmp_vx);
    s << indent << "m_zmp_vy: ";
    Printer<float>::stream(s, indent + "  ", v.m_zmp_vy);
    s << indent << "m_zmp_vphi: ";
    Printer<float>::stream(s, indent + "  ", v.m_zmp_vphi);
    s << indent << "zmp_vx_man: ";
    Printer<float>::stream(s, indent + "  ", v.zmp_vx_man);
    s << indent << "zmp_useGyro: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.zmp_useGyro);
    s << indent << "arm_pitch: ";
    Printer<float>::stream(s, indent + "  ", v.arm_pitch);
    s << indent << "arm_roll: ";
    Printer<float>::stream(s, indent + "  ", v.arm_roll);
    s << indent << "arm_elbow: ";
    Printer<float>::stream(s, indent + "  ", v.arm_elbow);
    s << indent << "supp_front: ";
    Printer<float>::stream(s, indent + "  ", v.supp_front);
    s << indent << "supp_front2: ";
    Printer<float>::stream(s, indent + "  ", v.supp_front2);
    s << indent << "supp_turn: ";
    Printer<float>::stream(s, indent + "  ", v.supp_turn);
    s << indent << "supp_side_x: ";
    Printer<float>::stream(s, indent + "  ", v.supp_side_x);
    s << indent << "supp_side_y: ";
    Printer<float>::stream(s, indent + "  ", v.supp_side_y);
    s << indent << "supp_x: ";
    Printer<float>::stream(s, indent + "  ", v.supp_x);
    s << indent << "supp_y: ";
    Printer<float>::stream(s, indent + "  ", v.supp_y);
    s << indent << "suppmod_y_init: ";
    Printer<float>::stream(s, indent + "  ", v.suppmod_y_init);
    s << indent << "turncomp_thrs: ";
    Printer<float>::stream(s, indent + "  ", v.turncomp_thrs);
    s << indent << "turn_comp: ";
    Printer<float>::stream(s, indent + "  ", v.turn_comp);
    s << indent << "accel_comp: ";
    Printer<float>::stream(s, indent + "  ", v.accel_comp);
    s << indent << "front_comp: ";
    Printer<float>::stream(s, indent + "  ", v.front_comp);
    s << indent << "hiproll_comp: ";
    Printer<float>::stream(s, indent + "  ", v.hiproll_comp);
    s << indent << "tstep: ";
    Printer<float>::stream(s, indent + "  ", v.tstep);
    s << indent << "tzmp: ";
    Printer<float>::stream(s, indent + "  ", v.tzmp);
    s << indent << "velfast_forward: ";
    Printer<float>::stream(s, indent + "  ", v.velfast_forward);
    s << indent << "velfast_turn: ";
    Printer<float>::stream(s, indent + "  ", v.velfast_turn);
    s << indent << "angkle_supp_factor: ";
    Printer<float>::stream(s, indent + "  ", v.angkle_supp_factor);
    s << indent << "foot_y: ";
    Printer<float>::stream(s, indent + "  ", v.foot_y);
    s << indent << "foot_x: ";
    Printer<float>::stream(s, indent + "  ", v.foot_x);
    s << indent << "stand_offset: ";
    Printer<float>::stream(s, indent + "  ", v.stand_offset);
    s << indent << "body_height: ";
    Printer<float>::stream(s, indent + "  ", v.body_height);
    s << indent << "step_height: ";
    Printer<float>::stream(s, indent + "  ", v.step_height);
    s << indent << "belly_roll: ";
    Printer<float>::stream(s, indent + "  ", v.belly_roll);
    s << indent << "belly_hip: ";
    Printer<float>::stream(s, indent + "  ", v.belly_hip);
    s << indent << "bodytilt: ";
    Printer<float>::stream(s, indent + "  ", v.bodytilt);
    s << indent << "ankleX_fact: ";
    Printer<float>::stream(s, indent + "  ", v.ankleX_fact);
    s << indent << "ankleX_deadband: ";
    Printer<float>::stream(s, indent + "  ", v.ankleX_deadband);
    s << indent << "ankleX_maxVal: ";
    Printer<float>::stream(s, indent + "  ", v.ankleX_maxVal);
    s << indent << "ankleY_fact: ";
    Printer<float>::stream(s, indent + "  ", v.ankleY_fact);
    s << indent << "ankleY_deadband: ";
    Printer<float>::stream(s, indent + "  ", v.ankleY_deadband);
    s << indent << "ankleY_maxVal: ";
    Printer<float>::stream(s, indent + "  ", v.ankleY_maxVal);
    s << indent << "kneeX_fact: ";
    Printer<float>::stream(s, indent + "  ", v.kneeX_fact);
    s << indent << "kneeX_deadband: ";
    Printer<float>::stream(s, indent + "  ", v.kneeX_deadband);
    s << indent << "kneeX_maxVal: ";
    Printer<float>::stream(s, indent + "  ", v.kneeX_maxVal);
    s << indent << "hipY_fact: ";
    Printer<float>::stream(s, indent + "  ", v.hipY_fact);
    s << indent << "hipY_deadband: ";
    Printer<float>::stream(s, indent + "  ", v.hipY_deadband);
    s << indent << "hipY_maxVal: ";
    Printer<float>::stream(s, indent + "  ", v.hipY_maxVal);
    s << indent << "armY_fact: ";
    Printer<float>::stream(s, indent + "  ", v.armY_fact);
    s << indent << "armY_deadband: ";
    Printer<float>::stream(s, indent + "  ", v.armY_deadband);
    s << indent << "armY_maxVal: ";
    Printer<float>::stream(s, indent + "  ", v.armY_maxVal);
    s << indent << "armX_fact: ";
    Printer<float>::stream(s, indent + "  ", v.armX_fact);
    s << indent << "armX_deadband: ";
    Printer<float>::stream(s, indent + "  ", v.armX_deadband);
    s << indent << "armX_maxVal: ";
    Printer<float>::stream(s, indent + "  ", v.armX_maxVal);
    s << indent << "ballPosX: ";
    Printer<float>::stream(s, indent + "  ", v.ballPosX);
    s << indent << "ballPosY: ";
    Printer<float>::stream(s, indent + "  ", v.ballPosY);
    s << indent << "ballPosZ: ";
    Printer<float>::stream(s, indent + "  ", v.ballPosZ);
    s << indent << "goalPosX: ";
    Printer<float>::stream(s, indent + "  ", v.goalPosX);
    s << indent << "goalPosY: ";
    Printer<float>::stream(s, indent + "  ", v.goalPosY);
    s << indent << "goalPosZ: ";
    Printer<float>::stream(s, indent + "  ", v.goalPosZ);
    s << indent << "power: ";
    Printer<float>::stream(s, indent + "  ", v.power);
    s << indent << "TRetract: ";
    Printer<float>::stream(s, indent + "  ", v.TRetract);
    s << indent << "TKick: ";
    Printer<float>::stream(s, indent + "  ", v.TKick);
    s << indent << "TRising: ";
    Printer<float>::stream(s, indent + "  ", v.TRising);
    s << indent << "TDown: ";
    Printer<float>::stream(s, indent + "  ", v.TDown);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZMP_WALKING_MODULE_MSGS_MESSAGE_ZMPWALKINGPARAM_H
