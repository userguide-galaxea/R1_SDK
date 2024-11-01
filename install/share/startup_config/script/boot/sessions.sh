#!/bin/bash
# start - 启动所有程序
# stop - 关闭这些程序

BASE_DIR=$(cd $(dirname "$0") && pwd)

source $(cd $(dirname "$0") && pwd)/../prestart/prestart_prepare.sh

function load_session() {
  if [[ "$1" == "start" ]]; then
    cmd="tmuxp load $3 -d"
  elif [[ "$1" == "stop" ]]; then
    ps -ef |grep -E 'roscore|rosmaster|roslaunch|rosout' | grep -v 'adg' |awk '{print$2}'|xargs kill -15
    cmd="tmux kill-session -t $2"
  else
    return
  fi
  echo "+ ${cmd}"
  ${cmd}

#  if [[ "$2" == "master" ]] && [ "$1" == "start" ]; then
#    ${BASE_DIR}/wait_mfrmaster.sh
#  fi
}

master_yaml="${BASE_DIR}/sessions.d/master.yaml"
if [ -f $master_yaml ]; then
  load_session $1 master $master_yaml
fi

YAML_FILES=($(find ${BASE_DIR}/sessions.d -name '*.yaml'))
for yaml in ${YAML_FILES[@]}; do
  session_name=$(cat ${yaml} | sed -n -E 's/^\s*session_name\s*:\s*(\w*)\s*$/\1/p')
  if [[ "$session_name" == "master" ]]; then
    continue
  fi
  load_session $1 $session_name $yaml
done
