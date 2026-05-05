cmake_minimum_required(VERSION 3.16.3)
project(automotive_sensor_msgs)

# try to find out which ros version is sourced
if(DEFINED ENV{ROS_VERSION} AND "$ENV{ROS_VERSION}" STREQUAL "1")
  include(ros1.cmake)
elseif(DEFINED ENV{ROS_VERSION} AND "$ENV{ROS_VERSION}" STREQUAL "2")
  include(ros2.cmake)
else()
  message(FATAL_ERROR "ROS build tool not found.")
endif()
