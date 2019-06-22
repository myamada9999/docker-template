#!/bin/bash

source IMAGE.conf

docker build -t "$CONTAINER_NAME" \
            --build-arg USER="$USER" \
            --build-arg PASS="$PASS" \
            --build-arg USER_ID="$USER_ID" \
            ./dockerfile

exit 0
