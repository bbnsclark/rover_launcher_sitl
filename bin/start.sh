#!/bin/bash

screen -d -m -S roscore $HOME/rover/src/rover_launcher/bin/start_roscore.sh

sleep 5

screen -d -m -S nav_sat $HOME/rover/src/rover_launcher/bin/start_nav_sat.sh

sleep 5

screen -d -m -S icp $HOME/rover/src/rover_launcher/bin/start_lidar_icp.sh

sleep 5

screen -d -m -S ekf_inertial $HOME/rover/src/rover_launcher/bin/start_ekf_inertial.sh

sleep 5

screen -d -m -S bridge $HOME/rover/src/rover_launcher/bin/start_bridge.sh

sleep 5

## This is not being used
screen -d -m -S state_obs $HOME/rover/src/rover_launcher/bin/start_state_observer.sh

sleep 5

###################
## indoor nav stack
screen -d -m -S nav_inertial $HOME/rover/src/rover_launcher/bin/start_nav_inertial.sh

sleep 5

screen -d -m -S map_inertial $HOME/rover/src/rover_launcher/bin/start_map_inertial.sh

sleep 5

###################
## outdoor stack

#screen -d -m -S gps $HOME/rover/src/rover_launcher/bin/start_gps_driver.sh

#sleep 15

#screen -d -m -S gps_conv $HOME/rover/src/rover_launcher/bin/start_gps_converter.sh

#sleep 5

#screen -d -m -S gps_init $HOME/rover/src/rover_launcher/bin/start_gps_initializer.sh

#sleep 5

#screen -d -m -S ekf_global $HOME/rover/src/rover_launcher/bin/start_ekf_global.sh

#sleep 5

#screen -d -m -S nav_global $HOME/rover/src/rover_launcher/bin/start_nav_global.sh

#sleep 5