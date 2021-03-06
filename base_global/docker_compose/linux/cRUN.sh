#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter cRUN

docker-compose  -f ./$DIR_SYS/docker-compose/docker-compose.yml \
                up  \
                --remove-orphans

log_exit cRUN

