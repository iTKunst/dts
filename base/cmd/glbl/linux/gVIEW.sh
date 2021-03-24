#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter gVIEW

docker image ls
docker ps -a
docker ps
#docker volume ls

log_exit gVIEW
