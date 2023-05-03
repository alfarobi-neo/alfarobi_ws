// Generated by gencpp from file filter_msgs/filter.msg
// DO NOT EDIT!


#ifndef FILTER_MSGS_MESSAGE_FILTER_H
#define FILTER_MSGS_MESSAGE_FILTER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace filter_msgs
{
template <class ContainerAllocator>
struct filter_
{
  typedef filter_<ContainerAllocator> Type;

  filter_()
    : fltr_sesudah(0.0)
    , fltr_sebelum(0.0)
    , fltr_sesudah_EMAV2(0.0)  {
    }
  filter_(const ContainerAllocator& _alloc)
    : fltr_sesudah(0.0)
    , fltr_sebelum(0.0)
    , fltr_sesudah_EMAV2(0.0)  {
  (void)_alloc;
    }



   typedef float _fltr_sesudah_type;
  _fltr_sesudah_type fltr_sesudah;

   typedef float _fltr_sebelum_type;
  _fltr_sebelum_type fltr_sebelum;

   typedef float _fltr_sesudah_EMAV2_type;
  _fltr_sesudah_EMAV2_type fltr_sesudah_EMAV2;





  typedef boost::shared_ptr< ::filter_msgs::filter_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::filter_msgs::filter_<ContainerAllocator> const> ConstPtr;

}; // struct filter_

typedef ::filter_msgs::filter_<std::allocator<void> > filter;

typedef boost::shared_ptr< ::filter_msgs::filter > filterPtr;
typedef boost::shared_ptr< ::filter_msgs::filter const> filterConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::filter_msgs::filter_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::filter_msgs::filter_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::filter_msgs::filter_<ContainerAllocator1> & lhs, const ::filter_msgs::filter_<ContainerAllocator2> & rhs)
{
  return lhs.fltr_sesudah == rhs.fltr_sesudah &&
    lhs.fltr_sebelum == rhs.fltr_sebelum &&
    lhs.fltr_sesudah_EMAV2 == rhs.fltr_sesudah_EMAV2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::filter_msgs::filter_<ContainerAllocator1> & lhs, const ::filter_msgs::filter_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace filter_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::filter_msgs::filter_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::filter_msgs::filter_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::filter_msgs::filter_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::filter_msgs::filter_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::filter_msgs::filter_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::filter_msgs::filter_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::filter_msgs::filter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce602acead3a15d0f2986f47f81ff818";
  }

  static const char* value(const ::filter_msgs::filter_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce602acead3a15d0ULL;
  static const uint64_t static_value2 = 0xf2986f47f81ff818ULL;
};

template<class ContainerAllocator>
struct DataType< ::filter_msgs::filter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "filter_msgs/filter";
  }

  static const char* value(const ::filter_msgs::filter_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::filter_msgs::filter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 fltr_sesudah\n"
"float32 fltr_sebelum\n"
"float32 fltr_sesudah_EMAV2\n"
;
  }

  static const char* value(const ::filter_msgs::filter_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::filter_msgs::filter_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fltr_sesudah);
      stream.next(m.fltr_sebelum);
      stream.next(m.fltr_sesudah_EMAV2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct filter_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::filter_msgs::filter_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::filter_msgs::filter_<ContainerAllocator>& v)
  {
    s << indent << "fltr_sesudah: ";
    Printer<float>::stream(s, indent + "  ", v.fltr_sesudah);
    s << indent << "fltr_sebelum: ";
    Printer<float>::stream(s, indent + "  ", v.fltr_sebelum);
    s << indent << "fltr_sesudah_EMAV2: ";
    Printer<float>::stream(s, indent + "  ", v.fltr_sesudah_EMAV2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FILTER_MSGS_MESSAGE_FILTER_H
