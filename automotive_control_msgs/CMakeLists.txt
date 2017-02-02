cmake_minimum_required(VERSION 2.8.3)
project(automotive_control_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  actionlib_msgs
  actionlib
)

# Generate messages in the 'msg' folder
add_action_files(DIRECTORY action FILES 
    Longitudinal.action
    SteeringWheel.action
)

generate_messages(DEPENDENCIES actionlib_msgs)

catkin_package(
    CATKIN_DEPENDS actionlib_msgs message_runtime
)
