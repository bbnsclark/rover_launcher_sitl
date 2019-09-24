#!/bin/bash

kill $(ps aux | grep gazebo | awk '{print $2}')

sleep 0.5

screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill
