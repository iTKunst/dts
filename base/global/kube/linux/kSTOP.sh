#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter kSTOP

docker-compose  -f ./$DIR_SYS/docker-compose/docker-compose.yml \
                stop

log_exit kSTOP

