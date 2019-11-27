#!/bin/bash

sleep 1

screen -d -m -S roscore $HOME/rover/src/rover_launcher_sitl/bin/start_roscore.sh

sleep 5

screen -d -m -S sitl $HOME/rover/src/rover_launcher_sitl/bin/start_airsim_sitl.sh

sleep 5

screen -d -m -S bridge $HOME/rover/src/rover_launcher_sitl/bin/start_rosbridge.sh

sleep 5

screen -d -m -S firmware $HOME/rover/src/rover_launcher_sitl/bin/start_sitl_firmware.sh

sleep 5

screen -d -m -S icp $HOME/rover/src/rover_launcher_sitl/bin/start_lidar_icp.sh

sleep 5

screen -d -m -S ekf_inertial $HOME/rover/src/rover_launcher_sitl/bin/start_ekf_inertial.sh

sleep 5

screen -d -m -S state_obs $HOME/rover/src/rover_launcher_sitl/bin/start_state_observer_airsim.sh

sleep 5
