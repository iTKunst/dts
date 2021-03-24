#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter cDEL

docker-compose  -f ./$SYS_DIR/docker-compose/docker-compose.yml \
                down

log_exit cDEL

