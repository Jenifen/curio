# ROS messages package for Curio

`curio_msgs` contains ROS message types used in the
[`curio`](https://github.com/srmainwaring/curio) packages.

## Overview

This package includes the following message types.

### `curio_msgs/Channels`

An array of radio control pulse-width modulated (PWM) values in units of microseconds.

Typically analog radio control pulses are published at 50Hz and each pulse lasts
between 1000 and 2000 µs.

The channel PWM values may also be obtained by decoding a radio control serial
signal such as SUMD which operates at a higher frequency (100 Hz).

### `curio_msgs/CurioIMU`

A lightweight IMU message (no covariances) for communicating data from a multi-DOF IMU.

### `curio_msgs/CurioServoCommands`

A time-stamped message containing two arrays of servo commands.
The first array contains duty commands for the wheel servos.
The second array contains position commands for the steering servos.

### `curio_msgs/CurioServoEncoders`

A time-stamped message containing an array of `curio_msgs/LX16AEncoder`
messages for the rover wheel servos.

### `curio_msgs/CurioServoPositions`

A time-stamped message containing two arrays of un-filtered servo
positions. The position is integer valued with each tick representing
an increment of 360 / 1500 degrees.
The first contains an array of wheel servo positions.
The second contains an array of steering servo postions.

### `curio_msgs/CurioServoStates`

A time-stamped message containing two arrays of
`curio_msgs/LX16AState` messages.
The first array is for the state of the wheel servos.
The second array is for the state of the steering servos.

### `curio_msgs/LX16AEncoder`

The state of a LX-16A encoder. The message contains the
inputs and outputs of the LX16A encoder filter including the inferred
encoder count and number of revolutions since reset.

### `curio_msgs/LX16AState`

The state of a LX-16A servo. The message contains raw data
read directly from the servo.

## Installation

To install the package into a catkin workspace `~/curio_ws`:

```bash
# Clone repository
cd ~/curio_ws/src
git clone https://github.com/srmainwaring/curio_msgs.git

# Configure and build
cd ~/curio_ws
catkin config --cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo
catkin build
```

## Build Status

### Develop Job Status

|    | Melodic |
|--- |--- |
| curio_msgs | [![Build Status](https://travis-ci.org/srmainwaring/curio_msgs.svg?branch=develop)](https://travis-ci.org/srmainwaring/curio_msgs) |


### Release Job Status

|    | Melodic |
|--- |--- |
| curio_msgs | [![Build Status](https://travis-ci.org/srmainwaring/curio_msgs.svg?branch=master)](https://travis-ci.org/srmainwaring/curio_msgs) |


## License

This software is licensed under the BSD-3-Clause license found in the LICENSE file
in the root directory of this source tree.
