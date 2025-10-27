#!/bin/bash
set -e

# Fix permissions for workspace directory
if [ -d "/home/ros/docker_simulation_ws" ]; then
  sudo chown -R ros:ros /home/ros/docker_simulation_ws 2>/dev/null || true
fi

# Setup ROS2 environment
source "/opt/ros/$ROS_DISTRO/setup.bash" --
exec "$@"
