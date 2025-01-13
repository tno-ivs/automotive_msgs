# CONVENTION:
#    In general:
#       - velocities in [m/s]
#       - accelerations in [m/s^2]
#       - positive acceleration setpoints relate to ACCELERATING: increasing the absolute velocity of the vehicle
#       - negative acceleration setpoints relate to BRAKING: decreasing the absolute velocity of the vehicle
# This means that when gearbox is in REVERSE, a positive ax-setpoint will increase the reverse driving speed!
# When driving a nonzero velocity in either FORWARD and REVERSE, a negative ax-setpoint will eventually end up in standstill!

uint8 SETPOINT_TYPE_OFF=0
uint8 SETPOINT_TYPE_VELOCITY=1
uint8 SETPOINT_TYPE_ACCELERATION=2
uint8 SETPOINT_TYPE_AUTOMATIC_EMERGENCY_BRAKING=3
uint8 SETPOINT_TYPE_PARKED=4
uint8 SETPOINT_TYPE_ERROR=5
uint8 SETPOINT_TYPE_NOT_SPECIFIED=6

uint8 CONTROL_SETTING_NOT_SPECIFIED=0
uint8 CONTROL_SETTING_OVERSHOOT=1
uint8 CONTROL_SETTING_NO_OVERSHOOT=2
uint8 CONTROL_SETTING_ERROR=3

uint8 control_setting
uint8 setpoint_type
float64 setpoint