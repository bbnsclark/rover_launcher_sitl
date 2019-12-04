#! /bin/bash

[ -f "/opt/ros/melodic/setup.sh" ] && source "/opt/ros/melodic/setup.sh"
[ -f "$HOME/rover/devel/setup.sh" ] && source "$HOME/rover/devel/setup.sh"
[ -f "$HOME/rover/devel_isolated/setup.sh" ] && source "$HOME/rover/devel_isolated/setup.sh"
[ -f "/etc/default/ros" ] && source "/etc/default/ros"

set -a
source $HOME/rover/src/rover_launcher/config/CCAST_CONFIG

APRILTAG_SETUP=$HOME/git/ccast-code/ccast-protelis-gradle/ros/setup.bash

if test -f "$APRILTAG_SETUP"; then
    # Overlay AprilTag structure definitions (TODO generalize)
    source $APRILTAG_SETUP --extend
    echo "AprilTag workspace setup script $APRILTAG_SETUP exists"
else
    echo "WARNING: AprilTag workspace setup script $APRILTAG_SETUP does not exist - you may not be able to read AprilTags"
fi

roslaunch rosbridge_server rosbridge_websocket.launch
