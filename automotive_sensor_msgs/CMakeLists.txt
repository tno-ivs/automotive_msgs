cmake_minimum_required(VERSION 2.8.3)
project(automotive_sensor_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs geometry_msgs)

add_message_files(
    DIRECTORY msg
    FILES
    AdvancedDriverAssistanceSystemsButton.msg
    LineSegment.msg
    Lines.msg
    SteeringWheel.msg
    Pedals.msg
    Gear.msg
    WheelSpeeds.msg
    MassSlopeEstimation.msg
    OperatorsExternalLightControls.msg
    EngineSpeed.msg
    OEMADASStatus.msg
)

generate_messages(DEPENDENCIES std_msgs geometry_msgs)

catkin_package(
    CATKIN_DEPENDS message_runtime std_msgs geometry_msgs
)
