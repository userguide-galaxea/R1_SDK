#!/bin/bash

export PROJECT_ROOT_DIR=$(cd $(dirname "$0") && pwd)/../../../..

source /opt/ros/noetic/setup.bash
source ${PROJECT_ROOT_DIR}/setup.bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/nvidia/work/logger/build/Linux-aarch64/lib
export ROS_MASTER_URI=http://localhost:11311
