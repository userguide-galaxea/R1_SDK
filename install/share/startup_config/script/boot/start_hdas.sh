#!/bin/bash
source $(cd $(dirname "$0") && pwd)/../prestart/prestart_prepare.sh
echo 'nvidia' | sudo -S ip link set can0 type can bitrate 1000000 dbitrate 5000000 fd on
echo 'nvidia' | sudo -S ip link set up can0
roslaunch HDAS hdas.launch
