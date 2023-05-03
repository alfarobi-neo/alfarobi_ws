// Generated by gencpp from file robotis_controller_msgs/SetJointModule.msg
// DO NOT EDIT!


#ifndef ROBOTIS_CONTROLLER_MSGS_MESSAGE_SETJOINTMODULE_H
#define ROBOTIS_CONTROLLER_MSGS_MESSAGE_SETJOINTMODULE_H

#include <ros/service_traits.h>


#include <robotis_controller_msgs/SetJointModuleRequest.h>
#include <robotis_controller_msgs/SetJointModuleResponse.h>


namespace robotis_controller_msgs
{

struct SetJointModule
{

typedef SetJointModuleRequest Request;
typedef SetJointModuleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetJointModule
} // namespace robotis_controller_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robotis_controller_msgs::SetJointModule > {
  static const char* value()
  {
    return "018bd00fbf52c888e80425821afd0a3d";
  }

  static const char* value(const ::robotis_controller_msgs::SetJointModule&) { return value(); }
};

template<>
struct DataType< ::robotis_controller_msgs::SetJointModule > {
  static const char* value()
  {
    return "robotis_controller_msgs/SetJointModule";
  }

  static const char* value(const ::robotis_controller_msgs::SetJointModule&) { return value(); }
};


// service_traits::MD5Sum< ::robotis_controller_msgs::SetJointModuleRequest> should match
// service_traits::MD5Sum< ::robotis_controller_msgs::SetJointModule >
template<>
struct MD5Sum< ::robotis_controller_msgs::SetJointModuleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robotis_controller_msgs::SetJointModule >::value();
  }
  static const char* value(const ::robotis_controller_msgs::SetJointModuleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotis_controller_msgs::SetJointModuleRequest> should match
// service_traits::DataType< ::robotis_controller_msgs::SetJointModule >
template<>
struct DataType< ::robotis_controller_msgs::SetJointModuleRequest>
{
  static const char* value()
  {
    return DataType< ::robotis_controller_msgs::SetJointModule >::value();
  }
  static const char* value(const ::robotis_controller_msgs::SetJointModuleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robotis_controller_msgs::SetJointModuleResponse> should match
// service_traits::MD5Sum< ::robotis_controller_msgs::SetJointModule >
template<>
struct MD5Sum< ::robotis_controller_msgs::SetJointModuleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robotis_controller_msgs::SetJointModule >::value();
  }
  static const char* value(const ::robotis_controller_msgs::SetJointModuleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotis_controller_msgs::SetJointModuleResponse> should match
// service_traits::DataType< ::robotis_controller_msgs::SetJointModule >
template<>
struct DataType< ::robotis_controller_msgs::SetJointModuleResponse>
{
  static const char* value()
  {
    return DataType< ::robotis_controller_msgs::SetJointModule >::value();
  }
  static const char* value(const ::robotis_controller_msgs::SetJointModuleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOTIS_CONTROLLER_MSGS_MESSAGE_SETJOINTMODULE_H
