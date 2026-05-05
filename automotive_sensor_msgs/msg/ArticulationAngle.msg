std_msgs/Header header

uint8 TRAILER_CONNECTED_UNKNOWN = 0
uint8 TRAILER_CONNECTED_TRUE = 1
uint8 TRAILER_CONNECTED_FALSE = 2
uint8 TRAILER_CONNECTED_ERROR = 3

uint8 trailer_connected # Trailer connection state
float32 angle # [rad]
float32 max_articulation_angle # [rad]
