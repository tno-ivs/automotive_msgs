# This message holds the line segment information

# The shape of the line is represented in polynomial representation:
# y = c0 + c1 * x + c2 * x * x + c3 * x * x * x

geometry_msgs/Pose pose # Position and orientation of the polynomial (c0 and c1)
float32 c2              # Second derivative [1/m]
float32 c3              # Third derivative [1/m^2]
float32 length          # Length in x (in meters)
float32 width           # Width of the line (in meters)
float32 confidence      # Polynomial fit confidence
uint8 type              # Type of the line

# Definition of road segment types:
uint8 TYPE_DASHED = 0
uint8 TYPE_SOLID = 1
uint8 TYPE_UNDECIDED = 2
uint8 TYPE_ROAD_EDGE = 3
# 4 = 
# 5 = 
uint8 TYPE_INVALID = 6
#..
