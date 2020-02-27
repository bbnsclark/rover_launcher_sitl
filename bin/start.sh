#!/bin/bash

echo 'Starting nodes:'
echo '    - roscore'
screen -d -m -S roscore $HOME/rover/src/rover_launcher_sitl/bin/start_roscore.sh

sleep 2
echo '    - gazebo'

screen -d -m -S sitl $HOME/rover/src/rover_launcher_sitl/bin/start_gazebo_sitl.sh

sleep 10
echo '    - april tag detections'

screen -d -m -S april_tags $HOME/rover/src/rover_launcher_sitl/bin/start_tag_detection.sh

sleep 2
echo '    - kalman filter'

screen -d -m -S ekf $HOME/rover/src/rover_launcher_sitl/bin/start_ekf.sh

sleep 2
echo '    - map_tf'

screen -d -m -S map_tf $HOME/rover/src/rover_launcher_sitl/bin/start_map_tf.sh

sleep 2
echo '    - navigation'

screen -d -m -S navigation $HOME/rover/src/rover_launcher_sitl/bin/start_nav.sh

sleep 2
echo '    - state observer'

screen -d -m -S state_obs $HOME/rover/src/rover_launcher_sitl/bin/start_state_observer.sh

sleep 5
echo '    - rosbridge'

screen -d -m -S rosbridge $HOME/rover/src/rover_launcher/bin/start_rosbridge.sh

sleep 2
echo '    - rviz'

screen -d -m -S rviz $HOME/rover/src/rover_launcher_sitl/bin/start_rviz.sh

