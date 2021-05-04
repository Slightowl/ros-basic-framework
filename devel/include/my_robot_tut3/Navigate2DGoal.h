// Generated by gencpp from file my_robot_tut3/Navigate2DGoal.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_TUT3_MESSAGE_NAVIGATE2DGOAL_H
#define MY_ROBOT_TUT3_MESSAGE_NAVIGATE2DGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace my_robot_tut3
{
template <class ContainerAllocator>
struct Navigate2DGoal_
{
  typedef Navigate2DGoal_<ContainerAllocator> Type;

  Navigate2DGoal_()
    : point()  {
    }
  Navigate2DGoal_(const ContainerAllocator& _alloc)
    : point(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_type;
  _point_type point;





  typedef boost::shared_ptr< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> const> ConstPtr;

}; // struct Navigate2DGoal_

typedef ::my_robot_tut3::Navigate2DGoal_<std::allocator<void> > Navigate2DGoal;

typedef boost::shared_ptr< ::my_robot_tut3::Navigate2DGoal > Navigate2DGoalPtr;
typedef boost::shared_ptr< ::my_robot_tut3::Navigate2DGoal const> Navigate2DGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator1> & lhs, const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator2> & rhs)
{
  return lhs.point == rhs.point;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator1> & lhs, const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_tut3

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a7c84ff13976aa04656e56e300124444";
  }

  static const char* value(const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa7c84ff13976aa04ULL;
  static const uint64_t static_value2 = 0x656e56e300124444ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_tut3/Navigate2DGoal";
  }

  static const char* value(const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#Goal\n"
"geometry_msgs/Point point\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Navigate2DGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_tut3::Navigate2DGoal_<ContainerAllocator>& v)
  {
    s << indent << "point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_TUT3_MESSAGE_NAVIGATE2DGOAL_H
