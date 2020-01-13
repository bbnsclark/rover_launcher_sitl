#! /bin/bash

[ -f "/opt/ros/melodic/setup.sh" ] && source "/opt/ros/melodic/setup.sh"
[ -f "$HOME/rover/devel/setup.sh" ] && source "$HOME/rover/devel/setup.sh"
[ -f "/etc/default/ros" ] && source "/etc/default/ros"

pushd ../../state_observer_sitl/src
rosrun state_observer_sitl node.py _is_airsim:=True _platform_suffix:=_$1
popd

