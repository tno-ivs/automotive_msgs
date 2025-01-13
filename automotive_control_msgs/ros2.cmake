cmake_minimum_required(VERSION 3.16.3)
project(automotive_control_msgs)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(action_msgs REQUIRED)
find_package(actionlib_msgs REQUIRED)

set(action_files
  "action/Longitudinal.action"
  "action/SteeringWheel.action"
  "action/GearChange.action"
)

# NOTE: msgs are defined because:
#       - ros1_bridge cannot bridge actions
#       - Mathworkds doesnt support actions
set(msg_files
  "msg/LongitudinalActionGoal.msg"
  "msg/LongitudinalActionFeedback.msg"
  "msg/LongitudinalActionResult.msg"
  "msg/LongitudinalGoal.msg"
  "msg/LongitudinalFeedback.msg"
  "msg/LongitudinalResult.msg"

  "msg/SteeringWheelActionGoal.msg"
  "msg/SteeringWheelActionFeedback.msg"
  "msg/SteeringWheelActionResult.msg"
  "msg/SteeringWheelGoal.msg"
  "msg/SteeringWheelFeedback.msg"
  "msg/SteeringWheelResult.msg"

  "msg/GearChangeActionGoal.msg"
  "msg/GearChangeActionFeedback.msg"
  "msg/GearChangeActionResult.msg"
  "msg/GearChangeGoal.msg"
  "msg/GearChangeFeedback.msg"
  "msg/GearChangeResult.msg"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${action_files}
  ${msg_files}
  DEPENDENCIES
  std_msgs
  actionlib_msgs
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
