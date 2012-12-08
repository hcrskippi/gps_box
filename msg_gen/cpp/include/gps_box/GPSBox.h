/* Auto-generated by genmsg_cpp for file /home/human/ros_workspace/gps_box/msg/GPSBox.msg */
#ifndef GPS_BOX_MESSAGE_GPSBOX_H
#define GPS_BOX_MESSAGE_GPSBOX_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace gps_box
{
template <class ContainerAllocator>
struct GPSBox_ {
  typedef GPSBox_<ContainerAllocator> Type;

  GPSBox_()
  : Top_Left_Latitude(0.0)
  , Top_Left_Longitude(0.0)
  , Bot_Right_Latitude(0.0)
  , Bot_Right_Longitude(0.0)
  {
  }

  GPSBox_(const ContainerAllocator& _alloc)
  : Top_Left_Latitude(0.0)
  , Top_Left_Longitude(0.0)
  , Bot_Right_Latitude(0.0)
  , Bot_Right_Longitude(0.0)
  {
  }

  typedef double _Top_Left_Latitude_type;
  double Top_Left_Latitude;

  typedef double _Top_Left_Longitude_type;
  double Top_Left_Longitude;

  typedef double _Bot_Right_Latitude_type;
  double Bot_Right_Latitude;

  typedef double _Bot_Right_Longitude_type;
  double Bot_Right_Longitude;


  typedef boost::shared_ptr< ::gps_box::GPSBox_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gps_box::GPSBox_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct GPSBox
typedef  ::gps_box::GPSBox_<std::allocator<void> > GPSBox;

typedef boost::shared_ptr< ::gps_box::GPSBox> GPSBoxPtr;
typedef boost::shared_ptr< ::gps_box::GPSBox const> GPSBoxConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::gps_box::GPSBox_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::gps_box::GPSBox_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace gps_box

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::gps_box::GPSBox_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::gps_box::GPSBox_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::gps_box::GPSBox_<ContainerAllocator> > {
  static const char* value() 
  {
    return "08778a566d2fdc56b1b23a2a1894f708";
  }

  static const char* value(const  ::gps_box::GPSBox_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x08778a566d2fdc56ULL;
  static const uint64_t static_value2 = 0xb1b23a2a1894f708ULL;
};

template<class ContainerAllocator>
struct DataType< ::gps_box::GPSBox_<ContainerAllocator> > {
  static const char* value() 
  {
    return "gps_box/GPSBox";
  }

  static const char* value(const  ::gps_box::GPSBox_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::gps_box::GPSBox_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float64 Top_Left_Latitude\n\
float64 Top_Left_Longitude\n\
\n\
float64 Bot_Right_Latitude\n\
float64 Bot_Right_Longitude\n\
\n\
";
  }

  static const char* value(const  ::gps_box::GPSBox_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::gps_box::GPSBox_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::gps_box::GPSBox_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.Top_Left_Latitude);
    stream.next(m.Top_Left_Longitude);
    stream.next(m.Bot_Right_Latitude);
    stream.next(m.Bot_Right_Longitude);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GPSBox_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gps_box::GPSBox_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::gps_box::GPSBox_<ContainerAllocator> & v) 
  {
    s << indent << "Top_Left_Latitude: ";
    Printer<double>::stream(s, indent + "  ", v.Top_Left_Latitude);
    s << indent << "Top_Left_Longitude: ";
    Printer<double>::stream(s, indent + "  ", v.Top_Left_Longitude);
    s << indent << "Bot_Right_Latitude: ";
    Printer<double>::stream(s, indent + "  ", v.Bot_Right_Latitude);
    s << indent << "Bot_Right_Longitude: ";
    Printer<double>::stream(s, indent + "  ", v.Bot_Right_Longitude);
  }
};


} // namespace message_operations
} // namespace ros

#endif // GPS_BOX_MESSAGE_GPSBOX_H

