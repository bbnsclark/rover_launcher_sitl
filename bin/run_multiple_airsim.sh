#! /bin/bash

NUM_PLATFORMS=$1

echo Launching $NUM_PLATFORMS rovers...

for i in $(seq 0 $(($NUM_PLATFORMS-1))); do

	./start_airsim.sh $i

done

