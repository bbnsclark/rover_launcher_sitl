#!/bin/bash

echo 'Starting nodes:'
echo '    - roscore'
screen -d -m -S roscore $HOME/rover/src/rover_launcher_sitl/bin/start_roscore.sh 11311

sleep 2
echo '    - gazebo'

screen -d -m -S sitl $HOME/rover/src/rover_launcher_sitl/bin/start_gazebo_sitl.sh

sleep 2
echo '    - april tag detections'

screen -d -m -S april_tags $HOME/rover/src/rover_launcher_sitl/bin/start_tag_detection.sh

sleep 2
echo '    - rosbridge'

screen -d -m -S rosbridge $HOME/rover/src/rover_launcher/bin/start_rosbridge.sh

sleep 2
echo '    - firmware'

screen -d -m -S firmware $HOME/rover/src/rover_launcher_sitl/bin/start_sitl_firmware.sh

sleep 2
echo '    - kalman filter'

screen -d -m -S ekf_inertial $HOME/rover/src/rover_launcher_sitl/bin/start_ekf_inertial.sh

sleep 2
echo '    - obstacle avoidance'

screen -d -m -S avoidance $HOME/rover/src/rover_launcher_sitl/bin/start_avoidance.sh

sleep 2
echo '    - map_tf'

screen -d -m -S map_tf $HOME/rover/src/rover_launcher/bin/start_map_tf.sh

sleep 2
echo '    - navigation'

screen -d -m -S navigation $HOME/rover/src/rover_launcher_sitl/bin/start_nav.sh

sleep 2
echo '    - state observer'

screen -d -m -S state_obs $HOME/rover/src/rover_launcher_sitl/bin/start_state_observer.sh

sleep 2
echo '    - rviz'

screen -d -m -S rviz $HOME/rover/src/rover_launcher_sitl/bin/start_rviz.sh

sleep 2
