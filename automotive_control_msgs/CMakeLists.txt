cmake_minimum_required(VERSION 2.8.3)
project(automotive_control_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
  actionlib_msgs
)

# Generate messages in the 'msg' folder
add_action_files(DIRECTORY msg action FILES 
    Longitudinal.action
    SteeringWheel.action
    SteeringWheelRequest.msg
)

generate_messages(DEPENDENCIES std_msgs actionlib_msgs)

catkin_package(
    CATKIN_DEPENDS std_msgs actionlib_msgs message_runtime
)
