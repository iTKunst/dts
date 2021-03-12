#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter sVIEW

source project/pENV.sh
IMG_FILTER="$SYS_NAME*"
CONT_FILTER="label=$SYS_NAME"
NET_FILTER="name=$SYS_NAME*"
VOL_FILTER="label=$SYS_NAME"

log_var SYS_NAME $SYS_NAME
log_var IMG_FILTER $IMG_FILTER
log_var CONT_FILTER $CONT_FILTER
log_var NET_FILTER $NET_FILTER
log_var VOL_FILTER $VOL_FILTER

IMAGES=$(docker images -q $IMG_FILTER)
log_var IMAGES $IMAGES
if [ -n "$IMAGES" ]; then
  log_info " "
  docker images $IMG_FILTER
fi

CONTAINERS=$(docker ps -q -f $CONT_FILTER -f status=exited -f status=running)
log_var CONTAINERS $CONTAINERS
if [ -n "$CONTAINERS" ]; then
  log_info " "
  docker ps -f $CONT_FILTER -f status=exited -f status=running
fi

NETWORKS=$(docker network ls -q -f $NET_FILTER)
log_var NETWORKS $NETWORKS
if [ -n "$NETWORKS" ]; then
  log_info " "
  docker network ls -f $NET_FILTER
fi

VOLUMES=$(docker volume ls -q -f $VOL_FILTER)
log_var VOLUMES $VOLUMES
if [ -n "$VOLUMES" ]; then
  log_info " "
  docker volume ls -f $VOL_FILTER
fi

log_exit sVIEW


