// Generated by gencpp from file my_robot_tut3/Navigate2DResult.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_TUT3_MESSAGE_NAVIGATE2DRESULT_H
#define MY_ROBOT_TUT3_MESSAGE_NAVIGATE2DRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_robot_tut3
{
template <class ContainerAllocator>
struct Navigate2DResult_
{
  typedef Navigate2DResult_<ContainerAllocator> Type;

  Navigate2DResult_()
    : elasped_time(0.0)  {
    }
  Navigate2DResult_(const ContainerAllocator& _alloc)
    : elasped_time(0.0)  {
  (void)_alloc;
    }



   typedef float _elasped_time_type;
  _elasped_time_type elasped_time;





  typedef boost::shared_ptr< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> const> ConstPtr;

}; // struct Navigate2DResult_

typedef ::my_robot_tut3::Navigate2DResult_<std::allocator<void> > Navigate2DResult;

typedef boost::shared_ptr< ::my_robot_tut3::Navigate2DResult > Navigate2DResultPtr;
typedef boost::shared_ptr< ::my_robot_tut3::Navigate2DResult const> Navigate2DResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator1> & lhs, const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator2> & rhs)
{
  return lhs.elasped_time == rhs.elasped_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator1> & lhs, const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_tut3

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "db081717cf33b98580276ae311236046";
  }

  static const char* value(const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdb081717cf33b985ULL;
  static const uint64_t static_value2 = 0x80276ae311236046ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_tut3/Navigate2DResult";
  }

  static const char* value(const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#Result\n"
"float32 elasped_time\n"
;
  }

  static const char* value(const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.elasped_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Navigate2DResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_tut3::Navigate2DResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_tut3::Navigate2DResult_<ContainerAllocator>& v)
  {
    s << indent << "elasped_time: ";
    Printer<float>::stream(s, indent + "  ", v.elasped_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_TUT3_MESSAGE_NAVIGATE2DRESULT_H
