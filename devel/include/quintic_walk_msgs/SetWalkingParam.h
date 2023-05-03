// Generated by gencpp from file quintic_walk_msgs/SetWalkingParam.msg
// DO NOT EDIT!


#ifndef QUINTIC_WALK_MSGS_MESSAGE_SETWALKINGPARAM_H
#define QUINTIC_WALK_MSGS_MESSAGE_SETWALKINGPARAM_H

#include <ros/service_traits.h>


#include <quintic_walk_msgs/SetWalkingParamRequest.h>
#include <quintic_walk_msgs/SetWalkingParamResponse.h>


namespace quintic_walk_msgs
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
} // namespace quintic_walk_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::quintic_walk_msgs::SetWalkingParam > {
  static const char* value()
  {
    return "a9df0fee7c93a59d59f41082ca94adfb";
  }

  static const char* value(const ::quintic_walk_msgs::SetWalkingParam&) { return value(); }
};

template<>
struct DataType< ::quintic_walk_msgs::SetWalkingParam > {
  static const char* value()
  {
    return "quintic_walk_msgs/SetWalkingParam";
  }

  static const char* value(const ::quintic_walk_msgs::SetWalkingParam&) { return value(); }
};


// service_traits::MD5Sum< ::quintic_walk_msgs::SetWalkingParamRequest> should match
// service_traits::MD5Sum< ::quintic_walk_msgs::SetWalkingParam >
template<>
struct MD5Sum< ::quintic_walk_msgs::SetWalkingParamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::quintic_walk_msgs::SetWalkingParam >::value();
  }
  static const char* value(const ::quintic_walk_msgs::SetWalkingParamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::quintic_walk_msgs::SetWalkingParamRequest> should match
// service_traits::DataType< ::quintic_walk_msgs::SetWalkingParam >
template<>
struct DataType< ::quintic_walk_msgs::SetWalkingParamRequest>
{
  static const char* value()
  {
    return DataType< ::quintic_walk_msgs::SetWalkingParam >::value();
  }
  static const char* value(const ::quintic_walk_msgs::SetWalkingParamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::quintic_walk_msgs::SetWalkingParamResponse> should match
// service_traits::MD5Sum< ::quintic_walk_msgs::SetWalkingParam >
template<>
struct MD5Sum< ::quintic_walk_msgs::SetWalkingParamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::quintic_walk_msgs::SetWalkingParam >::value();
  }
  static const char* value(const ::quintic_walk_msgs::SetWalkingParamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::quintic_walk_msgs::SetWalkingParamResponse> should match
// service_traits::DataType< ::quintic_walk_msgs::SetWalkingParam >
template<>
struct DataType< ::quintic_walk_msgs::SetWalkingParamResponse>
{
  static const char* value()
  {
    return DataType< ::quintic_walk_msgs::SetWalkingParam >::value();
  }
  static const char* value(const ::quintic_walk_msgs::SetWalkingParamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // QUINTIC_WALK_MSGS_MESSAGE_SETWALKINGPARAM_H
