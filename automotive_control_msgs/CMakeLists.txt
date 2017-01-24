cmake_minimum_required(VERSION 2.8.3)
project(automotive_control_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
)

# Generate messages in the 'msg' folder
add_message_files(
  FILES
  SteeringWheel.msg
)

generate_messages(DEPENDENCIES)

catkin_package(
    CATKIN_DEPENDS message_runtime
)
