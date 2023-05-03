// Generated by gencpp from file humanoid_league_msgs/AdditionalServoData.msg
// DO NOT EDIT!


#ifndef HUMANOID_LEAGUE_MSGS_MESSAGE_ADDITIONALSERVODATA_H
#define HUMANOID_LEAGUE_MSGS_MESSAGE_ADDITIONALSERVODATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Temperature.h>

namespace humanoid_league_msgs
{
template <class ContainerAllocator>
struct AdditionalServoData_
{
  typedef AdditionalServoData_<ContainerAllocator> Type;

  AdditionalServoData_()
    : voltage()
    , temperature()  {
    }
  AdditionalServoData_(const ContainerAllocator& _alloc)
    : voltage(_alloc)
    , temperature(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _voltage_type;
  _voltage_type voltage;

   typedef std::vector< ::sensor_msgs::Temperature_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::sensor_msgs::Temperature_<ContainerAllocator> >> _temperature_type;
  _temperature_type temperature;





  typedef boost::shared_ptr< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> const> ConstPtr;

}; // struct AdditionalServoData_

typedef ::humanoid_league_msgs::AdditionalServoData_<std::allocator<void> > AdditionalServoData;

typedef boost::shared_ptr< ::humanoid_league_msgs::AdditionalServoData > AdditionalServoDataPtr;
typedef boost::shared_ptr< ::humanoid_league_msgs::AdditionalServoData const> AdditionalServoDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator1> & lhs, const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator2> & rhs)
{
  return lhs.voltage == rhs.voltage &&
    lhs.temperature == rhs.temperature;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator1> & lhs, const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace humanoid_league_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "35c09e22724f03879e9711ba15df9d42";
  }

  static const char* value(const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x35c09e22724f0387ULL;
  static const uint64_t static_value2 = 0x9e9711ba15df9d42ULL;
};

template<class ContainerAllocator>
struct DataType< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "humanoid_league_msgs/AdditionalServoData";
  }

  static const char* value(const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message provides additional data from the servos, which is not included in JointState.msg\n"
"# Should mainly used for monitoring and debug purposes\n"
"\n"
"# Setting the value to -1 means there is no data from this motor\n"
"float32[] voltage\n"
"sensor_msgs/Temperature[] temperature\n"
"================================================================================\n"
"MSG: sensor_msgs/Temperature\n"
" # Single temperature reading.\n"
"\n"
" Header header           # timestamp is the time the temperature was measured\n"
"                         # frame_id is the location of the temperature reading\n"
"\n"
" float64 temperature     # Measurement of the Temperature in Degrees Celsius\n"
"\n"
" float64 variance        # 0 is interpreted as variance unknown\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.voltage);
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AdditionalServoData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::humanoid_league_msgs::AdditionalServoData_<ContainerAllocator>& v)
  {
    s << indent << "voltage[]" << std::endl;
    for (size_t i = 0; i < v.voltage.size(); ++i)
    {
      s << indent << "  voltage[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.voltage[i]);
    }
    s << indent << "temperature[]" << std::endl;
    for (size_t i = 0; i < v.temperature.size(); ++i)
    {
      s << indent << "  temperature[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::sensor_msgs::Temperature_<ContainerAllocator> >::stream(s, indent + "    ", v.temperature[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUMANOID_LEAGUE_MSGS_MESSAGE_ADDITIONALSERVODATA_H
