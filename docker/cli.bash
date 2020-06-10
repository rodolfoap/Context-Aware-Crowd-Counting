#!/bin/bash
# requires:
#	xhost +local:root
docker run 						\
	--rm -it 					\
	-v /dev/log:/dev/log 				\
	-v $(dirname $(pwd)):/workspace/ 		\
	-e DISPLAY=$DISPLAY 				\
	-v /tmp/.X11-unix:/tmp/.X11-unix 		\
	--device=/dev/video0:/dev/video0:rwm 		\
	--name pytorch					\
	--entrypoint=/bin/bash 				\
	-m=10g 						\
	rodolfoap/pytorch:0.4.1-$(date +%Y%m%d)
