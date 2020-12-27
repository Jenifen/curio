# Curio IMU sensor state
# 
# A lightweight IMU message (no covariances) 
# for communicating data from a multi-DOF IMU.

# Header
Header header

# Orientaton
geometry_msgs/Quaternion orientation

# Angular velocity
geometry_msgs/Vector3 angular_velocity

# Linear acceleration
geometry_msgs/Vector3 linear_acceleration

# Magnetic field
geometry_msgs/Vector3 magnetic_field
