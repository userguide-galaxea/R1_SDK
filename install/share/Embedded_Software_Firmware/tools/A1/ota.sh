#!/bin/bash

# 检查是否传入了两个参数
if [ $# -ne 2 ]; then
    echo "Usage: $0 <bin_filename> <selected_port>"
    exit 1
fi

# 从传入参数中获取命令和参数
bin_filename="$1"
selected_port="$2"
command="./ota.out"

# 执行命令的函数
execute_command() {
    sudo chmod 777 $selected_port
    $command $bin_filename $selected_port &
    process_pid=$!

    # 等待子进程结束，并获取其退出状态
    wait $process_pid
    return_code=$?

    # 输出子进程的退出状态
    echo "子进程已退出，返回码为: $return_code"

    # 条件处理
    if [ $return_code -eq 0 ]; then
        exit 0
    elif [ $return_code -eq 255 ]; then
        return 255
    else
        exit $return_code
    fi
}

# 循环执行命令，直到返回码不为255
while true; do
    execute_command
    if [ $? -ne 255 ]; then
        break
    fi
done
