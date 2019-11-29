#!/bin/bash

sleep 1

screen -d -m -S roscore $HOME/rover/src/rover_launcher_sitl/bin/start_roscore.sh

sleep 5

screen -d -m -S sitl $HOME/rover/src/rover_launcher_sitl/bin/start_gazebo_sitl.sh

sleep 5

screen -d -m -S rosbridge $HOME/rover/src/rover_launcher/bin/start_rosbridge.sh

sleep 5

screen -d -m -S bbnbridge $HOME/rover/src/rover_launcher/bin/start_bbnbridge.sh

sleep 5

screen -d -m -S firmware $HOME/rover/src/rover_launcher_sitl/bin/start_sitl_firmware.sh

sleep 5

screen -d -m -S icp $HOME/rover/src/rover_launcher_sitl/bin/start_lidar_icp.sh

sleep 5

screen -d -m -S ekf_inertial $HOME/rover/src/rover_launcher_sitl/bin/start_ekf_inertial.sh

sleep 5

screen -d -m -S state_obs $HOME/rover/src/rover_launcher_sitl/bin/start_state_observer.sh

sleep 5

