#!/bin/bash
source $(cd $(dirname "$0") && pwd)/../prestart/prestart_prepare.sh
roslaunch mobiman r1_jointTrackerdemo.launch

