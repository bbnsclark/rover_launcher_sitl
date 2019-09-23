#! /bin/bash

[ -f "/opt/ros/melodic/setup.sh" ] && source "/opt/ros/melodic/setup.sh"
[ -f "$HOME/rover/devel/setup.sh" ] && source "$HOME/rover/devel/setup.sh"
[ -f "/etc/default/ros" ] && source "/etc/default/ros"

set -a
source $HOME/rover/src/rover_launcher/config/CCAST_CONFIG

roslaunch $HOME/rover/src/rover_launcher/launch/nav_global.launch
