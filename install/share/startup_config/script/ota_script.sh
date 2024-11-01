#!/bin/bash
export SCRIPT_DIR=$(cd $(dirname "$0") && pwd)

if [[ "$1" == "boot" ]]; then
  ${SCRIPT_DIR}/boot/start.sh
elif [[ "$1" == "kill" ]]; then
  ${SCRIPT_DIR}/boot/stop.sh
elif [[ "$1" == "ota_mcu" ]]; then
  ${SCRIPT_DIR}/boot/ota_mcu.sh
else
  echo "use boot or kill"
fi
