// Generated by gencpp from file dnn_detector/DnnDetectorParams.msg
// DO NOT EDIT!


#ifndef DNN_DETECTOR_MESSAGE_DNNDETECTORPARAMS_H
#define DNN_DETECTOR_MESSAGE_DNNDETECTORPARAMS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dnn_detector
{
template <class ContainerAllocator>
struct DnnDetectorParams_
{
  typedef DnnDetectorParams_<ContainerAllocator> Type;

  DnnDetectorParams_()
    : scaling(0)
    , confidence(0.0)
    , mean_val(0.0)  {
    }
  DnnDetectorParams_(const ContainerAllocator& _alloc)
    : scaling(0)
    , confidence(0.0)
    , mean_val(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _scaling_type;
  _scaling_type scaling;

   typedef float _confidence_type;
  _confidence_type confidence;

   typedef float _mean_val_type;
  _mean_val_type mean_val;





  typedef boost::shared_ptr< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> const> ConstPtr;

}; // struct DnnDetectorParams_

typedef ::dnn_detector::DnnDetectorParams_<std::allocator<void> > DnnDetectorParams;

typedef boost::shared_ptr< ::dnn_detector::DnnDetectorParams > DnnDetectorParamsPtr;
typedef boost::shared_ptr< ::dnn_detector::DnnDetectorParams const> DnnDetectorParamsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dnn_detector::DnnDetectorParams_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dnn_detector

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'dnn_detector': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/dnn_detector/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d7ac01d16dc32137fc1567bc7287ecf5";
  }

  static const char* value(const ::dnn_detector::DnnDetectorParams_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd7ac01d16dc32137ULL;
  static const uint64_t static_value2 = 0xfc1567bc7287ecf5ULL;
};

template<class ContainerAllocator>
struct DataType< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnn_detector/DnnDetectorParams";
  }

  static const char* value(const ::dnn_detector::DnnDetectorParams_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This represents the parameters of ball_detector\n\
\n\
uint32  scaling\n\
float32 confidence\n\
float32 mean_val\n\
";
  }

  static const char* value(const ::dnn_detector::DnnDetectorParams_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.scaling);
      stream.next(m.confidence);
      stream.next(m.mean_val);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DnnDetectorParams_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dnn_detector::DnnDetectorParams_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dnn_detector::DnnDetectorParams_<ContainerAllocator>& v)
  {
    s << indent << "scaling: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.scaling);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
    s << indent << "mean_val: ";
    Printer<float>::stream(s, indent + "  ", v.mean_val);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNN_DETECTOR_MESSAGE_DNNDETECTORPARAMS_H
