# Lewansoul LX-16A servo state

# Constants for the servo move mode
uint8 LX16A_MODE_SERVO = 0
uint8 LX16A_MODE_MOTOR = 1

# Servo serial id
uint8 id

# Servo diagnostic status
float64 temperature
float64 voltage

# Servo angle offset
int32 angle_offset

# Servo move: command is position for mode = 0 amd duty for mode = 1
uint8 mode
int32 command
int32 position
