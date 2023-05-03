// Generated by gencpp from file quintic_walk_msgs/GetWalkingParam.msg
// DO NOT EDIT!


#ifndef QUINTIC_WALK_MSGS_MESSAGE_GETWALKINGPARAM_H
#define QUINTIC_WALK_MSGS_MESSAGE_GETWALKINGPARAM_H

#include <ros/service_traits.h>


#include <quintic_walk_msgs/GetWalkingParamRequest.h>
#include <quintic_walk_msgs/GetWalkingParamResponse.h>


namespace quintic_walk_msgs
{

struct GetWalkingParam
{

typedef GetWalkingParamRequest Request;
typedef GetWalkingParamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetWalkingParam
} // namespace quintic_walk_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::quintic_walk_msgs::GetWalkingParam > {
  static const char* value()
  {
    return "cc37d4e8b602e9bf4bc31537e92d2dca";
  }

  static const char* value(const ::quintic_walk_msgs::GetWalkingParam&) { return value(); }
};

template<>
struct DataType< ::quintic_walk_msgs::GetWalkingParam > {
  static const char* value()
  {
    return "quintic_walk_msgs/GetWalkingParam";
  }

  static const char* value(const ::quintic_walk_msgs::GetWalkingParam&) { return value(); }
};


// service_traits::MD5Sum< ::quintic_walk_msgs::GetWalkingParamRequest> should match
// service_traits::MD5Sum< ::quintic_walk_msgs::GetWalkingParam >
template<>
struct MD5Sum< ::quintic_walk_msgs::GetWalkingParamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::quintic_walk_msgs::GetWalkingParam >::value();
  }
  static const char* value(const ::quintic_walk_msgs::GetWalkingParamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::quintic_walk_msgs::GetWalkingParamRequest> should match
// service_traits::DataType< ::quintic_walk_msgs::GetWalkingParam >
template<>
struct DataType< ::quintic_walk_msgs::GetWalkingParamRequest>
{
  static const char* value()
  {
    return DataType< ::quintic_walk_msgs::GetWalkingParam >::value();
  }
  static const char* value(const ::quintic_walk_msgs::GetWalkingParamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::quintic_walk_msgs::GetWalkingParamResponse> should match
// service_traits::MD5Sum< ::quintic_walk_msgs::GetWalkingParam >
template<>
struct MD5Sum< ::quintic_walk_msgs::GetWalkingParamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::quintic_walk_msgs::GetWalkingParam >::value();
  }
  static const char* value(const ::quintic_walk_msgs::GetWalkingParamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::quintic_walk_msgs::GetWalkingParamResponse> should match
// service_traits::DataType< ::quintic_walk_msgs::GetWalkingParam >
template<>
struct DataType< ::quintic_walk_msgs::GetWalkingParamResponse>
{
  static const char* value()
  {
    return DataType< ::quintic_walk_msgs::GetWalkingParam >::value();
  }
  static const char* value(const ::quintic_walk_msgs::GetWalkingParamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // QUINTIC_WALK_MSGS_MESSAGE_GETWALKINGPARAM_H
