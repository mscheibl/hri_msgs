# This message encodes data from a Skin Conductance sensor (GSR).
#
# It is for instance published on /humans/persons/person_id/skin_conductance 
# (or /humans/persons/person_id/skin_conductance/<sensor_id> for multi-sensor setups)
# to access the skin conductance data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Skin conductance in microsiemens (uS)
float32 skin_conductance
float32 skin_conductance_min
float32 skin_conductance_max