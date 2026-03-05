# This message encodes data from an Electrocardiogram (ECG) sensor.
#
# It is for instance published on /humans/persons/person_id/ecg 
# (or /humans/persons/person_id/ecg/<sensor_id> for multi-sensor setups)
# to access the ECG data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Heart rate in beats per minute (BPM)
float32 heart_rate

# R-R interval in seconds (s)
float32 rr_interval

# ECG channels: 2D array (channels x samples)
# Each channel has an array of samples over a timespan
ECGChannel[] channels
