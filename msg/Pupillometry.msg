# This message encodes pupillometry data.
#
# It is for instance published on /humans/persons/person_id/pupillometry 
# (or /humans/persons/person_id/pupillometry/<sensor_id> for multi-sensor setups)
# to access the pupillometry data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Pupil diameter in millimeters (mm)
float32 pupil_diameter_left
float32 pupil_diameter_left_min
float32 pupil_diameter_left_max
float32 pupil_diameter_right
float32 pupil_diameter_right_min
float32 pupil_diameter_right_max

# Pupil diameter change (normalized or arbitrary units)
float32 pupil_change_left
float32 pupil_change_left_min
float32 pupil_change_left_max
float32 pupil_change_right
float32 pupil_change_right_min
float32 pupil_change_right_max
