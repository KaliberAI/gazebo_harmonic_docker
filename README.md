# Dockerized Gazebo Harmonic Simulator 
## Introduction
This repository contains a docker compose structure to simulate robots in Gazebo Sim Harmonic supported by ROS2 jazzy on ubuntu 24.04.
The Repository purpose is to provide an easy set up to allow robotic software developer to test their own controller in simulation.
## Prerequisite  

Docker Engine: follow the docker engine installation [here](https://docs.docker.com/engine/install/ubuntu/) and then enable the docker usage as non-root user as specified [here](https://docs.docker.com/engine/install/linux-postinstall/)

Install Nvidia Driver: TODO

Nvidia-Container-Toolkit: follow the nvidia-container-toolkit following [this](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)

## Submodules

To initialize and update all the required git submodules for this repository, run the following commands in your project root directory:

```bash
git submodule update --init --recursive
```

This will clone and initialize any submodules (external dependencies or components) listed in the `.gitmodules` file into the expected locations.

## Build 

``` bash compose_build.bash ```

## Start Compose 

``` docker compose up -d ```

``` docker compose exec ros2_shell bash ```

## NVIDIA stuff test 

To test the correct isntallation of the nvidia support you have to start the container and call

``` nvidia-smi```
