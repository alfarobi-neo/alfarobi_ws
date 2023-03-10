// Generated by gencpp from file mcl_localization/localization_param.msg
// DO NOT EDIT!


#ifndef MCL_LOCALIZATION_MESSAGE_LOCALIZATION_PARAM_H
#define MCL_LOCALIZATION_MESSAGE_LOCALIZATION_PARAM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mcl_localization
{
template <class ContainerAllocator>
struct localization_param_
{
  typedef localization_param_<ContainerAllocator> Type;

  localization_param_()
    : mcl_afast(0.0)
    , mcl_aslow(0.0)
    , mcl_variance(0.0)
    , mgauss_x(0.0)
    , mgauss_y(0.0)
    , mgauss_w(0.0)
    , vgauss_x(0.0)
    , vgauss_y(0.0)
    , mcl_wcmps(0.0)  {
    }
  localization_param_(const ContainerAllocator& _alloc)
    : mcl_afast(0.0)
    , mcl_aslow(0.0)
    , mcl_variance(0.0)
    , mgauss_x(0.0)
    , mgauss_y(0.0)
    , mgauss_w(0.0)
    , vgauss_x(0.0)
    , vgauss_y(0.0)
    , mcl_wcmps(0.0)  {
  (void)_alloc;
    }



   typedef double _mcl_afast_type;
  _mcl_afast_type mcl_afast;

   typedef double _mcl_aslow_type;
  _mcl_aslow_type mcl_aslow;

   typedef double _mcl_variance_type;
  _mcl_variance_type mcl_variance;

   typedef double _mgauss_x_type;
  _mgauss_x_type mgauss_x;

   typedef double _mgauss_y_type;
  _mgauss_y_type mgauss_y;

   typedef double _mgauss_w_type;
  _mgauss_w_type mgauss_w;

   typedef double _vgauss_x_type;
  _vgauss_x_type vgauss_x;

   typedef double _vgauss_y_type;
  _vgauss_y_type vgauss_y;

   typedef double _mcl_wcmps_type;
  _mcl_wcmps_type mcl_wcmps;





  typedef boost::shared_ptr< ::mcl_localization::localization_param_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mcl_localization::localization_param_<ContainerAllocator> const> ConstPtr;

}; // struct localization_param_

typedef ::mcl_localization::localization_param_<std::allocator<void> > localization_param;

typedef boost::shared_ptr< ::mcl_localization::localization_param > localization_paramPtr;
typedef boost::shared_ptr< ::mcl_localization::localization_param const> localization_paramConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mcl_localization::localization_param_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mcl_localization::localization_param_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mcl_localization

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'mcl_localization': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Localization/mcl_localization/msgs'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mcl_localization::localization_param_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mcl_localization::localization_param_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mcl_localization::localization_param_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mcl_localization::localization_param_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mcl_localization::localization_param_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mcl_localization::localization_param_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mcl_localization::localization_param_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8a9ad945fdf7665608477890478ed39f";
  }

  static const char* value(const ::mcl_localization::localization_param_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8a9ad945fdf76656ULL;
  static const uint64_t static_value2 = 0x08477890478ed39fULL;
};

template<class ContainerAllocator>
struct DataType< ::mcl_localization::localization_param_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mcl_localization/localization_param";
  }

  static const char* value(const ::mcl_localization::localization_param_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mcl_localization::localization_param_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 mcl_afast\n\
float64 mcl_aslow\n\
float64 mcl_variance\n\
float64 mgauss_x\n\
float64 mgauss_y\n\
float64 mgauss_w\n\
float64 vgauss_x\n\
float64 vgauss_y\n\
float64 mcl_wcmps\n\
";
  }

  static const char* value(const ::mcl_localization::localization_param_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mcl_localization::localization_param_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mcl_afast);
      stream.next(m.mcl_aslow);
      stream.next(m.mcl_variance);
      stream.next(m.mgauss_x);
      stream.next(m.mgauss_y);
      stream.next(m.mgauss_w);
      stream.next(m.vgauss_x);
      stream.next(m.vgauss_y);
      stream.next(m.mcl_wcmps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct localization_param_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mcl_localization::localization_param_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mcl_localization::localization_param_<ContainerAllocator>& v)
  {
    s << indent << "mcl_afast: ";
    Printer<double>::stream(s, indent + "  ", v.mcl_afast);
    s << indent << "mcl_aslow: ";
    Printer<double>::stream(s, indent + "  ", v.mcl_aslow);
    s << indent << "mcl_variance: ";
    Printer<double>::stream(s, indent + "  ", v.mcl_variance);
    s << indent << "mgauss_x: ";
    Printer<double>::stream(s, indent + "  ", v.mgauss_x);
    s << indent << "mgauss_y: ";
    Printer<double>::stream(s, indent + "  ", v.mgauss_y);
    s << indent << "mgauss_w: ";
    Printer<double>::stream(s, indent + "  ", v.mgauss_w);
    s << indent << "vgauss_x: ";
    Printer<double>::stream(s, indent + "  ", v.vgauss_x);
    s << indent << "vgauss_y: ";
    Printer<double>::stream(s, indent + "  ", v.vgauss_y);
    s << indent << "mcl_wcmps: ";
    Printer<double>::stream(s, indent + "  ", v.mcl_wcmps);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MCL_LOCALIZATION_MESSAGE_LOCALIZATION_PARAM_H
