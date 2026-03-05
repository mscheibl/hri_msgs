# This message represents a single ECG channel with multiple samples and optional timestamps.

# Identifier for the channel (e.g. "lead_I", "lead_II", "V1", etc.)
string channel_id

# Raw ECG samples in milliVolts (mV)
float32[] samples

# Optional timestamps for each sample. 
# If provided, the length of this array must match the length of the samples array.
# If empty, samples are assumed to be synchronous and evenly spaced from the message header timestamp.
builtin_interfaces/Time[] timestamps
