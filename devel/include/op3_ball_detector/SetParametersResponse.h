// Generated by gencpp from file op3_ball_detector/SetParametersResponse.msg
// DO NOT EDIT!


#ifndef OP3_BALL_DETECTOR_MESSAGE_SETPARAMETERSRESPONSE_H
#define OP3_BALL_DETECTOR_MESSAGE_SETPARAMETERSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <op3_ball_detector/BallDetectorParams.h>

namespace op3_ball_detector
{
template <class ContainerAllocator>
struct SetParametersResponse_
{
  typedef SetParametersResponse_<ContainerAllocator> Type;

  SetParametersResponse_()
    : returns()  {
    }
  SetParametersResponse_(const ContainerAllocator& _alloc)
    : returns(_alloc)  {
  (void)_alloc;
    }



   typedef  ::op3_ball_detector::BallDetectorParams_<ContainerAllocator>  _returns_type;
  _returns_type returns;





  typedef boost::shared_ptr< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetParametersResponse_

typedef ::op3_ball_detector::SetParametersResponse_<std::allocator<void> > SetParametersResponse;

typedef boost::shared_ptr< ::op3_ball_detector::SetParametersResponse > SetParametersResponsePtr;
typedef boost::shared_ptr< ::op3_ball_detector::SetParametersResponse const> SetParametersResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace op3_ball_detector

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'op3_ball_detector': ['/home/alfarobi/alfarobi_ws/src/ALFAROBI-Vision/op3_ball_detector/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "17229f06a68a0d87fd525e4d8bdaee90";
  }

  static const char* value(const ::op3_ball_detector::SetParametersResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x17229f06a68a0d87ULL;
  static const uint64_t static_value2 = 0xfd525e4d8bdaee90ULL;
};

template<class ContainerAllocator>
struct DataType< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "op3_ball_detector/SetParametersResponse";
  }

  static const char* value(const ::op3_ball_detector::SetParametersResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BallDetectorParams  returns\n\
\n\
\n\
================================================================================\n\
MSG: op3_ball_detector/BallDetectorParams\n\
# This represents the parameters of ball_detector\n\
\n\
uint32  gaussian_blur_size      # only odd number, 1 - 11\n\
float32 gaussian_blur_sigma     # 1 - 5\n\
float32 canny_edge_th           # 50 - 200\n\
float32 hough_accum_resolution  # 1 - 8\n\
float32 hough_accum_th          # 10 - 200\n\
float32 min_circle_dist         # 10 - 200\n\
uint32  min_radius              # 10 - 200\n\
uint32  max_radius              # 100 - 600\n\
uint32  filter_h_min            # 0 - 359\n\
uint32  filter_h_max\n\
uint32  filter_s_min            # 0 - 255\n\
uint32  filter_s_max\n\
uint32  filter_v_min            # 0 - 255\n\
uint32  filter_v_max\n\
uint32  ellipse_size            # 1 - 9\n\
";
  }

  static const char* value(const ::op3_ball_detector::SetParametersResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.returns);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetParametersResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::op3_ball_detector::SetParametersResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::op3_ball_detector::SetParametersResponse_<ContainerAllocator>& v)
  {
    s << indent << "returns: ";
    s << std::endl;
    Printer< ::op3_ball_detector::BallDetectorParams_<ContainerAllocator> >::stream(s, indent + "  ", v.returns);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OP3_BALL_DETECTOR_MESSAGE_SETPARAMETERSRESPONSE_H
