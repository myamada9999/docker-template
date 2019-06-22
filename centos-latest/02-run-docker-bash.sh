#!/bin/bash

source IMAGE.conf

sudo docker run --privileged -it --shm-size=4096m \
                -v $SRC_WORKSPACE:$DST_WORKSPACE \
                --net=host "$CONTAINER_NAME" /bin/bash

exit 0
