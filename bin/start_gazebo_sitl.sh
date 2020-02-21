#! /bin/bash
[ -f "/opt/ros/melodic/setup.sh" ] && source "/opt/ros/melodic/setup.sh"
[ -f "$HOME/rover/devel/setup.sh" ] && source "$HOME/rover/devel/setup.sh"
[ -f "$HOME/rover/devel_isolated/setup.sh" ] && source "$HOME/rover/devel_isolated/setup.sh"
[ -f "/etc/default/ros" ] && source "/etc/default/ros"

export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:$HOME/rover/src/rover_gazebo/models/
export GAZEBO_RESOURCE_PATH=$GAZEBO_RESOURCE_PATH:$HOME/rover/src/rover_gazebo/worlds/

roslaunch rover_gazebo rover_gazebo.launch
