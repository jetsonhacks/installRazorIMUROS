#!/bin/sh
# Install the Razor IMU ROS package
sudo apt-get install ros-indigo-razor-imu-9dof -y 
# For visualizing, you'll need these python packages
sudo apt-get install python-visual python-wxgtk2.8 -y
# To put firmaware on the Razor, you'll need the Arduino software
sudo apt-get install arduino arduino-core -y


