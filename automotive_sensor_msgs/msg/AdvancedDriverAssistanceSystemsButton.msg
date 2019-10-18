std_msgs/Header header

uint8 MODE_SPEED_LIMITER=1
uint8 MODE_ADAPTIVE_CRUISE_CONTROL=2
uint8 MODE_OFF=3

uint8 mode
bool headway_mode
bool on_off
bool resume
bool cancel
bool plus
bool min
bool emergency

#---Depreciated---#
bool resume_plus
bool set_min