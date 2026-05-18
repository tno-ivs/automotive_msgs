# This message is a more generic implementation than the legacy 'automotive_sensor_msgs/WheelSpeeds"
# The message is not resetricted to a four-wheeled vehicle.
# Any configuration (3, 4, 6) of wheels can be used

std_msgs/Header header     # provide the object's base_link as frame_id

automotive_sensor_msgs/WheelSpeed[] wheels
