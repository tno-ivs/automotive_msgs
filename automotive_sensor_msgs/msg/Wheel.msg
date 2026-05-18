# ===[Definition of rotational velocity units]===
uint8 VELOCITY_UNIT_NONE=0          # default value: no units are set (your program should raise an error in this case)
uint8 VELOCITY_UNIT_RAD_PER_SEC=1   # rad/s  (rotational/angular velocity)
uint8 VELOCITY_UNIT_DEG_PER_SEC=1   # rad/s  (rotational/angular velocity)

# ===[Definition of (ground) steer angle units]===
uint8 STEER_ANGLE_UNIT_NONE=0       # default value: no units are set (your program should raise an error in this case)
uint8 STEER_ANGLE_UNIT_RADIAN=1     # rad  (steer angle)
uint8 STEER_ANGLE_UNIT_DEGREE=2     # deg  (steer angle)

# Data w.r.t. (rotational/tangential/forward) wheel velocity
string velocity_id                  # identifier (preferably use the urdf joint-name for the rotational axis here!)
uint8 velocity_unit                 # define the unit of velocity here
float32 velocity                    # velocity value

# Data w.r.t. (ground) steer angle
bool is_steered                     # is this wheel (active/passive) steered?
string steer_angle_id               # identifier (preferably use the urdf joint-name for the steer axis here!)
uint8 steer_angle_unit              # define the unit of the steer angle here
float32 steer_angle                 # (ground) steer angle