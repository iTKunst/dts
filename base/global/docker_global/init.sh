#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_DTS$DIR_BASE$DIR_GLOBAL/docker_global/init

cp $DIR_DTS$DIR_BASE$DIR_GLOBAL/docker_global/linux/*.sh ./bin

log_exit $DIR_DTS$DIR_BASE$DIR_GLOBAL/docker_global/init
