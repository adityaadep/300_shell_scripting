#!/bin/bash
currenlty_logged_users=$(users)
shell_directory=$(pwd)
home_directory=$(echo $HOME)
OS_name_version=$(uname -ov)
available_shells=$(cat /etc/shells)
harddisk_info=$(df -h)
cpu_info=$(iostat -c)
mem_info$(free -h)
running_process=$(ps -aux)

echo "currenlty_logged_users=$currenlty_logged_users"
echo "shell_directory=$shell_directory"
echo "home_directory=$home_directory"
echo "OS_name_version=$OS_name_version"
echo "available_shells=$available_shells"
echo "harddisk_info=$harddisk_info"
echo "cpu_info=$cpu_info"
echo "mem_info=$mem_info"
echo "running_process=$running_process"

