# ===[Definition of velocity units]===
uint8 VELOCITY_UNIT_NONE=0      # default value: no units are set (your program should raise an error in this case)
uint8 VELOCITY_UNIT_RADIAN=1    # rad/s  (rotational/angular velocity)
uint8 VELOCITY_UNIT_KPH=2       # km/h   (linear wheel velocity, either tangential or of the wheel center)
uint8 VELOCITY_UNIT_MPS=3       # m/s    (linear wheel velocity, either tangential or of the wheel center)

string id                       # wheel identifier (preferably use the urdf joint-name here!)
uint8 velocity_unit             # define the unit of velocity here
float32 velocity                # velocity value
