// Generated by gencpp from file capture_step_module_msgs/SetWalkingParam.msg
// DO NOT EDIT!


#ifndef CAPTURE_STEP_MODULE_MSGS_MESSAGE_SETWALKINGPARAM_H
#define CAPTURE_STEP_MODULE_MSGS_MESSAGE_SETWALKINGPARAM_H

#include <ros/service_traits.h>


#include <capture_step_module_msgs/SetWalkingParamRequest.h>
#include <capture_step_module_msgs/SetWalkingParamResponse.h>


namespace capture_step_module_msgs
{

struct SetWalkingParam
{

typedef SetWalkingParamRequest Request;
typedef SetWalkingParamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetWalkingParam
} // namespace capture_step_module_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::capture_step_module_msgs::SetWalkingParam > {
  static const char* value()
  {
    return "ab5f117f502c3c3be9354e0bbdf4a4ea";
  }

  static const char* value(const ::capture_step_module_msgs::SetWalkingParam&) { return value(); }
};

template<>
struct DataType< ::capture_step_module_msgs::SetWalkingParam > {
  static const char* value()
  {
    return "capture_step_module_msgs/SetWalkingParam";
  }

  static const char* value(const ::capture_step_module_msgs::SetWalkingParam&) { return value(); }
};


// service_traits::MD5Sum< ::capture_step_module_msgs::SetWalkingParamRequest> should match
// service_traits::MD5Sum< ::capture_step_module_msgs::SetWalkingParam >
template<>
struct MD5Sum< ::capture_step_module_msgs::SetWalkingParamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::capture_step_module_msgs::SetWalkingParam >::value();
  }
  static const char* value(const ::capture_step_module_msgs::SetWalkingParamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::capture_step_module_msgs::SetWalkingParamRequest> should match
// service_traits::DataType< ::capture_step_module_msgs::SetWalkingParam >
template<>
struct DataType< ::capture_step_module_msgs::SetWalkingParamRequest>
{
  static const char* value()
  {
    return DataType< ::capture_step_module_msgs::SetWalkingParam >::value();
  }
  static const char* value(const ::capture_step_module_msgs::SetWalkingParamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::capture_step_module_msgs::SetWalkingParamResponse> should match
// service_traits::MD5Sum< ::capture_step_module_msgs::SetWalkingParam >
template<>
struct MD5Sum< ::capture_step_module_msgs::SetWalkingParamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::capture_step_module_msgs::SetWalkingParam >::value();
  }
  static const char* value(const ::capture_step_module_msgs::SetWalkingParamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::capture_step_module_msgs::SetWalkingParamResponse> should match
// service_traits::DataType< ::capture_step_module_msgs::SetWalkingParam >
template<>
struct DataType< ::capture_step_module_msgs::SetWalkingParamResponse>
{
  static const char* value()
  {
    return DataType< ::capture_step_module_msgs::SetWalkingParam >::value();
  }
  static const char* value(const ::capture_step_module_msgs::SetWalkingParamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAPTURE_STEP_MODULE_MSGS_MESSAGE_SETWALKINGPARAM_H
