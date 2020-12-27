cmake_minimum_required(VERSION 2.8.3)
project(curio_msgs)

find_package(catkin REQUIRED COMPONENTS
    geometry_msgs
    std_msgs
    message_generation
)

# Generate messages in the 'msg' folder
add_message_files(
    FILES
    Channels.msg
    CurioImu.msg
    CurioServoCommands.msg
    CurioServoEncoders.msg
    CurioServoPositions.msg
    CurioServoStates.msg
    LX16AEncoder.msg
    LX16AState.msg
)

# Generate added messages and services with any dependencies listed here
generate_messages(
    DEPENDENCIES
    geometry_msgs
    std_msgs
)

# catkin specific configuration
catkin_package(
    CATKIN_DEPENDS std_msgs message_runtime
)

