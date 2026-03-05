# This message encodes data from an eye tracking sensor.
#
# It is for instance published on /humans/persons/person_id/eye_tracking 
# (or /humans/persons/person_id/eye_tracking/<sensor_id> for multi-sensor setups)
# to access the eye tracking data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Gaze direction vector in the sensor frame.
# Normalized x, y, z coordinates.
float32 gaze_x
float32 gaze_x_min
float32 gaze_x_max
float32 gaze_y
float32 gaze_y_min
float32 gaze_y_max
float32 gaze_z
float32 gaze_z_min
float32 gaze_z_max

# Gaze point on a screen, normalized to [0, 1].
# (0, 0) is top-left, (1, 1) is bottom-right.
float32 eye_x
float32 eye_x_min
float32 eye_x_max
float32 eye_y
float32 eye_y_min
float32 eye_y_max

# Blink status (true if blinking)
bool blinking
