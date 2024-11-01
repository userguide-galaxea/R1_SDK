#!/bin/bash
source $(cd $(dirname "$0") && pwd)/../prestart/prestart_prepare.sh
roslaunch realsense2_camera rs_multiple_devices.launch