#!/bin/bash
set -e

# Source ROS Jazzy
source /opt/ros/jazzy/setup.bash

# Source workspace if it exists
if [ -f /home/ros/docker_simulation_ws/install/setup.bash ]; then
    source /home/ros/docker_simulation_ws/install/setup.bash
fi

# Execute the command passed to docker run
exec "$@"
