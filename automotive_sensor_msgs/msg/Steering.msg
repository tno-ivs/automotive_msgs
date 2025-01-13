std_msgs/Header header

uint8 MEASUREMENT_POSITION_UNDEFINED=0
uint8 MEASUREMENT_POSITION_STRNG_WHEEL=1
uint8 MEASUREMENT_POSITION_STRNG_KNUCKLE=2

uint8 measurement_position
float32 position # [rad]
float32 velocity # [rad/s]
float32 driver_torque # [Nm]

float32 max_position # [rad]
