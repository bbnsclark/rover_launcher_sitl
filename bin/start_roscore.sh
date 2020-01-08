#! /bin/bash
[ -f "/opt/ros/melodic/setup.sh" ] && source "/opt/ros/melodic/setup.sh"
[ -f "$HOME/rover/devel/setup.sh" ] && source "$HOME/rover/devel/setup.sh"
[ -f "/etc/default/ros" ] && source "/etc/default/ros"

echo Starting roscore at port ${1:-11311}.

roscore -p ${1:-11311}
