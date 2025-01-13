# ===[Definition of gears]===
uint8 GEAR_POSITION_NONE=0
uint8 GEAR_POSITION_PARK=10
uint8 GEAR_POSITION_REVERSE=20
uint8 GEAR_POSITION_NEUTRAL=30
uint8 GEAR_POSITION_DRIVE=40
uint8 GEAR_POSITION_MANUAL=50

# ===[Rest of the message]===
std_msgs/Header header
uint8 gear
