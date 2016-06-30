# installRazorIMUROS

Convenience scripts help install the Sparkfun Razor 9DOF IMU on the Jetson TK1 under ROS.

ROS and a custom kernel with FTDI support added should be installed on the machine before executing these scripts.

$ ./setupCatkinWorkspace <directoryname>

Will setup a Catkin Workspace named directoryname. If directoryname is omitted, then catkin_ws is assumed.
Note that the Catkin Workspaces will be placed at ~/

$ ./installRazor.sh 

Will install the razor−imu−9dof package. The script also installs the Arduino software environment so that the Razor IMU can be flashed with the AHRS software in the package, and Python software used for visualization of the IMU output.

Great instructions for installation and calibration are available here:

http://wiki.ros.org/razor_imu_9dof

Abbreviated version:

Once the Razor package is installed, switch to the Catkin Workspace, and source devel/setup.bash
Then:

$ roscd razor_imu_9dof  
$ cp -r src/Razor_AHRS ~/sketchbook/Razor_AHRS    // Jetson TK1 uses Arduino 1.0 software  
Edit Razor_AHRS.ino in the Hardware Options area to uncomment the device being used.  
Go to "Tools" → "Board" and select "Arduino Pro or Pro Mini (3.3v, 8mhz) w/ATmega328". Note: in Aduino 1.5+, the board menu doesn't allow selecting the voltage/frequency; go to the Processor menu after selecting "Arduino Pro or Pro Mini" and select "ATMega 328 (3.3V, 8Mhz)"  
Go to "Tools" → "Serial Port" and select the port used with the Razor.  
Go to "File" and hit "Upload to I/O Board". After a short while at the bottom of the *Arduino* code window it should say "Done uploading".  




