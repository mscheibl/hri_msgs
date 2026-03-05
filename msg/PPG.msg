# This message encodes data from a Photoplethysmogram (PPG) sensor.
#
# Photoplethysmography (PPG) signals measure relative, non-invasive changes 
# in blood volume in microvascular tissue using light.
#
# It is for instance published on /humans/persons/person_id/ppg 
# (or /humans/persons/person_id/ppg/<sensor_id> for multi-sensor setups)
# to access the PPG data of a detected human.
#
# The header.frame_id should contain a unique identifier for the sensor (e.g. vendor name).

std_msgs/Header header
builtin_interfaces/Time timestamp

# Raw PPG signal.
#
# The raw unit is typically an arbitrary optical intensity unit 
# (ADC counts from a photodetector) representing reflected/transmitted light. 
# It is frequently normalized or analyzed by frequency (Hz), 
# not absolute vascular volume.
float32 ppg
float32 ppg_min
float32 ppg_max

# Heart rate in beats per minute (BPM)
float32 heart_rate
float32 heart_rate_min
float32 heart_rate_max

# R-R interval in seconds (s)
float32 rr_interval
float32 rr_interval_min
float32 rr_interval_max
