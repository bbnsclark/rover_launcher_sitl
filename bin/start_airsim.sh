#!/bin/bash

PLATFORM_ORDINAL=$1
BASE_ROS_PORT=11312
BASE_BRIDGE_PORT=9091
CCAST_ROS_PORT=$(echo "$BASE_ROS_PORT + $PLATFORM_ORDINAL" | bc)
CCAST_BRIDGE_PORT=$(echo "$BASE_BRIDGE_PORT + $PLATFORM_ORDINAL" | bc)

# This is needed within start_roscore, so export it
export ROS_MASTER_URI=http://localhost:$CCAST_ROS_PORT

echo Platform ordinal = $PLATFORM_ORDINAL.
echo CCAST_ROS_PORT = $CCAST_ROS_PORT
echo CCAST_BRIDGE_PORT = $CCAST_BRIDGE_PORT
echo Set ROS_MASTER_URI to $ROS_MASTER_URI.


sleep 1

screen -d -m -S roscore_$PLATFORM_ORDINAL $HOME/rover/src/rover_launcher_sitl/bin/start_roscore.sh $CCAST_ROS_PORT

sleep 2

screen -d -m -S sitl_$PLATFORM_ORDINAL $HOME/rover/src/rover_launcher_sitl/bin/start_airsim_sitl.sh

sleep 2

screen -d -m -S bridge_$PLATFORM_ORDINAL $HOME/rover/src/rover_launcher_sitl/bin/start_rosbridge.sh $CCAST_BRIDGE_PORT

sleep 2

#screen -d -m -S firmware_$PLATFORM_ORDINAL $HOME/rover/src/rover_launcher_sitl/bin/start_sitl_firmware.sh

#sleep .5

#screen -d -m -S icp_$PLATFORM_ORDINAL $HOME/rover/src/rover_launcher_sitl/bin/start_lidar_icp.sh

#sleep 1

#screen -d -m -S ekf_inertial_$PLATFORM_ORDINAL $HOME/rover/src/rover_launcher_sitl/bin/start_ekf_inertial.sh

#sleep .5

screen -d -m -S state_obs_$PLATFORM_ORDINAL $HOME/rover/src/rover_launcher_sitl/bin/start_state_observer_airsim.sh $PLATFORM_ORDINAL

