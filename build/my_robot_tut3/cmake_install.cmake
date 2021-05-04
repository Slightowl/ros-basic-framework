# Install script for directory: /home/sam-robotics/Desktop/catkin_ws/src/my_robot_tut3

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sam-robotics/Desktop/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_tut3/srv" TYPE FILE FILES
    "/home/sam-robotics/Desktop/catkin_ws/src/my_robot_tut3/srv/OddEvenCheck.srv"
    "/home/sam-robotics/Desktop/catkin_ws/src/my_robot_tut3/srv/TurnCamera.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_tut3/action" TYPE FILE FILES "/home/sam-robotics/Desktop/catkin_ws/src/my_robot_tut3/action/Navigate2D.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_tut3/msg" TYPE FILE FILES
    "/home/sam-robotics/Desktop/catkin_ws/devel/share/my_robot_tut3/msg/Navigate2DAction.msg"
    "/home/sam-robotics/Desktop/catkin_ws/devel/share/my_robot_tut3/msg/Navigate2DActionGoal.msg"
    "/home/sam-robotics/Desktop/catkin_ws/devel/share/my_robot_tut3/msg/Navigate2DActionResult.msg"
    "/home/sam-robotics/Desktop/catkin_ws/devel/share/my_robot_tut3/msg/Navigate2DActionFeedback.msg"
    "/home/sam-robotics/Desktop/catkin_ws/devel/share/my_robot_tut3/msg/Navigate2DGoal.msg"
    "/home/sam-robotics/Desktop/catkin_ws/devel/share/my_robot_tut3/msg/Navigate2DResult.msg"
    "/home/sam-robotics/Desktop/catkin_ws/devel/share/my_robot_tut3/msg/Navigate2DFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_tut3/cmake" TYPE FILE FILES "/home/sam-robotics/Desktop/catkin_ws/build/my_robot_tut3/catkin_generated/installspace/my_robot_tut3-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sam-robotics/Desktop/catkin_ws/devel/include/my_robot_tut3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sam-robotics/Desktop/catkin_ws/devel/share/roseus/ros/my_robot_tut3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sam-robotics/Desktop/catkin_ws/devel/share/common-lisp/ros/my_robot_tut3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sam-robotics/Desktop/catkin_ws/devel/share/gennodejs/ros/my_robot_tut3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/sam-robotics/Desktop/catkin_ws/devel/lib/python3/dist-packages/my_robot_tut3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/sam-robotics/Desktop/catkin_ws/devel/lib/python3/dist-packages/my_robot_tut3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sam-robotics/Desktop/catkin_ws/build/my_robot_tut3/catkin_generated/installspace/my_robot_tut3.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_tut3/cmake" TYPE FILE FILES "/home/sam-robotics/Desktop/catkin_ws/build/my_robot_tut3/catkin_generated/installspace/my_robot_tut3-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_tut3/cmake" TYPE FILE FILES
    "/home/sam-robotics/Desktop/catkin_ws/build/my_robot_tut3/catkin_generated/installspace/my_robot_tut3Config.cmake"
    "/home/sam-robotics/Desktop/catkin_ws/build/my_robot_tut3/catkin_generated/installspace/my_robot_tut3Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_tut3" TYPE FILE FILES "/home/sam-robotics/Desktop/catkin_ws/src/my_robot_tut3/package.xml")
endif()

