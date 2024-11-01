#!/bin/bash
source $(cd $(dirname "$0") && pwd)/../prestart/prestart_prepare.sh
export START_DIR=$(cd $(dirname "$0") && pwd)
${START_DIR}/sessions.sh stop