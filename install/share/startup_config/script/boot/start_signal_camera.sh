#!/bin/bash
source $(cd $(dirname "$0") && pwd)/../prestart/prestart_prepare.sh
echo 'nvidia' | sudo -S chmod 777 /dev/ttyTHS1
roslaunch signal_camera signal_camera.launch