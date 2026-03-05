# This message encodes data from an Electromyography (EMG) sensor.
#
# It is for instance published on /humans/persons/person_id/emg 
# (or /humans/persons/person_id/emg/<sensor_id> for multi-sensor setups)
# to access the EMG data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Raw EMG signals for each channel in microVolts (uV)
float32[] emg_channels
float32[] emg_channels_min
float32[] emg_channels_max

# Optional channel names
string[] channel_names
