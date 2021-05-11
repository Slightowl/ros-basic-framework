# ros-basic-framework
ROS (Robot Operating System) provides libraries and tools to help software developers create robot applications. It provides hardware abstraction, device drivers, libraries, visualizers, message-passing, package management, and more. ROS is licensed under an open source, BSD license.

# brief description of this package
This package contains a series of ROS examples designed to
showcase the intial foundations of the server/ client nature
in ROScore nodes. Finally I have built upon these tutorials
to create a robot of my own which performs a complex action.

# system requirements
### Ubuntu 20.04.1 LTS ###
### Python 3.8.5 (minimum) ###

# setup
Run these commands in your terminal to set up ROS noetic

### Set up sources list: ###
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

### Set up your keys: ###
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

### Make sure your linux machine is up  to date: ###
sudo apt update

## #Install ROS: ###
sudo apt install ros-noetic-desktop-full

### Environment setup in bash: ###
source /opt/ros/noetic/setup.bash

### Build dependencies for building packages: ###
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

### Initialise rosdep (used for ROS tools): ###
sudo apt install python3-rosdep
sudo rosdep init
rosdep update

### further documentation ###
For more advanced ROS documentation check: wiki.ros.org/Documentation

