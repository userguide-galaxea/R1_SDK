#!/bin/bash
source $(cd $(dirname "$0") && pwd)/../prestart/prestart_prepare.sh
roslaunch livox_ros_driver2 msg_MID360.launch