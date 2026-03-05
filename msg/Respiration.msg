# This message encodes data from a respiration sensor.
#
# It is for instance published on /humans/persons/person_id/respiration 
# (or /humans/persons/person_id/respiration/<sensor_id> for multi-sensor setups)
# to access the respiration data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Raw respiration signal (arbitrary unit representing chest expansion)
float32 respiration
float32 respiration_min
float32 respiration_max

# Respiration rate in breaths per minute (BPM)
float32 respiration_rate
float32 respiration_rate_min
float32 respiration_rate_max
