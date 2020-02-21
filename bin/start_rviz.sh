#! /bin/bash
[ -f "/opt/ros/melodic/setup.sh" ] && source "/opt/ros/melodic/setup.sh"
[ -f "$HOME/rover/devel/setup.sh" ] && source "$HOME/rover/devel/setup.sh"
[ -f "$HOME/rover/devel_isolated/setup.sh" ] && source "$HOME/rover/devel_isolated/setup.sh"
[ -f "/etc/default/ros" ] && source "/etc/default/ros"

rviz -d $HOME/rover/src/rover_gazebo/rviz/rover.rviz
