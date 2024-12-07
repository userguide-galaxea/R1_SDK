#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide the embedded software path, e.g., bash r1_embedded_firmware_upgrade.sh ../../firmware/R1/V1_0_1"
  exit 1
fi

echo 'nvidia' | sudo -S ip link set can0 type can bitrate 1000000 dbitrate 5000000 fd on
echo 'nvidia' | sudo -S ip link set up can0

source ~/work/ci_pipeline/workspace/body/install/setup.bash
# Set the path and command list
EMBEDDED_PATH="$1"
declare -A commands=(
  ["CCU.bin"]=47
  ["VCU.bin"]=63
  ["TCU.bin"]=79
  ["ACUL.bin"]=95
  ["ACUR.bin"]=111
)

# Run each command in sequence
for file in "${!commands[@]}"; do
  # Get command and parameters
  bin_file="$EMBEDDED_PATH/$file"
  port="${commands[$file]}"

  # Run the rosrun command
  echo "Running rosrun HDAS mcu_ota $bin_file $port"
  rosrun HDAS mcu_ota "$bin_file" "$port" &
  PID=$!

  # Wait for 15 seconds
  sleep 15

  # Kill the process
  echo "Killing process $PID"
  kill $PID

  # Ensure the process has terminated
  wait $PID 2>/dev/null
done

echo "All commands have been executed."
