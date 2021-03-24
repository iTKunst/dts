#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter kDEL

docker-compose  -f ./$SYS_DIR/docker-compose/docker-compose.yml \
                down

log_exit kDEL

