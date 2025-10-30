#!/bin/bash
# ROS 2 DDS Configuration Script
# Compatible with both ROS 2 Humble and Jazzy

# Auto-detect and source ROS 2 distribution
if [ -f /opt/ros/jazzy/setup.bash ]; then
    source /opt/ros/jazzy/setup.bash
    ROS_DISTRO_FOUND="jazzy"
elif [ -f /opt/ros/humble/setup.bash ]; then
    source /opt/ros/humble/setup.bash
    ROS_DISTRO_FOUND="humble"
else
    echo "ERROR: Neither ROS 2 Jazzy nor Humble installation found!"
    echo "Please install ROS 2 first."
    return 1
fi

# Set ROS Domain ID
export ROS_DOMAIN_ID=20

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set Cyclone DDS configuration file path
export CYCLONEDDS_URI=file://${SCRIPT_DIR}/cyclonedds_profile_melfa.xml

# Set RMW implementation to Cyclone DDS (default for both Humble and Jazzy)
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

echo "ROS 2 DDS Configuration Applied:"
echo "  ROS_DISTRO: ${ROS_DISTRO_FOUND}"
echo "  ROS_DOMAIN_ID: ${ROS_DOMAIN_ID}"
echo "  CYCLONEDDS_URI: ${CYCLONEDDS_URI}"
echo "  RMW_IMPLEMENTATION: ${RMW_IMPLEMENTATION}"
echo ""
echo "Configuration is compatible with both ROS 2 Humble and Jazzy"
