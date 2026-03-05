# This message encodes data from an Electro-oculography (EOG) sensor.
#
# It is for instance published on /humans/persons/person_id/eog 
# (or /humans/persons/person_id/eog/<sensor_id> for multi-sensor setups)
# to access the EOG data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Horizontal and vertical EOG signals in microVolts (uV)
float32 horizontal_eog
float32 horizontal_eog_min
float32 horizontal_eog_max
float32 vertical_eog
float32 vertical_eog_min
float32 vertical_eog_max
