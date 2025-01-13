# ===[Definition of gears]===
uint8 GEAR_POSITION_NONE=0
uint8 GEAR_POSITION_PARK=10
uint8 GEAR_POSITION_REVERSE=20
uint8 GEAR_POSITION_NEUTRAL=30
uint8 GEAR_POSITION_DRIVE=40
uint8 GEAR_POSITION_MANUAL=50

# ===[Definition of results]===
uint8 GEAR_RESULT_NONE=0
uint8 GEAR_RESULT_SUCCESS=1
uint8 GEAR_RESULT_NOT_ALLOWED=2       # e.g. due to too fast driving in current gear
uint8 GEAR_RESULT_ERROR=3
uint8 GEAR_RESULT_CANCELLED=4

# ===[Definition of status]===
uint8 GEAR_STATUS_NONE=0
uint8 GEAR_STATUS_WAITING=1
uint8 GEAR_STATUS_COMPLETED=2
uint8 GEAR_STATUS_TIMEOUT=3
uint8 GEAR_STATUS_CANCELLED=4

# ===========================

# goal/request part of the action-message
uint8 gear_request
uint8 timeout # timout before action is cancelled, 0 = no timeout