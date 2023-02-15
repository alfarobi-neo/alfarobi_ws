// Generated by gencpp from file feedback_msgs/SetFeedbackParam.msg
// DO NOT EDIT!


#ifndef FEEDBACK_MSGS_MESSAGE_SETFEEDBACKPARAM_H
#define FEEDBACK_MSGS_MESSAGE_SETFEEDBACKPARAM_H

#include <ros/service_traits.h>


#include <feedback_msgs/SetFeedbackParamRequest.h>
#include <feedback_msgs/SetFeedbackParamResponse.h>


namespace feedback_msgs
{

struct SetFeedbackParam
{

typedef SetFeedbackParamRequest Request;
typedef SetFeedbackParamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetFeedbackParam
} // namespace feedback_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::feedback_msgs::SetFeedbackParam > {
  static const char* value()
  {
    return "9ad071cebaaf92d9d2cb3443b3bd44a4";
  }

  static const char* value(const ::feedback_msgs::SetFeedbackParam&) { return value(); }
};

template<>
struct DataType< ::feedback_msgs::SetFeedbackParam > {
  static const char* value()
  {
    return "feedback_msgs/SetFeedbackParam";
  }

  static const char* value(const ::feedback_msgs::SetFeedbackParam&) { return value(); }
};


// service_traits::MD5Sum< ::feedback_msgs::SetFeedbackParamRequest> should match 
// service_traits::MD5Sum< ::feedback_msgs::SetFeedbackParam > 
template<>
struct MD5Sum< ::feedback_msgs::SetFeedbackParamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::feedback_msgs::SetFeedbackParam >::value();
  }
  static const char* value(const ::feedback_msgs::SetFeedbackParamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::feedback_msgs::SetFeedbackParamRequest> should match 
// service_traits::DataType< ::feedback_msgs::SetFeedbackParam > 
template<>
struct DataType< ::feedback_msgs::SetFeedbackParamRequest>
{
  static const char* value()
  {
    return DataType< ::feedback_msgs::SetFeedbackParam >::value();
  }
  static const char* value(const ::feedback_msgs::SetFeedbackParamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::feedback_msgs::SetFeedbackParamResponse> should match 
// service_traits::MD5Sum< ::feedback_msgs::SetFeedbackParam > 
template<>
struct MD5Sum< ::feedback_msgs::SetFeedbackParamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::feedback_msgs::SetFeedbackParam >::value();
  }
  static const char* value(const ::feedback_msgs::SetFeedbackParamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::feedback_msgs::SetFeedbackParamResponse> should match 
// service_traits::DataType< ::feedback_msgs::SetFeedbackParam > 
template<>
struct DataType< ::feedback_msgs::SetFeedbackParamResponse>
{
  static const char* value()
  {
    return DataType< ::feedback_msgs::SetFeedbackParam >::value();
  }
  static const char* value(const ::feedback_msgs::SetFeedbackParamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FEEDBACK_MSGS_MESSAGE_SETFEEDBACKPARAM_H
