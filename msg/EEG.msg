# This message encodes data from an Electroencephalogram (EEG) sensor.
#
# It is for instance published on /humans/persons/person_id/eeg 
# (or /humans/persons/person_id/eeg/<sensor_id> for multi-sensor setups)
# to access the EEG data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Raw EEG signals for each channel
float32[] eeg_channels
float32[] eeg_channels_min
float32[] eeg_channels_max

# Optional channel names
string[] channel_names
