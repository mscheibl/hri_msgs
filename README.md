# hri_msgs

**Note: this branch only contains ROS 2 support. For ROS 1, check the `master` branch.**

This repository contains a set of ROS messages (ie, interfaces) of importance
for human-robot interaction applications.

They are directly related to the ROS REP-155.

### Physiological data

The following topics are recommended for physiological data (aligned with REP-155 namespaces):

- `/humans/persons/<person_id>/ecg`: Electrocardiogram (ECG) data (`hri_msgs/msg/ECG`)
- `/humans/persons/<person_id>/eeg`: Electroencephalogram (EEG) data (`hri_msgs/msg/EEG`)
- `/humans/persons/<person_id>/ppg`: Photoplethysmogram (PPG) data (`hri_msgs/msg/PPG`)
- `/humans/persons/<person_id>/skin_conductance`: Skin conductance (GSR) data (`hri_msgs/msg/SkinConductance`)

For setups with **multiple sensors** of the same type for one person (e.g., to compare different vendors), the following pattern is recommended:
- `/humans/persons/<person_id>/<modality>/<sensor_id>` (e.g., `/humans/persons/p1/ppg/polar_h10`)
- Use the `header.frame_id` field in the message to store the sensor's unique identifier or vendor name for programmatic differentiation.

### Examples

An example script that demonstrates how to combine facial expression data with PPG sensor data is available in the `ros4phypsy` package as `example_bridge`.
Another script (`ppg_comparison`) shows how to compare multiple PPG sensors for the same person.

To run the examples:

```bash
# Make sure to source your ROS 2 workspace
source install/setup.bash
# Run the expression/ppg combination example
ros2 run ros4phypsy example_bridge
# Run the multi-sensor comparison example
ros2 run ros4phypsy ppg_comparison
```
