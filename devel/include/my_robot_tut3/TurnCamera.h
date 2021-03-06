// Generated by gencpp from file my_robot_tut3/TurnCamera.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_TUT3_MESSAGE_TURNCAMERA_H
#define MY_ROBOT_TUT3_MESSAGE_TURNCAMERA_H

#include <ros/service_traits.h>


#include <my_robot_tut3/TurnCameraRequest.h>
#include <my_robot_tut3/TurnCameraResponse.h>


namespace my_robot_tut3
{

struct TurnCamera
{

typedef TurnCameraRequest Request;
typedef TurnCameraResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TurnCamera
} // namespace my_robot_tut3


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_robot_tut3::TurnCamera > {
  static const char* value()
  {
    return "d2bd6d55eaa6b367037dff843fa7a83c";
  }

  static const char* value(const ::my_robot_tut3::TurnCamera&) { return value(); }
};

template<>
struct DataType< ::my_robot_tut3::TurnCamera > {
  static const char* value()
  {
    return "my_robot_tut3/TurnCamera";
  }

  static const char* value(const ::my_robot_tut3::TurnCamera&) { return value(); }
};


// service_traits::MD5Sum< ::my_robot_tut3::TurnCameraRequest> should match
// service_traits::MD5Sum< ::my_robot_tut3::TurnCamera >
template<>
struct MD5Sum< ::my_robot_tut3::TurnCameraRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_robot_tut3::TurnCamera >::value();
  }
  static const char* value(const ::my_robot_tut3::TurnCameraRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_robot_tut3::TurnCameraRequest> should match
// service_traits::DataType< ::my_robot_tut3::TurnCamera >
template<>
struct DataType< ::my_robot_tut3::TurnCameraRequest>
{
  static const char* value()
  {
    return DataType< ::my_robot_tut3::TurnCamera >::value();
  }
  static const char* value(const ::my_robot_tut3::TurnCameraRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_robot_tut3::TurnCameraResponse> should match
// service_traits::MD5Sum< ::my_robot_tut3::TurnCamera >
template<>
struct MD5Sum< ::my_robot_tut3::TurnCameraResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_robot_tut3::TurnCamera >::value();
  }
  static const char* value(const ::my_robot_tut3::TurnCameraResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_robot_tut3::TurnCameraResponse> should match
// service_traits::DataType< ::my_robot_tut3::TurnCamera >
template<>
struct DataType< ::my_robot_tut3::TurnCameraResponse>
{
  static const char* value()
  {
    return DataType< ::my_robot_tut3::TurnCamera >::value();
  }
  static const char* value(const ::my_robot_tut3::TurnCameraResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_ROBOT_TUT3_MESSAGE_TURNCAMERA_H
