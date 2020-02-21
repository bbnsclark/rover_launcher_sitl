#!/bin/bash

kill -9 $(pgrep -f 'ros')

sleep 0.5

kill -9 $(pgrep -f 'gazebo')

sleep 0.5

kill -9 $(pgrep -f 'gzserver')

sleep 0.5

screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill

sleep 0.5

screen -wipe
